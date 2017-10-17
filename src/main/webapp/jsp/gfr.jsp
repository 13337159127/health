<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="factory.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>eGFR计算器</title>
<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="${ctxPath}/css/countgfr.css"/>
</head>
<body>
	<div class="mBMI_body">
		<p class="mBMI_mainTitle">eGFR计算器</p>
		<p class="mBMI_desc">GRF（肾小球滤过率）是通过估算每分钟流经肾小球的血液量检查肾功能的一种测试。
			在公式中使用肌酐水平，计算出肾功能的状况如何，称为eGFR。在这个计算器中，从测试值中使用肾脏病饮食改良（MDRD）估算GFR。</p>
		<form>
			<ul class="mBMI_form_item">
				<li class="mBMI_form_item_label">性别</li>		
				<li>	  
				<select id="sex" class="mBMI_form_item_input">
                       <option value="男">男</option>
                       <option value="女">女</option>
                </select>
                </li>
			</ul>
			<ul class="mBMI_form_item">
				<li class="mBMI_form_item_label">皮肤赛</li>
				<li>
				<select id="skin" class="mBMI_form_item_input">
                      <option value="黑">黑</option>
                      <option value="非黑">非黑</option>
                </select>
                </li>
			</ul>
			<ul class="mBMI_form_item">
				<li class="mBMI_form_item_label">肌酐</li>
				<li>
				<input type="text" id="createinine" value="" />
				<select id='unit' class="mBMI_form_item_input">
                      <option value='1'>mg/dL</option>
                      <option value='2'>&mu;mol/L</option>
                </select>
                </li>
			</ul>
			<ul class="mBMI_form_item">
				<li class="mBMI_form_item_label">年龄</li>
				<li class="mBMI_form_item_input"><input type="text"
					id="age" value="" /></li>
			</ul>
			<div class="mBMI_form_btn">
				<input type="button" id="putin" value="计算GFR">
			</div>
		</form>
		<div class="mBMI_result">
			通过GFR MDRD: <i id="gfr">  </i> ml/min/1.73 m<sup>2</sup>
		</div>
		<div class="mBMI_subTitle">GFR标准</div>
		<div class="mBMI_standard">
			<table>
				<thead>
					<tr>
						<th>分类</th>
						<th>BMI 标准</th>
					</tr>
				</thead>
				<tbody>
					<tr bgcolor="#66cc00">
						<td>正常人滤液的量</td>
						<td>80-120ml/min</td>
					</tr>
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
	</div>
</body>
<script type="text/javascript">
  var phoneNumber = '${phoneNumber}';
</script>
<script type="text/javascript" src="${ctxPath}/js/countgfr.js"></script>
<script type="text/javascript" src="${ctxPath}/js/findanddeletegfr.js"></script>
</html>