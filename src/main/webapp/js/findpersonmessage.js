 $(function() {
		$("#putin").click(function() {
			var personHeight = $("#personHeight").val();
			//判断身高是否为空 
			if (personHeight == "" ) {
				alert("请输入身高");
				$("#personHeight").focus();
				return;
			}
			//isNaN()检查其参数是否是非数字，如果不是数字，返回true
			if(isNaN(personHeight)){
				alert("请输入数字");
				$("#personHeight").focus();
				return;
			}
			//判断身高标准值
			if(personHeight < 40 || personHeight > 300){
				alert("请输入标准身高:(40cm - 300cm)");
				$("#personHeight").focus();
				return;
			}  
			var personWeight = $("#personWeight").val();
			//判断体重是否为空 
			if (personWeight == "" ) {
				alert("请输入体重");
				$("#personWeight").focus();
				return;
			}
			//判断是否为数字
			if(isNaN(personWeight)){
				alert("请输入数字");
				$("#personWeight").focus();
				return;
			}
			//判断体重标准值
			if(personWeight < 2 || personWeight >500){
				alert("请输入标准体重:(2kg - 500kg)");
				$("#personWeight").focus();
				return;
			} 
			
			$.ajax({
				type : 'get',
				url : _ctxPath +'/personmessage/setPersonBMI.kexin',
				data : {
					personHeight : $("#personHeight").val(),
					personWeight : $("#personWeight").val()
				},
				dataType : 'json',
				success : function(data) {
					//查询数据
					$.ajax({
						type : 'get',
						url : _ctxPath + '/personmessage/findPersonMessage.kexin',
						dataType : 'json',
						success : function(data) {
							//清空根据选择器选出来的元素下所有DOM元素
							$("#tbody2").html("");
							$.each(data,function(index, value) {								 
									//如果身高体重等于本次输入的值，则把本次的值BMI值输入到页面上
								    if(personHeight == value.personHeight && personWeight == value.personWeight){
								    	//把BMI的值添加到页面中
								    	$("#bmi").html(value.bmiValue);
										//把BMI的值赋值给变量，根据BMI的值比较出人的身体状态
										var stateValue = value.bmiValue;
										if(stateValue <= 18.4){
											$("#state").html("偏瘦");
										}else if(stateValue >= 18.5 && stateValue <= 23.9){
											$("#state").html("正常");
										}else if(stateValue >= 24.0 && stateValue <= 27.9){
											$("#state").html("过重");
										}else{
											$("#state").html("肥胖");
										}				
								    } 		 				 
								$("#tbody2").append("<tr><td>"+ value.personID + "</td><td>" + value.time + "</td><td>"+ value.personHeight+ "</td><td>"+ value.personWeight+ "</td><td>"+ value.bmiValue+ "</td><td style='cursor: pointer' onclick='deleteMessage(\""+value.id+"\")'>删除</td></tr>")		
							});
						},
						error : function() {
							alert("操作失败");
						}
					});
				},
				error : function() {
					alert("操作失败");
				}
			});
		});
	});