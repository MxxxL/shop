<%@ page language="java" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0047)http://localhost:8080/shopping/showOrder.action -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="/shop/js/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="/shop/js/jquery-ui.js"></script>


    <title>购物商城-订单列表</title>

    <link href="http://localhost:8080/shopping/fkjava.ico" rel="shortcut icon" type="image/x-icon">
    <!-- main.css是购物商城主样式 -->
    <link rel="stylesheet" type="text/css" href="/shop/css/main.css">
    <!-- header.js输出头部信息 -->
    <script type="text/javascript" src="/shop/js/header.js"></script>

    <script type="text/javascript">
        var viewitem = function (obj, id) {
            var trs = document.getElementsByTagName("tr");
            for (var i = 0; i < trs.length; i++) {
                if (trs[i].id.indexOf("title_" + id) == 0
                    || trs[i].id.indexOf("book_" + id) == 0) {
                    trs[i].style.display = (obj.checked) ? "" : "none";
                }
            }
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
<div class="Wrap_cart">
    <div class="List_cart marginb10">
        <h2><strong>订单信息查询</strong></h2>
        <div class="cart_table">
            <div id="part_cart">
                <div class="o_show">


                    <h1 style="font-weight:bold;font-size:12px;"><font color="red">&nbsp;&nbsp;

                        帅哥|美女</font>：您好；您当前共有${count}个订单：(点击订单可显示该订单下的购物明细)</h1>
                    <div class="middle">
                        <table class="Table" cellpadding="0" cellspacing="0" width="100%">

                            <tbody>
                            <tr class="align_Center Thead">
                                <td align="center">订单编号</td>
                                <td width="26%" align="center">下单时间</td>
                                <td width="20%" align="center">发货时间</td>
                                <td width="16%" align="center">订单状态</td>
                                <td width="20%" align="center">订单总额</td>
                            </tr>

                            <c:forEach items="${orders}" var="order">
                                <tr class="align_Center" height="25">
                                    <td align="center">
                                        <input type="checkbox" onclick="viewitem(this, ${order.id});">${order.orderCode}
                                    </td>
                                    <td width="26%" align="center"><fmt:formatDate value="${order.createDate}"
                                                                                   pattern="yyyy-MM-dd"/></td>
                                    <td width="20%" align="center"><fmt:formatDate value="${order.sendDate}"
                                                                                   pattern="yyyy-MM-dd"/></td>
                                    <td width="16%" align="center"> ${order.status}</td>
                                    <td width="20%" align="center"><fmt:formatNumber pattern="0.00"
                                                                                     value="${order.amount}"
                                    /></td>
                                </tr>


                                <tr style="background-color: rgb(204, 204, 204); border-bottom-style: solid; display: none;"
                                    id="title_${order.id}">
                                    <td align="center">物品图片</td>
                                    <td align="center">标题</td>
                                    <td align="center">供应商</td>
                                    <td align="center">价格</td>
                                    <td align="center">购买数量</td>
                                </tr>
                                <c:forEach items="${order.orderItems}" var="item">

                                    <tr style="display: none;" id="book_${order.id}_${item.articleId}">
                                        <td align="center">
                                            <a href="/shop/detail?id=${item.articleId}"
                                               title="${item.title}">
                                                <img width="60px" height="60px"
                                                     alt="${item.title}"
                                                     src="/shop/images/article/${item.image}"
                                                     style="display: inline;"></a>
                                        </td>
                                        <td align="center">
                                            <a href="/shop/detail?id=${item.articleId}"
                                               title="${item.title}">${item.title}</a>
                                        </td>
                                        <td align="center">${item.supplier}</td>
                                        <td align="center"><fmt:formatNumber pattern="0.00"
                                                                             value="${item.price*item.discount}"/></td>
                                        <td align="center">${item.orderNum}</td>
                                    </tr>
                                </c:forEach>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
                    <div class="footer"></div>

                </div>
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