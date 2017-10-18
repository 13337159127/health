$(function() {
		//用户登录
		$(".submit").click(function() {
			//电话号码
			var phoneNumber = $(".text").val();
			if (phoneNumber == "") {
				alert("请输入用户名");			 
				$(".text").focus();
				return;
			}
			//密码
			var passWord = $(".psd").val();
			if (passWord == "") {
				alert("请输入密码");
				$(".psd").focus();
				return;
			}
			//移动端登录
			$.ajax({
				type:'get',
				url:ctxPath+'/user/findUserMessage.kexin',
				dataType:'json',
				data:{
					phoneNumber : $(".text").val(),
					passWord : $(".psd").val()
				},
				success:function(data){
					if(data=="成功"){
						window.location.href = ctxPath+'/jsp/phonesuccess.jsp';
					}else{
						$("center").append("<span style='color:red;'>账号或密码错误</span>");
					}
				},
				error:function(){
					alert("登录失败");
				}
			});
		});		 
		//当删除电话号码文本框中的值，触发该事件
		$(".text").bind("input propertychange",function(){
			//删除添加的节点
			 $("span").remove();
		});
		//当删除密码文本框中的值，触发该事件
		$(".psd").bind("input propertychange",function(){
			//删除添加的节点
			 $("span").remove();
		});
	});