<%@ page language="java" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0050)http://localhost:8080/shopping/order.action?step=1 -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="/shop/js/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="/shop/js/jquery-ui.js"></script>


    <title>购书商城-确定订单</title>

    <link href="http://localhost:8080/shopping/fkjava.ico" rel="shortcut icon" type="image/x-icon">
    <!-- main.css是购物商城主样式 -->
    <link rel="stylesheet" type="text/css" href="/shop/css/main.css">
    <!-- header.js输出头部信息 -->
    <script type="text/javascript" src="/shop/js/header.js"></script>
    <script type="text/javascript">
        function submitFn() {
            document.getElementById("orderform").submit();
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
<div class="Wrap_cart">
    <div class="List_cart marginb10">
        <h2><strong>填写核对订单信息</strong></h2>
        <div class="cart_table">
            <!--收货人地址开始-->
            <div id="part_consignee">
                <div class="o_write">
                    <h1>收货人信息&nbsp;
                        <span style="display: none"><a href="javascript:void(0);" style="color: rgb(255, 102, 0);">[创建一个新地址]</a></span>
                    </h1>
                    <div class="middle">
                        <div id="consignee_addr">
                            <table border="0" cellspacing="0" width="100%">
                                <tbody>

                                <c:set var="u" value="${sessionScope.user}"/>
                                <tr>
                                    <td align="right" valign="middle" width="85">
                                        <font color="red">*</font>收货人姓名：
                                    </td>
                                    <td align="left" valign="middle"><input id="consignee_addressName" class="txt"
                                                                            maxlength="20" type="text"
                                                                            value="${u.name}">&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" valign="middle"><font color="red">*</font>地址：</td>
                                    <td align="left" valign="middle"><span id="consigneeShow_addressName"></span>
                                        <input id="consignee_address" class="txt" maxlength="50" type="text"
                                               value="${u.address}" style="margin-left: 2px; width: 327px;">&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" valign="middle"><font color="red">*</font>电话号码：</td>
                                    <td align="left" valign="middle"><input id="consignee_message" class="txt"
                                                                            type="text" value="${u.phone}">
                                        &nbsp; &nbsp;<font color="#000000">用于接收发货通知短信及送货前确认</font>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" valign="middle">电子邮件：</td>
                                    <td align="left" valign="middle"><input id="consignee_email" class="txt" type="text"
                                                                            value="${u.email}"> &nbsp;
                                        <font color="#000000">用来接收订单提醒邮件，便于您及时了解订单状态</font></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="middle">邮政编码：</td>
                                    <td align="left" valign="middle"><input id="consignee_postcode" class="txt"
                                                                            style="width: 77px;" type="text">&nbsp;
                                        <font style="margin-left: 53px" color="#000000">有助于快速确定送货地址</font></td>
                                </tr>


                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div style="padding: 10px 0 20px 45px;">
                        <a href="http://localhost:8080/shopping/order.action?step=1#none">[选中常用地址]</a>
                    </div>
                    <div class="footer">
                        <input class="btn" value="保存收货人信息" type="button">
                    </div>
                </div>
            </div>
            <!--收货人地址结束,支付方式及配送方式开始-->
            <div id="part_payTypeAndShipType">
                <div class="o_show">
                    <h1>支付及配送方式&nbsp;</h1>
                    <div id="updateInfo_payType"></div>
                    <div class="middle">
                        <table style="width: 100%;">
                            <tbody>
                            <tr>
                                <td style="text-align: right; width: 80px;">支付方式：</td>
                                <td>在线支付</td>
                            </tr>
                            <tr style="">
                                <td style="text-align: right;">配送方式：</td>
                                <td>快递运输</td>
                            </tr>
                            <tr style="">
                                <td style="text-align: right;">运 费：</td>
                                <td>0.00元<span style="color: red">(免运费)</span></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="footer"></div>
                </div>
            </div>
            <!--支付方式及配送方式结束-->
            <!--Cart信息开始-->
            <div id="part_cart">
                <div class="o_show">
                    <h1>
                        <span style="margin-right: 700px;">商品清单</span>
                        <a href="/shop/myCar"
                           style="color: rgb(0, 112, 215);">返回修改购物车</a>
                    </h1>
                    <div class="middle">
                        <table class="Table" cellpadding="3" cellspacing="0" width="100%">
                            <tbody>
                            <tr class="align_Center Thead">
                                <td>商品名称</td>
                                <td width="10%">疯狂价</td>
                                <td width="8%">返现</td>
                                <td width="8%">小计(元)</td>
                                <td width="9%">库存</td>
                                <td width="9%">数量</td>
                            </tr>
                            <!-- 迭代购物车中的书 -->

                            <c:forEach var="car" items="${list}">
                                <tr class="align_Center">
                                    <td width="25%">${car.title}</td>
                                    <td width="10%">
                                        <span class="price">
                                        <fmt:formatNumber pattern="￥:0.00" value="${car.price*car.discount}"/>
                                        &nbsp;&nbsp;
                                        （<fmt:formatNumber pattern="0.0" value="${car.discount}"/>折）
                                        </span>
                                    </td>
                                    <td width="5%">￥0.00</td>
                                    <td width="5%">
                                        <fmt:formatNumber pattern="￥:0.00"
                                                          value="${car.price*car.discount*car.buyNum}"/>
                                    </td>
                                    <td width="8%">${car.storage}</td>
                                    <td width="5%">${car.buyNum}</td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
                    <div class="footer"></div>
                </div>
            </div>
            <!--Cart信息开始-->
            <!--有货先发开始-->
            <div id="part_FirstInstockShip" style="padding: 8px 0 8px 30px; color: red"></div>
            <!--有货先发结束-->
            <div id="ware_info">
                <div style="background: #fff; font-size: 14px; font-weight: bold; padding-left: 2px;">结算信息</div>
                <h1></h1>
                <div class="middle">
                    <!--订单信息-->
                    <ul id="part_info">
                        <li class="info1" style="padding-bottom: 5px">商品金额：
                            <fmt:formatNumber pattern="0.00" value="${totalPrice}"/> 元 +
                            运费：0.00元 - 优惠券：<span id="price_coupon">0.00</span>元 - 礼品卡： <span
                                    id="price_coupon">0.00</span>元 - 返现：0.00元 <input id="txtIsUseMoney" value="0"
                                                                                     type="hidden"> <br>
                        </li>
                        <li class="info2" style="width: 100%; overflow: hidden;">
                            <table style="width: 100%;" cellpadding="0" cellspacing="0">
                                <tbody>
                                <tr>
                                    <td></td>
                                    <td style="text-align: right; font-size: 15px;"><b>应付总额：<font
                                            color="red"><fmt:formatNumber pattern="￥:0.00"
                                                                          value="${totalPrice}"/></font> 元
                                    </b>
                                        <div id="paypassword_panel"></div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </li>
                    </ul>
                </div>
            </div>
            <!--提交-->
            <div class="o_show submit">
                <div id="submit_btn">
                    <table cellpadding="0" cellspacing="0" width="100%">
                        <tbody>
                        <tr>
                            <td style="padding: 0pt; text-align: left; vertical-align: top;">
                                <div style="width: 600px; padding-left: 10px;" id="part_remark">
                                    <font id="showForm_remark"> </font>
                                </div>
                            </td>
                            <td style="width: 100px; padding: 0pt;">
                                <!-- 确定订单 -->
                                <form action="/shop/createOrder" method="post"
                                      id="orderform">
                                    <input type="hidden" id="orderInfo" name="orderInfo" value="${param.orderInfo}">
                                    <input onclick="submitFn();"
                                           style="margin-top: 2px; border: medium none; cursor: pointer;
                                           width: 160px; height: 53px; background: url(/shop/images/submit.jpg) repeat
                                           scroll 0% 0% transparent;"
                                           type="button">
                                </form>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <!--提交结束-->
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