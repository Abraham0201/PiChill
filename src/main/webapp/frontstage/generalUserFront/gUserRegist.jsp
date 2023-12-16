<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pichill.generaluser.entity.GeneralUser"%>

<%
//��com.emp.controller.EmpServlet.java��238��s�Jreq��empVO���� (������J�榡�����~�ɪ�empVO����)
GeneralUser generalUser = (GeneralUser) request.getAttribute("generalUser");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>�@��|�����U</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-4.1/bootstrap.min.css" />
<!-- Vendor CSS-->
<link
	href="<%=request.getContextPath()%>/backEnd-Website/vendor/animsition/animsition.min.css"
	rel="stylesheet" media="all" />
<link
	href="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet" media="all" />
<link
	href="<%=request.getContextPath()%>/backEnd-Website/vendor/wow/animate.css"
	rel="stylesheet" media="all" />
<link
	href="<%=request.getContextPath()%>/backEnd-Website/vendor/css-hamburgers/hamburgers.min.css"
	rel="stylesheet" media="all" />
<link
	href="<%=request.getContextPath()%>/backEnd-Website/vendor/slick/slick.css"
	rel="stylesheet" media="all" />
<link
	href="<%=request.getContextPath()%>/backEnd-Website/vendor/select2/select2.min.css"
	rel="stylesheet" media="all" />
<link
	href="<%=request.getContextPath()%>/backEnd-Website/vendor/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" media="all" />
<!-- Main CSS-->
<link href="<%=request.getContextPath()%>/backEnd-Website/css/login.css"
	rel="stylesheet" media="all" />
<style type="text/css">
button.au-btn {
	/* border: 2px solid red; */
	background-color: #207DCA;
	/* margin: 5px; */
}

div.register {
	border: 1.5px solid red;
	height: auto;
}

.login-form {
	max-height: 360px;
	overflow-y: auto;
}

.city-select, .area-select {
	display: block;
}

.area-select {
	margin-top: 10px;
	margin-bottom: 10px;
	padding-top: 10px;
	border-top: 1px solid #ddd;
}

div.row div.col-1 input.btn {
	/* 	border: 1px solid red; */
	width: 150%;
	height: 40px;
	margin-bottom: 1px;
}

div.register-link {
	/* border: 1px solid green; */
	margin-top: 0;
}

div.pwd-see {
	display: flex;
	align-items: center;
}

label.pwd-see2 {
	margin-left: 5px;
}

input.btn {
/* border: 1px solid red; */
background-color: #207DCA;
width: 100%;
color: white;
}

input.btn:hover {
  background-color: orange;
}

</style>
</head>
<body class="animsition">
	<div class="all">
		<!-- <img src="./pic/m_login.png" height="1000" width="1000"> -->
	</div>
	<div class="page-wrapper">
		<div class="page-content--bge5">
			<div class="container">
				<div class="login-wrap">
					<div class="login-content">
						<div class="login-logo">
							<a href="#"> <img
								src="<%=request.getContextPath()%>/backEnd-Website/pic/g_register.png"
								alt="CoolAdmin">
							</a>
						</div>
						<div class="login-form">
							<form
								action="${pageContext.request.contextPath }/generaluser/generaluserf.do"
								method="post" enctype="multipart/form-data">
								<div class="form-group">
									<label for="gUsername">�b��</label><font color=red>${errorMsgs.gUsername}</font>
									<input class="au-input au-input--full" type="text"
										name="gUsername" placeholder="�п�J�b��" id="gUsername"
										value="<%=(generalUser == null) ? "" : generalUser.getgUsername()%>">
								</div>
								<div class="form-group">
									<label>�H�c</label><font color=red>${errorMsgs.gEmail}</font> <input
										class="au-input au-input--full" type="text" name="gEmail"
										placeholder="�п�J�H�c"
										value="<%=(generalUser == null) ? "" : generalUser.getgEmail()%>">
								</div>
								<div class="form-group">
									<label>�K�X</label><font color=red>${errorMsgs.gPassword}</font>
									<input class="au-input au-input--full" type="password"
										id="password" name="gPassword" placeholder="�п�J�K�X"
										value="<%=(generalUser == null) ? "" : generalUser.getgPassword()%>">
									<div class="pwd-see">
										<input type="checkbox" id="togglePwd"> <label
											class="pwd-see2" for="togglePwd">��ܱK�X</label>
									</div>
								</div>
								<div class="form-group">
									<label>�A���T�{�K�X</label><font color=red>${errorMsgs.gPaaword2}</font>
									<input class="au-input au-input--full" type="password"
										id="password2" name="gPassword2" placeholder="�ЦA����J�K�X">
									<div class="pwd-see">
										<input type="checkbox" id="togglePwd2"> <label
											class="pwd-see2" for="togglePwd2">��ܱK�X</label>
									</div>
								</div>
								<div class="form-group">
									<label>�m�W</label><font color=red>${errorMsgs.gName}</font> <input
										class="au-input au-input--full" type="text" name="gName"
										placeholder="�п�J�m�W"
										value="<%=(generalUser == null) ? "" : generalUser.getgName()%>">
								</div>
								<div class="form-group">
									<label>�κ�ID</label><font color=red>${errorMsgs.nicknameID}</font>
									<input class="au-input au-input--full" type="text"
										name="nicknameID" placeholder="�п�J�ʺ�ID"
										value="<%=(generalUser == null) ? "" : generalUser.getNicknameID()%>">
								</div>
								<div class="form-group">
									<label>�q��</label><font color=red>${errorMsgs.gTelephone}</font>
									<input class="au-input au-input--full" type="text"
										name="gTelephone" placeholder="�п�J�q��"
										value="<%=(generalUser == null) ? "" : generalUser.getgTelephone()%>">
								</div>
								<div class="form-group">
									<label>�ʧO</label><font color=red>${errorMsgs.gGender}</font> <select
										class="au-input au-input--full" name="gGender">
																				<option value="3">�п�ܩʧO</option>
										<option value="0">�k</option>
										<option value="1">�k</option>
									</select>
								</div>
								<div class="form-group">
									<label>�ͤ�</label><font color=red>${errorMsgs.gBirth}</font> <input
										class="au-input au-input--full" placeholder="�п�J�ͤ�"
										type="date" name="gBirth"
										value="<%=(generalUser == null) ? "" : generalUser.getgBirth()%>">

								</div>
								<div class=" form-group">

									<label for="text-input">�p���a�}</label><font color=red>${errorMsgs.gAddress}</font>

									<div class="city-select">
										<select class="au-input au-input--full" id="city" name="city"
											required>
											<option value="">�п�ܿ���</option>
										</select>
									</div>
									<div class="area-select">
										<select class="au-input au-input--full" id="area" name="area"
											required>
											<option value="">�п�ܶm����</option>
										</select>
									</div>
									<input type="text" id="text-input" name="gAddress"
										placeholder="�п�J�p���a�}" class="form-control" />
								</div>
								<div class="form-group">
									<label>������</label><font color=red>${errorMsgs.gIDNum}</font> <input
										class="au-input au-input--full" type="text" name="gIDNum"
										placeholder="�п�J������"
										value="<%=(generalUser == null) ? "" : generalUser.getgIDNum()%>">
								</div>
								<div class="form-group">

									<label>���U���</label> <input class="au-input au-input--full"
										type="date" name="gRegistDate"
										value="<%=(generalUser == null) ? "" : generalUser.getgRegistDate()%>">

								</div>
								<div class="form-group">
									<label for="file-input">�W�Ǥj�Y�K</label><font color=red>${errorMsgs.gProfilePic}</font>
									<input type="file" name="gProfilePic" onclick="previewImage()"
										multiple="multiple" onchange="hideContent('upFiles.errors');"
										class="form-control-file"><img id="imagePreview"
										src="#" alt="Preview" />
								</div>
								<div class="login-checkbox">
									<label> <input type="checkbox" name="agree">�O�_�P�N�ϥΪ̱���
									</label><font color=red>${errorMsgs.agree}</font>
								</div>
								<div class="row form-group">
									<div class="col-1 col-md-8">
										<input class="btn" type="hidden" name="action" value="insert"><input
											type="submit" class="btn btn-primary btn-sm" value="���U">
										<i class="fa fa-dot-circle-o"></i>
									</div>
								</div>
							</form>
							<div class="register-link">
								<p>
									�w�g���b���F��? <a
										href="${pageContext.request.contextPath }/frontstage/generalUserFront/gUserLogin.jsp">�n�J</a>
								</p>
							</div>
						</div>
					</div>
					<div class="left-image">
						<img
							src="<%=request.getContextPath()%>/backEnd-Website/pic/Group 460.png" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
	java.sql.Date gRegistDate = null;
	try {
		gRegistDate = java.sql.Date.valueOf(request.getParameter("gRegistDate").trim());
	} catch (Exception e) {
		gRegistDate = new java.sql.Date(System.currentTimeMillis());
	}
	%>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
// 	$(document).ready(function() {

		
// 		var timeout;
// 		$('#gUsername').on('input', function() {
// 		    clearTimeout(timeout);
// 		    timeout = setTimeout(function() {
// 		        var gUsername = $('#gUsername').val();
// 		        var gUsernameReg = "^[a-zA-Z0-9]{8,12}$";
// 		        if (gUsername !== "") {
// 		        	if (!gUsername.trim().match(gUsernameReg)) {
// 		                $("#accountExistsMessage").text("���ŦX�b���榡");
// 		                $("#accountExistsMessage").css("color", "red");
// 		            } else {
// 				            $.ajax({
<%-- 				                url: "<%=request.getContextPath()%>/generaluser/generaluserf.do?action=checkAccount", --%>
// 				                method: "POST",
// 				                data: { "gUsername": gUsername },
// 				                success: function(data) {
// 				                    console.log("ttt");
// 				                    if (data.exists) {
// 				                        $("#accountExistsMessage").text("���b���w�s�b");
// 				                        $("#accountExistsMessage").css("color", "red");
// 				                    } else {
// 				                        $("#accountExistsMessage").text("���b���i�ϥ�");
// 				                        $("#accountExistsMessage").css("color", "blue");
// 				                    }
// 				                },
// 				                error: function() {
// 				                    $("#accountExistsMessage").text("�ˬd�b�������~");
// 				                }
// 				            });
// 		              }      
// 		        } else {
// 		            $("#accountExistsMessage").text('');
// 		        }
// 		    }, 500); // 500�@����
// 		});
		
// 		var memberemailInput = $("#memberemail");
// 	    var errorMsgMemberEmail = $("font[color='red']");

// 	     // ��ť��J�ت���J�ƥ�
// 	     gUsernameInput.on('input', function() {
// 	        // �����J�ت���
// 	        var inputValue = gUsernameInput.val();

// 	        // �p�G��J�ؤ�����r�A�M�����~�T��
// 	        if (inputValue.trim() !== "") {
// 	            errorMsggUsername.text('');
// 	        }
// 	    });
	</script>
	<script>
		$(document)
				.ready(
						function() {

							//�Ĥ@�h���
							$
									.ajax({
										url : 'https://raw.githubusercontent.com/donma/TaiwanAddressCityAreaRoadChineseEnglishJSON/master/CityCountyData.json',
										type : "get",
										dataType : "json",
										success : function(data) {
											$
													.each(
															data,
															function(key, value) {
																console.log(
																		key,
																		value)
																$('#city')
																		.append(
																				'<option value="'+data[key].CityName+'">'
																						+ data[key].CityName
																						+ '</option>')
															})
										},
										error : function(data) {
											alert("fail");
										}
									});

							//�ĤG�h���
							$("#city")
									.change(
											function() {
												cityvalue = $("#city").val(); //����
												$("#area").empty(); //�M�ŤW������
												$("#area").css("display",
														"inline"); //��{
												$
														.ajax({
															url : 'https://raw.githubusercontent.com/donma/TaiwanAddressCityAreaRoadChineseEnglishJSON/master/CityCountyData.json',
															type : "get",
															dataType : "json",
															success : function(
																	data) {

																// 																eachval = data[cityvalue].AreaList; //�m��
																eachval = [];
																for (let i = 0; i < data.length; i++) {
																	if (data[i].CityName == cityvalue) {
																		eachval = data[i].AreaList;
																	}
																}

																$
																		.each(
																				eachval,
																				function(
																						key,
																						value) {
																					$(
																							'#area')
																							.append(
																									'<option value="'+eachval[key].AreaName+'">'
																											+ eachval[key].AreaName
																											+ '</option>')
																				});
															},
															error : function() {
																alert("fail");
															}
														});
											});

							//�粒����X��ܭ�
							$("#area")
									.change(
											function() {
												cityvalue = $("#city").val(); //����
												areavalue = $("#area").val(); //�m��

												$
														.ajax({
															url : 'https://raw.githubusercontent.com/donma/TaiwanAddressCityAreaRoadChineseEnglishJSON/master/CityCountyData.json',
															type : "get",
															dataType : "json",
															success : function(
																	data) {
																alert(data[cityvalue].CityName
																		+ "-"
																		+ data[cityvalue].AreaList[areavalue].AreaName);
															},
															error : function() {
																alert("fail");
															}

														});
											})

						});
	</script>
	<script>
		var registerDate = document.getElementsByName("registerDate")[0];

		// �c�ط�e���,�榡�� yyyy-mm-dd
		var today = new Date().toISOString().slice(0, 10);

		// �����U��������  
		registerDate.value = today;
	</script>
	<script>
		const password = document.getElementById('password');
		const toggle = document.getElementById('togglePwd');

		toggle.addEventListener('change', function() {
			if (this.checked) {
				password.type = 'text';
			} else {
				password.type = 'password';
			}
		});

		const password2 = document.getElementById('password2');
		const toggle2 = document.getElementById('togglePwd2');

		toggle2.addEventListener('change', function() {
			if (this.checked) {
				password2.type = 'text';
			} else {
				password2.type = 'password';
			}
		});
	</script>
	<!-- Jquery JS-->
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/jquery-3.2.1.min.js"></script>
	<!-- proper.min.js first, then bootstrap.min.js -->
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-4.1/popper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-4.1/bootstrap.min.js"></script>
	<!-- Vendor JS       -->
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/slick/slick.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/wow/wow.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/animsition/animsition.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/counter-up/jquery.waypoints.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/counter-up/jquery.counterup.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/circle-progress/circle-progress.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/chartjs/Chart.bundle.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/select2/select2.min.js"></script>
	<!-- Main JS-->
	<script src="<%=request.getContextPath()%>/backEnd-Website/js/main.js"></script>
</body>
</html>