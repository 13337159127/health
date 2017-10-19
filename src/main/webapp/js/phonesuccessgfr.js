$(function(){
	$.ajax({
		type:'get',
		url : ctxPath + '/persongfr/findGfr.kexin?phoneNumber='+phoneNumber,
		dataType:'json',
		success:function(data){
			$.each(data,function(index,value){
				$("#tbody2").append("<tr><td>"+value.phoneNumber+"</td><td>"+value.sex+"</td><td>"+value.skin+"</td><td>"+value.creatinine+"</td><td>"+value.age+"</td><td>"+value.gfrValue+"</td><td style='cursor: pointer' onclick='deletegfr(\""+value.id+"\")'>删除</td></tr>")
			});
		},
		error:function(){
			alert("操作失败");
		}
	});
});

//删除GFR值
function deletegfr(id){
	$.ajax({
		type:'get',
		url:ctxPath + '/persongfr/deletegfr.kexin?id='+id,
		dataType:'json',
		success:function(data){
			window.location.href=ctxPath+'/jsp/phonesuccess.jsp';
		},
	    error:function(){
	    	alert("删除失败");
	    }
	});
}