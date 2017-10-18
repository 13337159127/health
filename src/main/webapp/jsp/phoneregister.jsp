<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="factory.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BMI计算器</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
<style type="text/css">
body, p, table, img, ul, li {
	margin: 0;
	padding: 0;
}

i {
	font-style: normal
}

ul li {
	list-style: none
}

input:focus {
	outline: none
}

.mBMI_body {
	padding: 15px;
}

.mBMI_mainTitle {
	font-size: 16px;
	text-align: center;
	font-weight: bold;
}

.mBMI_desc {
	font-size: 12px;
	margin-top: 10px;
	line-height: 1.5;
}

.mBMI_subTitle {
	font-size: 14px;
	font-weight: bold;
	margin-top: 15px;
}

.mBMI_form_item {
	font-size: 12px;
	margin-top: 10px;
}

.mBMI_form_item_label {
	
}

.mBMI_form_item_input {
	margin-top: 5px;
	padding: 2px 10px;
	border: 1px solid #e1e2e6;
}

.mBMI_form_item_input input {
	width: 100%;
	height: 26px;
	border: none;
}

.mBMI_form_btn {
	margin-top: 10px;
	text-align: center;
	font-size: 12px;
}

.mBMI_form_btn input {
	width: 100%;
	height: 37px;
	line-height: 26px;
}

.mBMI_result {
	border: 1px dotted #ddd;
	font-size: 14px;
	background-color: #ffa;
	margin-top: 10px;
	padding: 5px;
}

.mBMI_standard {
	margin-top: 5px;
}

.mBMI_standard table {
	width: 100%;
	font-size: 12px;
	border-spacing: 0px;
	border-collapse: separate;
	border: 0px;
}

.mBMI_standard table thead {
	background-color: #8DD8F8;
}

.mBMI_standard table th, .mBMI_standard table td {
	text-align: center;
	padding: 4px 0;
}

.mBMI_history {
	
}

.mBMI_history table {
	width: 100%;
	font-size: 12px;
	margin-top: 5px;
	border-spacing: 0px;
}

.mBMI_history table thead {
	background-color: #7CB5EC;
	color: #fff;
}

.mBMI_history table th, .mBMI_history table td {
	padding: 4px 0;
	text-align: center;
}

#code {
	width: 70%;
	height: 32px;
}
</style>
</head>
<body bgcolor="#FAEBD7">
	<div class="mBMI_body">
		<p class="mBMI_mainTitle">用户注册</p>
		<p class="mBMI_desc"></p>
		<ul id="ph" class="mBMI_form_item">
			<li class="mBMI_form_item_label">手机号</li>
			<li class="mBMI_form_item_input"><input type="text"
				id="phoneNumber" placeholder="用户/手机号码" value="" /></li>
		</ul>
		<ul id="psd" class="mBMI_form_item">
			<li class="mBMI_form_item_label">密码</li>
			<li class="mBMI_form_item_input"><input type="password"
				id="passWord" placeholder="请输入密码，6-16位数字/字母组合" value="" /></li>
		</ul>
		<ul id="psd2" class="mBMI_form_item">
			<li class="mBMI_form_item_label">确认密码</li>
			<li class="mBMI_form_item_input"><input type="password"
				id="confirmPassWord" placeholder="请输入和上面相同的密码" value="" /></li>
		</ul>
		<ul id="img" class="mBMI_form_item">
			<li class="mBMI_form_item_label">图片验证</li>
			<li><input type="text" id="code" placeholder="不区分大小写，点击图片刷新"
				value="" /> <img id="codeImg"
				style="height: 32px; position: relative; top: 13px;" alt="验证码"
				src="${ctxPath}/admin/code.kexin" onclick="changeImg()" /></li>
		</ul>
		<div class="mBMI_form_btn">
			<input type="button" id="putin" value="注册">
		</div>
	</div>
	<script src="${ctxPath}/js/phoneregister.js"></script>
	<script type="text/javascript">
		function changeImg() {
			//根据ID获取到一个元素imgSrc
			var imgSrc = $("#codeImg");
			//使用attr获取src属性的值（一个请求地址）
			var src = imgSrc.attr("src");
			//设置src属性的值，调用chgUrl函数，传一个请求验证码地址
			imgSrc.attr("src", chgUrl(src));
		}

		// 加入时间戳，去缓存机制
		function chgUrl(url) {
			var timestamp = (new Date()).valueOf();
			if ((url.indexOf("&") >= 0)) {
				url = url + "&timestamp=" + timestamp;
			} else {
				url = url + "?timestamp=" + timestamp;
			}
			return url;
		}
	</script>
</body>
</html>