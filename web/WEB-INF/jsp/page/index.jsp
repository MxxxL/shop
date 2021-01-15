<%@ page language="java" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0039)http://localhost:8080/shopping/index.do -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="/shop/js/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="/shop/js/jquery-ui.js"></script>

    <title>购物商城-首页</title>

    <link href="/shop/images/fkjava.ico" rel="shortcut icon" type="image/x-icon">
    <!-- main.css是购物商城主样式 -->
    <link rel="stylesheet" type="text/css" href="/shop/css/main.css">
    <!-- 使用jQuery-UI的样式来设置tab页 -->
    <link type="text/css"
          href="/shop/css/ui-lightness                                                                                                          /jquery-ui-1.8.20.custom.css"
          rel="stylesheet">
    <script type="text/javascript" src="/shop/js/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="/shop/js/jquery-ui.js"></script>
    <script type="text/javascript" src="/shop/js/pager.js"></script>
    <!-- header.js输出头部信息 -->
    <script type="text/javascript" src="/shop/js/header.js"></script>
    <script type="text/javascript">
        if (window.location != parent.window.location) {
            parent.window.location = window.location;
        }
        window.onload = function () {
            /** tabs标签页 */
            $('#tabs').tabs();

            /** 分页标签 */
            /* 	fkjava.pager("pager", { pageIndex : "1",
                        pageSize : "8",
                        pageCount : "32",
                        submitUrl : '/fk_ec/index.action?pageIndex={0}&typecode=0001&keyword='});	 */

            /** 获取所有的li为特定的li绑定事件 */
            var arrays = document.getElementsByTagName("li");
            for (var i = 0; i < arrays.length; i++) {
                if (arrays[i].id != "" && arrays[i].id.indexOf('selbgc1') == 0) {
                    arrays[i].onmouseover = function () {
                        this.className = "selbgc1";
                    };
                    arrays[i].onmouseout = function () {
                        this.className = "";
                    };
                }
            }
            /** 设置选的下拉列表选项 */
            var select = document.getElementById("typecode");
            for (var i = 0; i < select.options.length; i++) {
                var typecode = "0001";
                if (select.options[i].value == typecode) {
                    select.options[i].selected = true;
                }
            }


        };

        //下拉框中数据发生改变时触发该函数
        function reloadIndex(val) {
            var keyword = $("#keyword").val();

            window.location = "/shopping/index.do?typecode=" + val + "&keyword=" + keyword;
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
                                                                                            src="/shop/images/article/logo.gif"></a>
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
            <h2><strong>物品分类</strong></h2>
        </div>
        <div class="mc">

            <div class="item"><h3><b>&gt;</b><a href="http://localhost:8080/index.do?typecode=0001">·护肤</a></h3></div>

            <div class="item"><h3><b>&gt;</b><a href="http://localhost:8080/index.do?typecode=0002">·彩妆</a></h3></div>

            <div class="item"><h3><b>&gt;</b><a href="http://localhost:8080/index.do?typecode=0003">·香氛</a></h3></div>

            <div class="item"><h3><b>&gt;</b><a href="http://localhost:8080/index.do?typecode=0004">·身体护理</a></h3></div>

            <div class="item"><h3><b>&gt;</b><a href="http://localhost:8080/index.do?typecode=0005">·礼盒套装</a></h3></div>

            <div class="item"><h3><b>&gt;</b><a href="http://localhost:8080/index.do?typecode=0006">·母婴专区</a></h3></div>

            <div class="item"><h3><b>&gt;</b><a href="http://localhost:8080/index.do?typecode=0007">·男士专区</a></h3></div>

            <div class="item"><h3><b>&gt;</b><a href="http://localhost:8080/index.do?typecode=0008">·粉底</a></h3></div>

            <div class="item"><h3><b>&gt;</b><a href="http://localhost:8080/index.do?typecode=0009">·粉饼</a></h3></div>

            <div class="item"><h3><b>&gt;</b><a href="http://localhost:8080/index.do?typecode=0010">·睫毛膏</a></h3></div>

            <div class="item"><h3><b>&gt;</b><a href="http://localhost:8080/index.do?typecode=0011">·唇彩</a></h3></div>

            <div class="item"><h3><b>&gt;</b><a href="http://localhost:8080/index.do?typecode=0012">·腮红</a></h3></div>

            <div class="item"><h3><b>&gt;</b><a href="http://localhost:8080/index.do?typecode=0013">·食品保健</a></h3></div>

            <div class="item"><h3><b>&gt;</b><a href="http://localhost:8080/index.do?typecode=0014">·瘦身类</a></h3></div>

            <div class="item"><h3><b>&gt;</b><a href="http://localhost:8080/index.do?typecode=0015">·美容类</a></h3></div>

        </div>
    </div>
    <!-- 右边对应物品列表 -->
    <div style="float:left;width:750px;text-align:center;">
        <div>
            <form action="http://localhost:8080/shopping/index.do" method="post" name="search">
                物品类型：
                <select name="typecode" id="typecode" onchange="reloadIndex(this.value)">
                    <option value="0001">护肤</option>

                    <option value="00010001">--------洁面</option>

                    <option value="00010002">--------化妆水</option>

                    <option value="00010003">--------喷雾</option>

                    <option value="00010004">--------美容液</option>

                    <option value="00010005">--------眼霜</option>

                    <option value="00010006">--------面膜</option>

                    <option value="00010007">--------精华</option>

                    <option value="00010008">--------精油</option>

                </select>
                <input name="keyword" id="keyword" type="text" value="" size="50">
                <button>搜索</button>
            </form>
        </div>
        <!-- 显示所有书籍 -->
        <div id="tabs" style="Width:750px;background-color:white;"
             class="ui-tabs ui-widget ui-widget-content ui-corner-all">
            <ul class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
                <li class="ui-state-default ui-corner-top ui-tabs-active ui-state-active"><a
                        href="http://localhost:8080/shopping/tabs-1" aria-controls="ui-tabs-1">护肤</a></li>
            </ul>
            <div id="ui-tabs-1" class="ui-tabs-panel ui-widget-content ui-corner-bottom" style="display: block;"></div>
            <div class="sales-queue" id="tabs-1" style="background-color:white;margin-top:-25px;">
                <ul class="goods-queue3">

                    <c:forEach items="${articles}" var="a">
                        <li id="selbgc11" class="selbgc1">
                            <dl class="item-des">
                                <dt><a href="/shop/detail?id=${a.id}"
                                       title="${a.title}" target="_self">
                                    <img src="/shop/images/article/${a.image}" width="132" height="96"></a>
                                </dt>
                                <dd><s><fmt:formatNumber pattern="￥:0.00" value="${a.price}"/></s>
                                    <strong><fmt:formatNumber pattern="￥:0.00" value="${a.price*a.discount}"/></strong>
                                </dd>
                                <dd>
                                    <h2><a href="/shop/detail?id=${a.id}"
                                           title="${a.title}" target="_self">${a.description} </a>
                                    </h2>
                                </dd>
                            </dl>
                        </li>
                    </c:forEach>


                </ul>
                <!-- 分页标签 -->
                <div class="pagebottom" id="pager" style="clear:both;"></div>
            </div>
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