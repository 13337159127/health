<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="factory.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BMI计算器</title>
<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
<link href="${ctxPath}/css/factory.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div class="mBMI_body">
		<p class="mBMI_mainTitle">BMI计算器</p>
		<p class="mBMI_desc">身体质量指数 (Body Mass Index, 简称BMI), 亦称克托莱指数,
			是目前国际上常用的衡量人体胖瘦程度以及是否健康的一个标准。BMI 值超标，意味着你必须减肥了。</p>
		<form>
			<ul class="mBMI_form_item">
				<li class="mBMI_form_item_label">我的身高（单位：厘米cm）</li>
				<li class="mBMI_form_item_input"><input type="text"
					id="personHeight" value="" /></li>
			</ul>
			<ul class="mBMI_form_item">
				<li class="mBMI_form_item_label">我的体重(单位: 千克 kg):</li>
				<li class="mBMI_form_item_input"><input type="text"
					id="personWeight" value="" /></li>
			</ul>
			<div class="mBMI_form_btn">
				<input type="button" id="putin" value="计算BMI">
			</div>
		</form>
		<div class="mBMI_result">
			你的 BMI 值: <i id="bmi">  </i>，身体状态：<i id="state">  </i>
		</div>
		<div class="mBMI_subTitle">BMI标准</div>
		<div class="mBMI_standard">
			<table>
				<thead>
					<tr>
						<th>分类</th>
						<th>BMI 范围</th>
					</tr>
				</thead>
				<tbody>
					<tr bgcolor="#CCCCCC">
						<td>偏瘦</td>
						<td>&lt;= 18.4</td>
					</tr>
					<tr bgcolor="#66cc00">
						<td>正常</td>
						<td>18.5 ~ 23.9</td>
					</tr>
					<tr bgcolor="#ffff00">
						<td>过重</td>
						<td>24.0 ~ 27.9</td>
					</tr>
					<tr bgcolor="#ff9900">
						<td>肥胖</td>
						<td>&gt;= 28.0</td>
					</tr>
				</tbody>
			</table>
		</div>
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
	</div>
</body>
<script type="text/javascript">
    var phoneNumber = '${phoneNumber}';
</script>
<script type="text/javascript" src="${ctxPath}/js/deletebmi.js"></script>
<script type="text/javascript" src="${ctxPath}/js/findbmi.js"></script>
</html>