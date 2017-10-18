 $(function(){
	   $.ajax({
			type : 'get',
			url : ctxPath + '/personmessage/findPersonMessage.kexin?phoneNumber='+phoneNumber,
			dataType : 'json',
			success : function(data) {
				$.each(data,function(index, value) {
					$("#tbody1").append("<tr><td>"+ value.phoneNumber + "</td><td>" + value.time + "</td><td>"+ value.personHeight+ "</td><td>"+ value.personWeight+ "</td><td>"+ value.bmiValue+ "</td><td style='cursor: pointer' onclick='deleteMessage(\""+value.id+"\")'>删除</td></tr>")		
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
		 url:ctxPath+'/personmessage/deletePersonMessage.kexin?id='+id,
		 dataType:'json',
		 success:function(data){			  
			 window.location.href=ctxPath+'/jsp/bmi.jsp';
		 },
		 error:function(){
			 alert("操作失败");
		 }
	  });
  }