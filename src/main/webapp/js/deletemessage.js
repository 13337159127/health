 $(function(){
	   $.ajax({
			type : 'get',
			url : _ctxPath + '/personmessage/findPersonMessage.kexin',
			dataType : 'json',
			success : function(data) {
				$.each(data,function(index, value) {
					$("#tbody2").append("<tr><td>"+ value.personID + "</td><td>" + value.time + "</td><td>"+ value.personHeight+ "</td><td>"+ value.personWeight+ "</td><td>"+ value.bmiValue+ "</td><td style='cursor: pointer' onclick='deleteMessage(\""+value.id+"\")'>删除</td></tr>")		
				});
			},
			error : function() {
				alert("操作失败");
			}
		});
   });
 
  //删除个人信息
  function deleteMessage(id){
	  $.ajax({
		 type:'get',
		 url:_ctxPath+'/personmessage/deletePersonMessage.kexin?id='+id,
		 dataType:'json',
		 success:function(data){			  
			window.location.href=_ctxPath+'/jsp/index.jsp';
		 },
		 error:function(){
			 alert("操作失败");
		 }
	  });
  }