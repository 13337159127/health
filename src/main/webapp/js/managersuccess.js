$(function(){
	//管理员查看用户BMI值
	$.ajax({
		type:'get',
		url:ctxPath+'/personmessage/managerFindBmi.kexin',
		dataType:'json',
		success:function(data){
			$.each(data,function(index,value){
				$("#tbody1").append("<tr><td>"+value.phoneNumber+"</td><td>"+value.time+"</td><td>"+value.personHeight+"</td><td>"+value.personWeight+"</td><td>"+value.bmiValue+"</td><td style='cursor: pointer' onclick='deleteBMI(\""+value.id+"\")'>删除</td></tr>");
			});			 
		},
		error:function(){
			alert("操作失败");
		}
	});	
	//管理员查看用户的GFR值
	$.ajax({
		type:'get',
		url : ctxPath + '/persongfr/managerFindGFR.kexin',
		dataType:'json',
		success:function(data){
			$.each(data,function(index,value){
				$("#tbody2").append("<tr><td>"+value.phoneNumber+"</td><td>"+value.sex+"</td><td>"+value.skin+"</td><td>"+value.creatinine+"</td><td>"+value.age+"</td><td>"+value.gfrValue+"</td><td style='cursor: pointer' onclick='deleteGFR(\""+value.id+"\")'>删除</td></tr>")
			});
		},
		error:function(){
			alert("操作失败");
		}
	});
});

//管理员删除用户BMI值
function deleteBMI(id){
	$.ajax({
		type:'get',
		url:ctxPath+'/personmessage/deletePersonMessage.kexin?id='+id,
		dataType:'json',
		success:function(data){
			window.location.href=ctxPath+'/jsp/managersuccess.jsp';		 
		},
		error:function(){
			alert("操作失败");
		}
	});
}

//管理员删除用户gfr值
function deleteGFR(id){
	$.ajax({
		type:'get',
		url:ctxPath+'/persongfr/deletegfr.kexin?id='+id,
		dataType:'json',
		success:function(data){
			window.location.href=ctxPath+'/jsp/managersuccess.jsp';		 
		},
		error:function(){
			alert("操作失败");
		}
	});
}