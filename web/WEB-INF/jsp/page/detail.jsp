<%@ page language="java" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0043)http://localhost:8080/shopping/item.do?id=1 -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="/shop/js/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="/shop/js/jquery-ui.js"></script>

    <title>购物商城-物品明细</title>

    <link href="http://localhost:8080/shopping/fkjava.ico" rel="shortcut icon" type="image/x-icon">
    <!-- main.css是购物商城主样式 -->
    <link rel="stylesheet" type="text/css" href="/shop/css/main.css">
    <!-- header.js输出头部信息 -->
    <script type="text/javascript" src="/shop/js/header.js"></script>
    <script type="text/javascript">
        //购买数量，失去焦点
        function blurFn() {
            var domByNum = document.getElementById("buyNum");
            var num = domByNum.value;
            //isNaN不是数字，包含小数
            if (isNaN(num)) {
                domByNum.value = 1;
                return;
            }
            domByNum.value = Math.ceil(num) < 1 ? 1 : (Math.ceil(num) > "100" ? "100" : Math.ceil(num))

        }

        //1:减     2：加
        function numFun(level) {

            var domByNum = document.getElementById("buyNum");
            var num = domByNum.value;
            num = parseInt(num);
            switch (level) {
                case 1:
                    domByNum.value = num <= 1 ? 1 : (num - 1);
                    break;

                case 2:
                    domByNum.value = num + 1 > "100" ? "100" : num + 1;
                    break;
            }


        }

        var buy = function () {
            document.getElementById("buyform").submit();
        };
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
            <c:choose>
                <c:when test="${sessionScope.user!=null}">
                    <li>
                        <span style="color:red;">
                                ${sessionScope.user.loginName}
                        </span>：您好!&nbsp;&nbsp;
                        [<a href="/shop/logout">退出</a>]
                    </li>
                </c:when>
                <c:otherwise>
                    <li>
                <span>
                    [<a href="/shop/login">登录</a>]
                    [<a href="/shop/reg">免费注册</a>]
                </span>
                    </li>
                </c:otherwise>
            </c:choose>


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
    <!-- 左边物品类型列表 -->
    <div id="booksort" style="float:left;width:210px;">
        <div class="mt" style="height:25px;font-size:14px;">
            <h2>物品分类</h2>
        </div>
        <div class="mc">

            <div class="item"><h3><b>&gt;</b><a title="护肤"
                                                href="http://localhost:8080/shopping/index.action?typecode=0001">护肤</a>
            </h3></div>

            <div class="item"><h3><b>&gt;</b><a title="护肤"
                                                href="http://localhost:8080/shopping/index.action?typecode=0002">彩妆</a>
            </h3></div>

            <div class="item"><h3><b>&gt;</b><a title="护肤"
                                                href="http://localhost:8080/shopping/index.action?typecode=0003">香氛</a>
            </h3></div>

            <div class="item"><h3><b>&gt;</b><a title="护肤"
                                                href="http://localhost:8080/shopping/index.action?typecode=0004">身体护理</a>
            </h3></div>

            <div class="item"><h3><b>&gt;</b><a title="护肤"
                                                href="http://localhost:8080/shopping/index.action?typecode=0005">礼盒套装</a>
            </h3></div>

            <div class="item"><h3><b>&gt;</b><a title="护肤"
                                                href="http://localhost:8080/shopping/index.action?typecode=0006">母婴专区</a>
            </h3></div>

            <div class="item"><h3><b>&gt;</b><a title="护肤"
                                                href="http://localhost:8080/shopping/index.action?typecode=0007">男士专区</a>
            </h3></div>

            <div class="item"><h3><b>&gt;</b><a title="护肤"
                                                href="http://localhost:8080/shopping/index.action?typecode=0008">粉底</a>
            </h3></div>

            <div class="item"><h3><b>&gt;</b><a title="护肤"
                                                href="http://localhost:8080/shopping/index.action?typecode=0009">粉饼</a>
            </h3></div>

            <div class="item"><h3><b>&gt;</b><a title="护肤"
                                                href="http://localhost:8080/shopping/index.action?typecode=0010">睫毛膏</a>
            </h3></div>

            <div class="item"><h3><b>&gt;</b><a title="护肤"
                                                href="http://localhost:8080/shopping/index.action?typecode=0011">唇彩</a>
            </h3></div>

            <div class="item"><h3><b>&gt;</b><a title="护肤"
                                                href="http://localhost:8080/shopping/index.action?typecode=0012">腮红</a>
            </h3></div>

            <div class="item"><h3><b>&gt;</b><a title="护肤"
                                                href="http://localhost:8080/shopping/index.action?typecode=0013">食品保健</a>
            </h3></div>

            <div class="item"><h3><b>&gt;</b><a title="护肤"
                                                href="http://localhost:8080/shopping/index.action?typecode=0014">瘦身类</a>
            </h3></div>

            <div class="item"><h3><b>&gt;</b><a title="护肤"
                                                href="http://localhost:8080/shopping/index.action?typecode=0015">美容类</a>
            </h3></div>

        </div>
    </div>

    <!-- 右边物品明细显示 -->
    <div class="w main">
        <div class="right-extra">
            <div id="name">
                <h1>${a.title}<font style="color: #ff0000" id="advertiseWord"></font></h1>
            </div>
            <div id="preview">
                <div id="spec-n1" class="jqzoom">
                    <img src="/shop/images/article/${a.image}"
                         title="${a.description}" height="280" width="280">
                </div>
                <ul class="extra">
                    <li>
                        <span>评分：</span>
                        <div class="con" id="star10918727">
                            <div style="float: left; margin: 2px 0 0 5px; width: 64px; height: 12px;
                            background-image: url(/shop/images/icon_clubs.gif); background-repeat: no-repeat; overflow:
                            hidden;"></div>
                            <a href="javascript:void(0);" class="num-comment">(已有151人评价)</a>
                        </div>
                    </li>
                    <li class="tuangou"><a href="javascript:void(0);">该商品支持全国购买</a></li>
                </ul>
            </div>
            <!--preview end-->
            <ul id="summary">
                <li>供应商：<strong>${a.supplier}</strong></li>
                <li>出产地：<strong>${a.locality}</strong></li>
            </ul>
            <ul id="book-price">
                <li>定&nbsp;&nbsp;&nbsp;&nbsp;价：
                    <del><fmt:formatNumber pattern="￥:0.00" value="${a.price}"/></del>
                </li>

                <li><font color="red">疯&nbsp;&nbsp;狂&nbsp;&nbsp;价：</font>
                    <span id="priceinfo" class="price">
                        <fmt:formatNumber pattern="￥:0.00" value="${a.price*a.discount}"/>
                    </span>
                    <span class="rate" id="pricediscount">
                        （<fmt:formatNumber pattern="0.0" value="${a.discount}"/>折）
                    </span></li>
                <li class="sub">
                    <span class="fl">库&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;存：${a.storage}</span>
                    <span>&nbsp;&nbsp;下单后立即发货</span>
                </li>
                <!--促销-->
                <li style="display: list-item;" id="mfms" class="hide">
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tbody>
                        <tr>
                            <td valign="top">促销信息：</td>
                            <td><font color="#ef0000">该商品参加满减活动，购买活动商品每满300元，可减100元现金</font></td>
                        </tr>
                        </tbody>
                    </table>
                </li>
            </ul>


            <!-- 加入购物车表单 -->
            <form action="/shop/add2Car" method="post" id="buyform">
                <!-- 隐藏表单传递要购买的书籍id -->
                <input type="hidden" name="aid" value="${a.id}">
                <div class="m" id="choose">
                    <dl class="amount">
                        <dt>我要买：</dt>
                        <dd>
                            <a class="reduce" onclick="numFun(1);" href="javascript:void(0);">-</a>
                            <!-- 购买书的数量 -->
                            <input value="1" id="buyNum" name="buyNum" onblur="blurFn();" type="text">
                            <a class="add" onclick="numFun(2);" href="javascript:void(0);">+</a>
                        </dd>

                    </dl>
                    <div class="btns">
                        <a id="InitCartUrl" href="javascript:void(0);" onclick="buy();" class="btn-append"
                           style="background-image: url(/shop/images/btn_new.jpg)">添加到购物车</a>
                        <input value="关 注"
                               style="width: 68px; height: 30px; padding: 4px 0 4px 18px; margin-top: 7px;
                               background: url(/shop/images/btn_attention.jpg) no-repeat 0 0; border: 0; line-height:
                                0; color: transparent; font-size: 0; *padding-bottom: 0px;"
                               id="coll10918727" type="button">
                        <div class="clr"></div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!---- middle end----->

<!--bottom part-->
<div style="width: 1060px;margin: 0px auto;">
    <img src="/shop/images/step.jpg">
</div>

</body>
</html>