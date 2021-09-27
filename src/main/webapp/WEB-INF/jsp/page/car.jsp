<%@ page language="java" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0053)http://localhost:8080/shopping/ShowShopCarItem.action -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="/shop/js/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="/shop/js/jquery-ui.js"></script>

    <title>购物商城-购物车</title>

    <link href="http://localhost:8080/shopping/fkjava.ico" rel="shortcut icon" type="image/x-icon">
    <!-- main.css是购物商城主样式 -->
    <link rel="stylesheet" type="text/css" href="/shop/css/main.css">
    <!-- header.js输出头部信息 -->
    <script type="text/javascript" src="/shop/js/header.js"></script>
    <script type="text/javascript">
        // 从购物车中删除物品
        var deleteFn = function (id) {
            if (confirm("真的要删除吗？")) {
                window.location.href = "delCar?id=" + id;
            }
        };

        var addFun2 = function (ele, num, aid) {
            var qty = parseInt($(ele).parent().find("input").val());
            qty += num;
            if (qty <= 1) {
                qty = 1;
            } else {
                window.location.href = "/shop/qtyadd?buyNum=" + qty + "&aid=" + aid;
            }
        }

        /** id: 物品的ID, num: 购买的数量 , type : 是加一还是减一*/
        var addFun = function (id, num, type, storage) {
            // 购买的数量
            var buyNum = parseInt(num);
            if (buyNum == 1 && type == 2) {
                return;
            }
            if (buyNum >= storage && type == 1) {
                return;
            }
            switch (type) {
                case 1: // 增加一个
                    window.location.href = "updateCar.action?id=" + id + "&buyNum=" + (buyNum + 1);
                    break;
                case 2: // 减少一个
                    window.location.href = "updateCar.action?id=" + id + "&buyNum=" + (buyNum - 1);
                    break;
            }
        };

        //obj当前标签dom对象   id:商品id  num：原数据量数量  storage:商品库存
        var blurFn = function (obj, id, num, storage) {
            if (isNaN(obj.value)) {
                obj.value = num;
            } else if ((obj.value < 1) || (obj.value > storage)) {
                obj.value = num;
            } else if (obj.value != num) {
                window.location.href = "updateCar.action?id=" + id + "&buyNum=" + Math.ceil(obj.value);
            }
        };

        //为全选绑定单击事件
        function checkAll(obj) {
            var boxs = document.getElementsByName("box");

            for (var i = 0; i < boxs.length; i++) {
                //全选事件点击，其他复选框和全选框状态相同
                var box = boxs[i];
                box.checked = obj.checked;
            }
        }


        //复选框绑定事件
        function checkboxFun(val) {
            var boxs = document.getElementsByName("box");
            var num = 0;

            //在Js中foreach并不会遍历每个元素,而是遍历Key,即所有属性
            for (var i = 0; i < boxs.length; i++) {
                //全选事件点击，其他复选框和全选框状态相同
                var box = boxs[i];
                if (box.checked) {
                    num++;
                }
            }

            document.getElementById("checkAll").checked = (num == boxs.length);
        }

        function submitOrder() {
            var boxs = document.getElementsByName("box");
            //保存传递到后台的数据
            var orderInfo = document.getElementById("orderInfo");

            var num = 0;
            //在Js中foreach并不会遍历每个元素,而是遍历Key,即所有属性
            for (var i = 0; i < boxs.length; i++) {
                //全选事件点击，其他复选框和全选框状态相同
                var box = boxs[i];
                if (box.checked) {
                    num++;
                    if (orderInfo.value == null || orderInfo.value == "") {
                        orderInfo.value = box.value;
                    } else {
                        //判断是否已经存在
                        orderInfo.value = orderInfo.value + "," + box.value;
                    }
                }
            }

            if (num == 0) {
                alert("请选择需要购买的商品");
            } else {
                document.getElementById("form").submit();
            }

        }
    </script>
</head>
<body>
<!-- header部分 -->
<div id="shortcut">
    <div class="w">
        <ul class="fl lh">
            <li><span style="position: absolute;left: 500px;">官方网站：			<a
                    title="http://gz.gec-edu.org/?gzbdgzbdyueqianpc23"
                    href="http://gz.gec-edu.org/?gzbdgzbdyueqianpc23">http://gz.gec-edu.org/?gzbdgzbdyueqianpc23</a>		</span>
            </li>
        </ul>
        <ul class="fr lh">
            <li>
                <span style="color:red;">
                    ${sessionScope.user.loginName}
                </span>：您好!&nbsp;&nbsp;
                [<a href="/shop/logout">退出</a>]
            </li>
            <li>&nbsp;[<a href="/shop/myCar">我的购物车</a>]</li>
            <li>&nbsp;[<a href="/shop/order">我的订单</a>]</li>
            <li><span>			&nbsp;&nbsp;&nbsp;<a href="javascript:void(0);"
                                                       onclick="this.style.behavior=&#39;url(#default#homepage)&#39;;this.setHomePage(&#39;http://gz.gec-edu.org/?gzbdgzbdyueqianpc23&#39;);">设为首页</a> |			<a
                    href="javascript:window.external.addFavorite(&#39;http://gz.gec-edu.org/?gzbdgzbdyueqianpc23&#39;,&#39;广州粤嵌教育-购物商城&#39;);">加入收藏</a>		</span>
            </li>
        </ul>
    </div>
</div>
<div class="header">
    <div class="top w960 center">
        <div class="toptitle"><h1><a style="logo_style" title="广州Java培训-购物商城"
                                     href="http://localhost:8080/shopping/index.action"></a> <a
                href="http://localhost:8080/shopping/index.action" title="广州粤嵌教育-购物商城"><img alt="广州粤嵌教育-购物商城"
                                                                                            src="/shop/images/logo.gif"></a>
        </h1></div>
        <div class="banner"><a title="广州粤嵌教育-购物商城" href="javascript:void(0);"></a> <a title="广州粤嵌教育-购物商城"
                                                                                      href="http://localhost:8080/shopping/index.action">
            <em> <img height="80" width="552" alt="广州粤嵌教育-购物商城" border="0" src="/shop/images/banner.gif"> </em></a>
        </div>
        <div class="rlink">
            <ul>
                <li class="r3"><a title="关于我们" href="http://localhost:8080/shopping/abort.action">关于我们</a></li>
                <li class="r4"><a title="联系方式" href="javascript:void(0);">联系方式</a></li>
            </ul>
        </div>
    </div>
    ﻿
    <div class="nav">
        <div class="w960 center">
            <ul>
                <li><a title="首页" href="/shop/index">首页</a></li>

                <li><a title="护肤" href="http://localhost:8080/shopping/index.do?typecode=0001">护肤</a></li>

                <li><a title="彩妆" href="http://localhost:8080/shopping/index.do?typecode=0002">彩妆</a></li>

                <li><a title="香氛" href="http://localhost:8080/shopping/index.do?typecode=0003">香氛</a></li>

                <li><a title="身体护理" href="http://localhost:8080/shopping/index.do?typecode=0004">身体护理</a></li>

                <li><a title="礼盒套装" href="http://localhost:8080/shopping/index.do?typecode=0005">礼盒套装</a></li>

                <li><a title="母婴专区" href="http://localhost:8080/shopping/index.do?typecode=0006">母婴专区</a></li>

                <li><a title="男士专区" href="http://localhost:8080/shopping/index.do?typecode=0007">男士专区</a></li>

                <li><a title="粉底" href="http://localhost:8080/shopping/index.do?typecode=0008">粉底</a></li>

                <li><a title="粉饼" href="http://localhost:8080/shopping/index.do?typecode=0009">粉饼</a></li>

                <li><a title="睫毛膏" href="http://localhost:8080/shopping/index.do?typecode=0010">睫毛膏</a></li>

                <li><a title="唇彩" href="http://localhost:8080/shopping/index.do?typecode=0011">唇彩</a></li>

                <li><a title="腮红" href="http://localhost:8080/shopping/index.do?typecode=0012">腮红</a></li>

                <li><a title="食品保健" href="http://localhost:8080/shopping/index.do?typecode=0013">食品保健</a></li>

                <li><a title="瘦身类" href="http://localhost:8080/shopping/index.do?typecode=0014">瘦身类</a></li>

                <li><a title="美容类" href="http://localhost:8080/shopping/index.do?typecode=0015">美容类</a></li>

            </ul>
        </div>
    </div>
</div>
<!--header end-->

<!-- middle part -->
<div style="positon: relative; width: 960px;margin: 0px auto;">
    <div class="shoppingcart_wrapper" id="shoppingcart">
        <p style="text-align:left;"><span id="shoppingcart_dd" style="font-size:13px;line-height:28px;">当前位置&nbsp;&gt;&gt;&nbsp;我的购物车 </span>
        </p>
        <ul class="shoppingcart_subject" id="ui_shoppingcart_title">
            <li class="row0">
                <input type="checkbox" id="checkAll" onclick="checkAll(this)">全选
            </li>
            <li class="row1">商品名称</li>
            <li class="row2">积分</li>
            <li class="row3">疯狂价</li>
            <li class="row4"><span title="在疯狂价基础上再优惠">&nbsp;&nbsp;&nbsp;小计&nbsp;&nbsp;&nbsp;</span></li>
            <li class="row5">数量</li>
            <li class="row6">操作</li>
        </ul>

        <!-- 购物车不为空 <input  type="checkbox"  name="">-->
        <c:forEach var="car" items="${cars}">
            <div class="shoppingcart_promotions_01">
                <ul class="shoppingcart_list">
                    <li class="row01">
                        <input type="checkbox" name="box" value="${car.id}" onclick="checkboxFun(this.value)">
                    </li>
                    <li class="row00">
                        <a name="productpic" href="/shop/detail?id=${car.articleId}"
                           title="${car.title}">
                            <img src="/shop/images/article/${car.image}" width="60xp" height="60xp">
                        </a>
                    </li>
                    <li class="row11">
                        <p>
                        <span class="name">
                            <a name="product" href="/shop/detail?id=${car.articleId}"
                               title="${car.title}">${car.title}</a>
                        </span>
                        </p>
                    </li>
                    <li class="row22">0</li>
                    <li class="row33">
                    <span>
                        <fmt:formatNumber pattern="￥:0.00" value="${car.price}"/>
                    </span>（<fmt:formatNumber pattern="0.0" value="${car.discount}"/>折）
                    </li>
                    <li class="row44">
                    <span>
                        <fmt:formatNumber pattern="￥:0.00" value="${car.price*car.discount}"/>
                    </span>
                    </li>
                    <li class="row55">
                        <input type="text" name="number" value="${car.buyNum}"
                               onblur="addFun2(this, 0,${car.articleId});">
                        <a href="javascript:void(0);" onclick="addFun2(this,1,${car.articleId});" title="数量加一"
                           class="add">+</a>
                        <a href="javascript:void(0);" onclick="addFun2(this,-1,${car.articleId});" title="数量减一"
                           class="cut">-</a>
                    </li>
                    <li class="row66">
                        <a name="movetofavorite" href="javascript:void(0);" title="此商品将移至“我的收藏”并从购物车中删除"
                           id="move_20376113">移入收藏</a>
                        <a name="delete" href="javascript:void(0);" onclick="deleteFn(${car.id});">删除</a>
                    </li>
                </ul>
            </div>
        </c:forEach>
        <div align="right" id="div_total" style="display: block;clear:both;">
            <p style="font-size:14px;font-weight:bold;line-height:31px;">
                数量总计：
                <span style="color:red;font-size:16px;font-weight:bold;">
                    ${totalNum}
                </span>&nbsp;&nbsp;(件)
            </p>
            <p style="font-size:14px;font-weight:bold;line-height:31px;">
                金额总计：
                <span style="color:red;font-size:16px;font-weight:bold;">
                    <fmt:formatNumber pattern="￥:0.00" value="${totalPrice}"/>
                </span>&nbsp;&nbsp;(折后价)
            </p>
            <p>

            </p>
            <form action="/shop/addOrder" method="post" id="form">
                <a href="/shop/index" name="goon" class="goon">
                    <img alt="" src="/shop/images/shop.jpg"></a>
                <!-- 通过隐藏输入框 将订单相关信息传递至后台 -->
                <input type="hidden" name="orderInfo" id="orderInfo">

                <button id="commitOrder" style="background-image: url(/shop/images/balance.jpg);width: 140px;height:
                35px"
                        type="button" onclick="submitOrder()"></button>

            </form>
            <p></p>
        </div>

        <!-- 购物车为空的话 -->
    </div>
</div>
<!---- middle end----->

<!--bottom part-->
<div style="width: 1060px;margin: 0px auto;">
    <img src="/shop/images/step.jpg">
</div>

</body>
</html>