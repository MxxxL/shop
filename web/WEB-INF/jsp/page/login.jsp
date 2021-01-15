<%@ page language="java" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0041)http://localhost:8080/shopping/buy.action -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="/shop/js/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="/shop/js/jquery-ui.js"></script>

    <title>购物商城-登录页面</title>
    <!-- main.css是网站前台主要的CSS -->
    <link rel="stylesheet" type="text/css" href="/shop/css/main.css">
    <!-- login.css作用于登录的CSS -->
    <link rel="stylesheet" type="text/css" href="/shop/css/login.css">
    <!-- header部分 -->
    <script type="text/javascript" src="/shop/js/header.js"></script>
    <script type="text/javascript">
        if (parent.window.location != window.location) {
            parent.window.location = window.location;
        }

        //在页面完成加载时调用
        window.onload = function () {
            document.getElementById("loginName").focus();
            document.onkeydown = function () {
                // firefox没有window.event对象
                var event = arguments[0] ? arguments[0] : window.event;
                if (event.keyCode === 13) {
                    onLogin();
                }
            };
        };
        var onLogin = function () {
            //验证用户名和密码是否输入
            var loginname = document.getElementById("loginName").value;
            if (loginname == null || loginname == "" || loginname.length == 0) {
                alert("请输入用户名!");
                document.getElementById("loginName").focus;
                return false;
            }
            var password = document.getElementById("password").value;
            if (password == null || password == "" || password.length == 0) {
                alert("请输入密码!");
                document.getElementById("password").focus;
                return false;
            }
            document.getElementById("loginform").submit();
        };
    </script>
</head>

<body>
<!--header begin-->
<div id="shortcut">

    <div class="w">
        <ul class="fl lh">
            <li>		<span style="position: absolute;left: 500px;">官方网站：
			<a title="http://gz.gec-edu.org/?gzbdgzbdyueqianpc23" href="http://gz.gec-edu.org/?gzbdgzbdyueqianpc23">
				http://gz.gec-edu.org/?gzbdgzbdyueqianpc23</a>		</span></li>
        </ul>
        <ul class="fr lh">
            <li>
                <span>
                    [<a href="/shop/login">登录</a>]
                    [<a href="/shop/reg">免费注册</a>]
                </span>
            </li>
            <li>&nbsp;[<a href="/shop/myCar">我的购物车</a>]</li>
            <li>&nbsp;[<a href="/shop/order">我的订单</a>]</li>
            <li><span>
				&nbsp;&nbsp;&nbsp;
				<a href="javascript:void(0);"
                   onclick="this.style.behavior=&#39;url(#default#homepage)&#39;;this.setHomePage(&#39;http://gz.gec-edu.org/?gzbdgzbdyueqianpc23&#39;);">设为首页</a> |			<a
                    href="javascript:window.external.addFavorite(&#39;http://gz.gec-edu.org/?gzbdgzbdyueqianpc23&#39;,&#39;广州粤嵌教育-购物商城&#39;);">加入收藏</a>		</span>
            </li>
        </ul>
    </div>
</div>
<div class="header">
    <div class="top w960 center">
        <div class="toptitle"><h1>
            <a style="logo_style" title="广州Java培训-购物商城" href="http://localhost:8080/shopping/index.action"></a> <a
                href="http://localhost:8080/shopping/index.action" title="广州粤嵌教育-购物商城">
            <img alt="广州粤嵌教育-购物商城" src="/shop/images/logo.gif"></a>
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

<form name="loginform" method="post" action="" id="loginform">
    <br>
    <input type="hidden" name="method" value="submitTable">
    <div class="login_main" style="background: url(/shop/images/login_bg.jpg) no-repeat center 0;">
        <div class="login_panel">
            <!--登录框开始-->
            <div class="right_panel">
                <div class="login_frame_border">
                    <div class="login_frame">
                        <div class="login_title">
                            <font color="red">请先登陆</font>还不是商城用户？&nbsp;&nbsp;<a href="/shop/reg">立即注册</a>
                        </div>
                        <div class="login_frist clearfix" id="user_div_name">
                            <label>登录名</label>
                            <span class="login_input">
									<input name="loginName" type="text" maxlength="40" id="loginName" class="tip">
								</span>
                            <span class="hint" id="login_loginname_error" style="display: none"></span>
                            <span class="hint" id="usernameMessage" style="display: black">请输入邮箱地址</span>
                        </div>
                        <p class="clearfix" id="password_div">
                            <label>密&nbsp;&nbsp;码</label>
                            <span class="login_input">
									<input name="password" type="password" maxlength="20" id="password">
								</span>
                            <span class="hint" id="login_password_error" style="display: none"></span>
                            <span class="hint" id="passwordMessage" style="display: black">请输入6-16位密码</span>
                        </p>

                        <div class="login_btn" id="submit_signin_div">
                            <input id="btnSignCheck" type="button" value="登 录" onclick="onLogin();" style="width: 94px; height: 27px; float: left;
									background: url(/shop/images/login_btn.png) no-repeat -237px -46px;">
                            &nbsp;&nbsp;
                        </div>

                        <div class="co_login">
                            <span>疯狂源自梦想,技术成就辉煌</span><a class="icon_sina" id="open_sina_sign"
                                                         href="http://localhost:8080/shopping/buy.action" title="新浪微博">广州粤嵌</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<!--登录框结束-->

</body>
</html>