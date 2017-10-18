$(function() {
	//用户登录
	$("#submit").click(function() {
		//电话号码
		var phoneNumber = $("#phoneNumber").val();
		if (phoneNumber == "") {
			alert("请输入用户名");			 
			$("#phoneNumber").focus();
			return;
		}
		//密码
		var passWord = $("#passWord").val();
		if (passWord == "") {
			alert("请输入密码");
			$("#passWord").focus();
			return;
		}
		// 输入的验证码,toUpperCase()方法把小写转换成大写
		var code = $("#code").val().toUpperCase();
		    if (code == "") {						 
			alert("请输入验证码");
			$("#code").focus();
			return;
		}
		$.ajax({
			type:'get',
			url:ctxPath+'/user/findUserMessage.kexin',
			dataType:'json',
			data:{
				phoneNumber : $("#phoneNumber").val(),
				passWord : $("#passWord").val(),
				code : $("#code").val().toUpperCase()
			},
			success:function(data){
				if(data=="成功"){
					window.location.href = ctxPath+'/jsp/success.jsp';
				}else if(data=="图片验证失败"){
					$("#div2").append("<span style='color:red;'>图片验证失败，点击图片重新获取</span>");
				}else{
					$("#div2").append("<span style='color:red;'>账号或密码错误</span>");
				}
			},
			error:function(){
				alert("登录失败");
			}
		});
	});
	//重置按钮，跳转到本页面
	$("#reset").click(function(){
		window.location.href = ctxPath+'/jsp/login.jsp';
	});
	//当删除电话号码文本框中的值，触发该事件
	$("#phoneNumber").bind("input propertychange",function(){
		//删除添加的节点
		 $("span").remove();
	});
	//当删除密码文本框中的值，触发该事件
	$("#code").bind("input propertychange",function(){
		//删除添加的节点
		 $("span").remove();
	});
});