<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
<%@include file="/assets/jspfactory.jsp"%>
</head>
<body>
<div class="wrapper">
	<div class="sidebar" data-background-color="white" data-active-color="danger">
    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="#" class="simple-text">计算器系统</a>
            </div>
            <ul class="nav">                            
					<li class="active"><a href="${ctxPath}/jsp/index.jsp"> <i class="ti-bell"></i>
							<p>计算BMI的值</p>
					</a></li>
					<li class="active"><a href="${ctxPath}/jsp/gfr.jsp"> <i class="ti-map"></i>
							<p>计算GFR的值</p>
					</a></li>
            </ul>
    	</div>
    </div>

    <div class="main-panel">
		<nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">登录成功</a>
                </div>     
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">                        
                        <li class="dropdown">
                              <a>用户:${phoneNumber}</a>                              
                        </li>
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
									<h4 class="title">BMI值</h4>
								</div>

								<div class="content table-responsive table-full-width">
									<table class="table table-striped">
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
							<div class="card">
								<div class="header">
									<h4 class="title">GFR值</h4>
								</div>
								<div class="content table-responsive table-full-width">
									<table class="table table-striped">
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
						</div>
					</div>
				</div>
			</div> 			    
    </div>
</div>
<script type="text/javascript">
  var phoneNumber = '${phoneNumber}';
</script>
<script type="text/javascript" src="${ctxPath}/js/deletemessage.js"></script>
<script type="text/javascript" src="${ctxPath}/js/findanddeletegfr.js"></script>
</body>   
</html>
