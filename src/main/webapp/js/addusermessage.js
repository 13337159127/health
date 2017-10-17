$(function() {
	$("#putin").click(function() {
		//删除验证码节点
		$("#s5").remove();
	// 电话号码
	var phonenumber = $("#phoneNumber").val();
	    if (phonenumber == "") {
	    $("td:first").append("<span id='s1' style='color:red;'>请输入手机号码</span>");
	    $("#phoneNumber").focus();
        return;
    }
	// 删除指定元素
	$("#s1").remove();
	// 符合手机号码规则
	var sMobile = /^1[3|4|5|7|8][0-9]\d{4,8}$/;
	    if (!sMobile.test(phonenumber)) {					 
	    $("td:first").append("<span id='s1' style='color:red;'>请输入手机号码</span>");
	    $("#phoneNumber").focus();
	    return;
	}
	$("#s1").remove();
	// 密码
	var password = $("#passWord").val();
	    if (password == "") {					 
	    $("#id2").append("<span id='s2' style='color:red;'>请输入密码</span>");
	    $("#passWord").focus();
	    return;
    }										 
	$("#s2").remove();
	// 判断密码是否为6-16位数字和字母组成
	var reg = /^[A-Za-z0-9]{6,16}$/;
	    if (!reg.test(password)) {						 
	    $("#id2").append("<span id='s2' style='color:red;'>密码由6-16位数字和字母组成</span>");
	    $("#passWord").focus();
	     return;
	}
	$("#s2").remove();
	// 确认密码
	var confirmPassWord = $("#confirmPassWord").val();
	if (confirmPassWord == "") {					 
		$("#id3").append("<span id='s3' style='color:red;'>请确认密码</span>");
		$("#confirmPassWord").focus();
		return;
	}									 
	$("#s3").remove();
	// 判断两次输入的密码是否一致						 
	if (password != confirmPassWord) {
		$("#id3").append("<span id='s4' style='color:red;'>两次输入的密码不一致，请确认密码</span>");
		$("#confirmPassWord").focus();
		return;
	}									 
	$("#s4").remove();
	// 输入的验证码,toUpperCase()方法把小写转换成大写
	var code = $("#code").val().toUpperCase();
	    if (code == "") {						 
		$("#id4").append("<span id='s5' style='color:red;'>请输入验证码</span>");
		$("#code").focus();
		return;
	}
	    $("#s5").remove();
		// ajax向后台提交数据
		$.ajax({
			type : 'post',
			url : ctxPath + '/user/addUserMessage.kexin',
			dataType : 'json',
			data : {
				phoneNumber : $("#phoneNumber").val(),
				passWord : $("#passWord").val(),
				code : $("#code").val().toUpperCase()
			},
			success : function(data) {
				//如果输入验证码正确，则注册成功。否则注册失败
				if(data=="成功"){
					alert("注册成功");
					window.location.href = ctxPath + '/jsp/register.jsp';
				}else{
					$("#id4").append("<span id='s5' style='color:red;'>图形验证码错误,点击图片，重新获取验证码</span>");
				}				 
			},
			error : function() {
				alert("注册失败");
			}
		});
	});					 
});