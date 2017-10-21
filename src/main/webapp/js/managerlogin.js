$(function(){
	$("#submit").click(function(){
		var userName = $("#userName").val();
		if(userName == ""){
			alert("请输入用户名");
			$("#userName").focus();
			return;
		} 
		var passWord = $("#passWord").val();
		if(passWord == ""){
			alert("请输入密码");
			$("#passWord").focus();
			return;
		} 
		
		$.ajax({
			type:'get',
			url:ctxPath + '/user/findManager.kexin',
			dataType:'json',
			data:{
				userName : $("#userName").val(),
				passWord : $("#passWord").val()
			},
			success:function(data){
				if(data=="成功"){
					window.location.href = ctxPath + '/jsp/managersuccess.jsp';
				}else{
					alert("登陆失败");
					window.location.href = ctxPath + '/jsp/managerlogin.jsp';
				}
			},
			error:function(){
				alert("操作失败");
			}
		});
	});
});