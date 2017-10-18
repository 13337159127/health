<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="factory.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-touch-fullscreen" content="yes">
<meta http-equiv="Access-Control-Allow-Origin" content="*">
<link href="${ctxPath}/css/login.css" type="text/css" rel="stylesheet">
<link href="${ctxPath}/css/global.css" type="text/css" rel="stylesheet">
<title>计算器登录</title>
</head>
<body>
	<div class="login">
		<div class="login-title">
			<p>计算器登录</p>
			<i></i>
		</div>		 
			<div class="login-bar">
				<ul>
					<li><img src="${ctxPath}/images/login_user.png"><input type="text"
						class="text" value="" placeholder="请输入用户名"/></li>
					<li><img src="${ctxPath}/images/login_pwd.png"><input
						type="password" value="" class="psd" placeholder="请输入确认密码" /></li>
				</ul>
			</div>
			<div class="login-btn">
				<button class="submit" type="submit">登陆</button>
				<a href="${ctxPath}/jsp/phoneregister.jsp">
				<div class="login-reg">
						<p>莫有账号，先注册</p>
				</div></a>
				<div id="login">
						<center> </center> 
				</div>
			</div>		 
</div>
<script src="${ctxPath}/js/phonelogin.js"></script>
</body>
</html>