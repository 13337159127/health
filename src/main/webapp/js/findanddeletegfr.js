$(function(){
	$.ajax({
		type:'get',
		url : _ctxPath + '/persongfr/findGfr.kexin',
		dataType:'json',
		success:function(data){
			$.each(data,function(index,value){
				$("#tbody2").append("<tr><td>"+value.sex+"</td><td>"+value.skin+"</td><td>"+value.creatinine+"</td><td>"+value.age+"</td><td>"+value.gfrValue+"</td><td style='cursor: pointer' onclick='deletegfr(\""+value.id+"\")'>删除</td></tr>")
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
		url:_ctxPath + '/persongfr/deletegfr.kexin?id='+id,
		dataType:'json',
		success:function(data){
			window.location.href=_ctxPath+'/jsp/gfr.jsp';
		},
	    error:function(){
	    	alert("删除失败");
	    }
	});
}