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
                    <a class="navbar-brand" href="#">管理员登录</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">                        
                        <li class="dropdown">
                              <a> </a>                              
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
  <center> 
  <div class="content">       
  <div class="form-group">
     <label style="font-size:16px;">账&nbsp;号</label> &nbsp;&nbsp;
     <input type="text" id="userName" style="width: 300px; display: inline" class="form-control" placeholder="管理员账号">
  </div>
  <div  class="form-group">
     <label style="font-size:16px;">密&nbsp;码</label> &nbsp;&nbsp;
     <input type="password" id="passWord"  autocomplete="new-password" style="width: 300px; display: inline"  class="form-control" placeholder="密码">
  </div> 
    <input type="submit" id="submit" value="登 录" />
    <input type="reset"  id="reset" value="重置" />    
 </div>
 </center> 
 </div>
</div>
<script src="${ctxPath}/js/managerlogin.js"></script>
</body>
</html>