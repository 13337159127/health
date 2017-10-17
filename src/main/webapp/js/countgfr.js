$(function() {
	$("#putin").click(function() {
		// 肌酐的值
		var createinine = $("#createinine").val();
		if (createinine == "") {
			alert("请输入肌酐的值");
			$("#createinine").focus();
			return;
		}
		// 判断肌酐的值是否为数字
		if (isNaN(createinine)) {
			alert("请输入数字");
			$("#createinine").focus();
			return;
		}
		// 肌酐值的单位
		var unit = $("#unit").val();
		// 当肌酐的单位为mg/dl时，肌酐的值应为1到10之间
		if (unit == "1" && (createinine > 10 || createinine < 1)) {
			alert("肌酐的值应为1到10之间");
			$("#createinine").focus();
			return;
		}
		// 当肌酐的单位为umol/L时，肌酐的值应为5到855之间
		if (unit == "2" && (createinine > 855 || createinine < 5)) {
			alert("肌酐的值应为5到855之间");
			$("#createinine").focus();
			return;
		}
		// 年龄的值
		var age = $("#age").val();
		if (age == "") {
			alert("请输入年龄");
			$("#age").focus();
			return;
		}
		// 判断年龄的值是否为数字
		if (isNaN(age)) {
			alert("请输入数字");
			$("#age").focus();
			return;
		}
		// 性别和皮肤
		var sex = $("#sex").val();
		var skin = $("#skin").val();
		   // 向后台提交数据
		   $.ajax({
			    type : 'get',
				url : ctxPath + '/persongfr/addPersonGfr.kexin',
				dataType : 'json',
				data : {
					sex : $("#sex").val(),
					skin : $("#skin").val(),
					createinine : $("#createinine").val(),
					unit : $("#unit").val(),
					age : $("#age").val()
				},					 
				success : function(data) {
					// 查询数据库的值
					$.ajax({
						type : 'get',
						url : ctxPath + '/persongfr/findGfr.kexin?phoneNumber='+phoneNumber,
						dataType : 'json',							 
						success : function(data) {
							//清空元素下的DOM元素
							$("#tbody2").html("");
							$.each(data,function(index,value){
								// 如果输入的肌酐值和输入的年龄相等，则把GFR的值添加到页面
								if ((age == value.age && createinine == value.creatinine) && (sex == value.sex && skin == value.skin)) {
										$("#gfr").html(value.gfrValue);
								}
								$("#tbody2").append("<tr><td>"+value.phoneNumber+"</td><td>"+value.sex+"</td><td>"+value.skin+"</td><td>"+value.creatinine+"</td><td>"+value.age+"</td><td>"+value.gfrValue+"</td><td style='cursor: pointer' onclick='deletegfr(\""+value.id+"\")'>删除</td></tr>")
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