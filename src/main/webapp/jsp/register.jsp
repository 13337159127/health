<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%@include file="/assets/jspfactory.jsp"%>
</head>
<body>
  <div class="wrapper">
	<div class="sidebar" data-background-color="white" data-active-color="danger">
	  <div class="sidebar-wrapper">
		<div class="logo">
		  <a href="#" class="simple-text">计算器系统</a>
		</div>		  
	  </div>
	</div>
  <div class="main-panel">
	<nav class="navbar navbar-default">
	 <div class="container-fluid">
	  <div class="navbar-header">
		<a class="navbar-brand" href="#">注册页面</a>
	  </div>
	  <div class="collapse navbar-collapse">
		<ul class="nav navbar-nav navbar-right">
		  <li><a href="${ctxPath}/jsp/login.jsp">返回首页</a></li>
		</ul> 
	  </div>
	 </div>
	</nav>	
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="header">
							<h4 class="title">注册用户信息</h4>
						</div>
						<div class="content table-responsive table-full-width">
							<table class="table table-striped">
								<tr>
									<th width="30%">手机号</th>
									<td width="70%">										 
									<input type="text" id="phoneNumber" style="width: 350px;height:35px;" placeholder="用户/手机号码" value="">
									</td>
								</tr>
								<tr>
									<th width="30%">密码</th>
									<td id="id2" width="70%"><input type="password" id="passWord" style="width: 350px;height:35px; display: inline" autocomplete="off"  placeholder="请输入密码，6-16位数字/字母组合" value=""></td>
								</tr>
								<tr>
									<th width="30%">确认密码</th>
									<td id="id3" width="70%"><input type="password" id="confirmPassWord" autocomplete="off" style="width: 350px;height:35px; display: inline"   placeholder="请输入和上面相同的密码" value=""></td>
								</tr>
								<tr>
									<th width="30%">图片验证</th>
									<td id="id4" width="70%"><input type="text" id="code" style="width: 250px;height:35px; display: inline" placeholder="不区分大小写，点击图片刷新" value="">
									<img id="codeImg" alt="验证码" src="${ctxPath}/admin/code.kexin" onclick="changeImg()"/>
									</td>
								</tr>									 
							</table>
							<div class="text-center">
								<input type="button" id="putin" class="btn btn-info btn-fill btn-wd" value="添加">
							</div>
						</div>
					</div>
			 </div>
		</div>
	</div>
</div>
</div>
<script src="${ctxPath}/js/register.js"></script>
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