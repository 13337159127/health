<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="factory.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆成功</title>
<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
<link href="${ctxPath}/css/factory.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div class="mBMI_body">
		<p class="mBMI_mainTitle">登陆成功</p>
		<p class="mBMI_desc">用户的BMI值和GFR值</p>
		<div class="mBMI_subTitle">我的 BMI 历史记录</div>
		<div class="mBMI_history">
			<table>
				<thead>
					<tr>
						<th>用户</th>
						<th>日期</th>
						<th>身高cm</th>
						<th>体重kg</th>
						<th>BMI</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="tbody1">

				</tbody>
			</table>
		</div>
		<div class="mBMI_subTitle">我的 GFR 历史记录</div>
		<div class="mBMI_history">
			<table>
				<thead>
					<tr>
						<th>用户</th>
						<th>性别</th>
						<th>肤色</th>
						<th>肌酐值</th>
						<th>年龄</th>
						<th>GFR值 ml/min</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="tbody2">

				</tbody>
			</table>
		</div>
		<div class="mBMI_subTitle"> </div>
		<div class="mBMI_history">
			<table>				 
			  <tbody>
                <td  bgcolor="#66cc00">
						 <a bgcolor="#66cc00" href="${ctxPath}/jsp/bmi.jsp">计算 BMI 值</a>
				</td>
			  </tbody>
			</table>
		</div>
		<div class="mBMI_subTitle"> </div>
		<div class="mBMI_history">
			<table>				 
			  <tbody>
                <td  bgcolor="#ffff00">
						 <a bgcolor="#66cc00" href="${ctxPath}/jsp/gfr.jsp">计算 GFR 值</a>
				</td>
			  </tbody>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		var phoneNumber = '${phoneNumber}';
	</script>
	<script type="text/javascript" src="${ctxPath}/js/phonesuccessbmi.js"></script>
	<script type="text/javascript" src="${ctxPath}/js/phonesuccessgfr.js"></script>
</body>
</html>