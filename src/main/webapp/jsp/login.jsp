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
                    <a class="navbar-brand" href="#">登录页面</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">                        
                        <li class="dropdown">
                              <a href="${ctxPath}/jsp/register.jsp">用户注册</a>                              
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
  <center> 
  <div class="content">       
  <div class="form-group">
     <label style="font-size:16px;">账&nbsp;号</label> &nbsp;&nbsp;
     <input type="text" id="phoneNumber" style="width: 300px; display: inline" class="form-control" placeholder="用户/手机号码">
  </div>
  <div  class="form-group">
     <label style="font-size:16px;">密&nbsp;码</label> &nbsp;&nbsp;
     <input type="password" id="passWord"  autocomplete="new-password" style="width: 300px; display: inline"  class="form-control" placeholder="密码">
  </div> 
  <div  class="form-group">
     <label style="font-size:16px;">验证码</label> &nbsp;&nbsp;
     <input type="text" id="code" style="width: 210px; display: inline"  class="form-control" placeholder="请输入验证码/不区分大小写">
     <img id="codeImg"  alt="验证码" src="${ctxPath}/admin/code.kexin" onclick="changeImg()"/>
  </div> 
  <!-- 添加span标签的值 -->
  <div id="div2" class="form-group">
     
  </div >   
    <input type="submit" id="submit" value="登 录" />
    <input type="reset"  id="reset" value="重置" />    
 </div>
 </center> 
 </div>
</div>
<script src="${ctxPath}/js/login.js"></script>
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