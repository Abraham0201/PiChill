<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pichill.owneruser.entity.OwnerUser"%>

<%
//��com.emp.controller.EmpServlet.java��238��s�Jreq��empVO���� (������J�榡�����~�ɪ�empVO����)
OwnerUser ownerUser = (OwnerUser) request.getAttribute("ownerUser");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>���~�|�����U</title>
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

div.pwd-see {
	display: flex;
	align-items: center;
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

label.pwd-see2 {
	margin-left: 5px;
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
								src="<%=request.getContextPath()%>/backEnd-Website/pic/o_register.png"
								alt="CoolAdmin">
							</a>
						</div>
						<div class="login-form">
<!-- 							<div class="error"> -->
<%-- 								���~��C --%>
<%-- 								<c:if test="${not empty errorMsgs}"> --%>
<!-- 									<font style="color: red">�Эץ��H�U���~:</font> -->
<!-- 									<ul style="list-style-type: none"> -->
<%-- 										<c:forEach var="message" items="${errorMsgs}"> --%>
<%-- 											<li style="color: red">${message}</li> --%>
<%-- 										</c:forEach> --%>
<!-- 									</ul> -->
<%-- 								</c:if> --%>
<!-- 							</div> -->
							<form
								action="${pageContext.request.contextPath }/owneruser/owneruserf.do"
								method="post" enctype="multipart/form-data">
								<div class="form-group">
									<label>�b��</label><font color=red>${errorMsgs.oUserName}</font>
									 <input class="au-input au-input--full"
										type="text" name="oUserName" placeholder="�п�J�b��"
										value="<%=(ownerUser == null) ? "" : ownerUser.getoUserName()%>">
								</div>
								<div class="form-group">
									<label>�H�c</label><font color=red>${errorMsgs.oEmail}</font>
									 <input class="au-input au-input--full"
										type="text" name="oEmail" placeholder="�п�J�H�c"
										value="<%=(ownerUser == null) ? "" : ownerUser.getoEmail()%>">
								</div>
								<div class="form-group">
									<label>�K�X</label><font color=red>${errorMsgs.oPassword}</font>
									 <input class="au-input au-input--full"
										id="password" type="password" name="oPassword"
										placeholder="�п�J�K�X"
										value="<%=(ownerUser == null) ? "" : ownerUser.getoPassword()%>">
									<div class="pwd-see">
										<input type="checkbox" id="togglePwd"> <label
											class="pwd-see2" for="togglePwd">��ܱK�X</label>
									</div>
								</div>
								<div class="form-group">
									<label>�A���T�{�K�X</label><font color=red>${errorMsgs.oPassword2}</font>
									 <input class="au-input au-input--full"
										id="password2" type="password" name="oPassword2"
										placeholder="�ЦA����J�K�X">
									<div class="pwd-see">
										<input type="checkbox" id="togglePwd2"> <label
											class="pwd-see2" for="togglePwd2">��ܱK�X</label>
									</div>
								</div>
								<div class="form-group">
									<label>�m�W</label><font color=red>${errorMsgs.oName}</font>
									 <input class="au-input au-input--full"
										type="text" name="oName" placeholder="�п�J�m�W"
										value="<%=(ownerUser == null) ? "" : ownerUser.getoName()%>">
								</div>
								<div class="form-group">
									<label>�q��</label><font color=red>${errorMsgs.oTelephone}</font>
									 <input class="au-input au-input--full"
										type="text" name="oTelephone" placeholder="�п�J�q�ܸ��X"
										value="<%=(ownerUser == null) ? "" : ownerUser.getoTelephone()%>">
								</div>
								<div class="form-group">
									<label>�ʧO</label>
									 <select class="au-input au-input--full"
										name="oGender">
										<option value="0">�k</option>
										<option value="1">�k</option>
									</select>
								</div>
								<div class="form-group">
									<label>�ͤ�</label><font color=red>${errorMsgs.oBirth}</font>
									 <input class="au-input au-input--full"
										placeholder="�п�J�ͤ�" type="date" name="oBirth"
										value="<%=(ownerUser == null) ? "" : ownerUser.getoBirth()%>">

								</div>
								<div class=" form-group">

									<label for="text-input">�p���a�}</label><font color=red>${errorMsgs.oAddress}</font>

									<div class="city-select">
										<select class="au-input au-input--full" id="city" name="city"
											required>
											<option value="">�п�ܿ���</option>
										</select>
										<!-- <span class="custom-message">*�п�ܿ���</span> -->
									</div>
									<div class="area-select">
										<select class="au-input au-input--full" id="area" name="area"
											required>
											<option value="">�п�ܶm����</option>
										</select>
										<!-- <span class="custom-message">*�п�ܶm����</span> -->
									</div>
									<input type="text" id="text-input" name="oAddress"
										placeholder="�п�J�p���a�}" class="form-control" />
									<!-- <small class="form-text text-muted">This is a help text</small> -->
								</div>
								<div class="form-group">
									<label>������</label><font color=red>${errorMsgs.oIDNum}</font>
									 <input class="au-input au-input--full"
										type="text" name="oIDNum" placeholder="�п�J������"
										value="<%=(ownerUser == null) ? "" : ownerUser.getoIDNum()%>">
								</div>
								<div class="form-group">
									<label>�νs</label><font color=red>${errorMsgs.compiled}</font>
									 <input class="au-input au-input--full"
										type="text" name="compiled" placeholder="�п�J�νs"
										value="<%=(ownerUser == null) ? "" : ownerUser.getcompiled()%>">
								</div>
								<div class="form-group">
									<label>�Ȧ�N��</label><font color=red>${errorMsgs.oBankCode}</font>
									 <select class="au-input au-input--full"
										id="myBank" name="oBankCode">
										<option value="">�п�ܻȦ�N��</option>
										<option value="004">004�O�W�Ȧ�</option>
										<option value="005">005�g�a�Ȧ�</option>
										<option value="006">006�X�@�ӻ�</option>
										<option value="007">007�Ĥ@�Ȧ�</option>
										<option value="008">008�ثn�Ȧ�</option>
										<option value="009">009���ƻȦ�</option>
										<option value="011">011�W���ӷ~�x�W�Ȧ�</option>
										<option value="012">012�x�_�I���Ȧ�</option>
										<option value="013">013����@�ػȦ�</option>
										<option value="016">016�����Ȧ�</option>
										<option value="017">017���װ�ڰӷ~�Ȧ�</option>
										<option value="018">018�A�~���w</option>
										<option value="021">021��X(�x�W)�ӷ~�Ȧ�</option>
										<option value="025">025�����Ȧ�</option>
										<option value="039">039�D�ӿD���Ȧ�</option>
										<option value="040">040���ض}�o�u�~�Ȧ�</option>
										<option value="050">050�O�W����</option>
										<option value="052">052����ڰӷ~�Ȧ�</option>
										<option value="053">053�x���ӷ~�Ȧ�</option>
										<option value="054">054�ʫ��ӷ~�Ȧ�</option>
										<option value="072">072�w�N�ӻȦ�</option>
										<option value="075">075�F�ȻȦ�</option>
										<option value="081">081����(�x�W)�ӷ~�Ȧ�</option>
										<option value="085">085�s�[�Y�ӷs�[�Y�ع��Ȧ�</option>
										<option value="101">101�j�x�_�Ȧ�</option>
										<option value="102">102�خ��Ȧ�</option>
										<option value="103">103�O�W�s���ӻ�</option>
										<option value="104">104�x�_���H</option>
										<option value="106">106�x�_�E�H</option>
										<option value="108">108���H�ӷ~�Ȧ�</option>
										<option value="114">114�򶩤@�H</option>
										<option value="115">115�򶩤G�H</option>
										<option value="118">118�O�H�ӷ~�Ȧ�</option>
										<option value="119">119�H���@�H</option>
										<option value="120">120�H���H�X��</option>
										<option value="124">124�y���H�X��</option>
										<option value="127">127���H�X��</option>
										<option value="130">130�s�ˤ@�H</option>
										<option value="132">132�s�ˤT�H</option>
										<option value="146">146�x���G�H</option>
										<option value="147">147�T�H�ӷ~�Ȧ�</option>
										<option value="158">158���Ƥ@�H</option>
										<option value="161">161���Ƥ��H</option>
										<option value="162">162���Ƥ��H</option>
										<option value="163">163���ƤQ�H</option>
										<option value="165">165����H�X��</option>
										<option value="178">178�Ÿq�T�H</option>
										<option value="179">179�Ÿq�|�H</option>
										<option value="188">188�x�n�T�H</option>
										<option value="204">204�����T�H</option>
										<option value="215">215�Ὤ�@�H</option>
										<option value="216">216�Ὤ�G�H</option>
										<option value="222">222���@�H</option>
										<option value="223">223���G�H</option>
										<option value="224">224�����H�X��</option>
										<option value="512">512���L�Ϻ��|</option>
										<option value="515">515�Ÿq�Ϻ��|</option>
										<option value="517">517�n���Ϻ��|</option>
										<option value="518">518�n���Ϻ��|</option>
										<option value="520">520�p��Ϻ��|;�����Ϻ��|</option>
										<option value="521">521�����Ϻ��|;�æw�Ϻ��|;���F��Ϻ��|;�L��Ϻ��|</option>
										<option value="523">523�F�亮�|;�[�y�Ϻ��|;�L��Ϻ��|</option>
										<option value="524">524�s��Ϻ��|</option>
										<option value="525">525���Ϻ��|</option>
										<option value="605">605�������A�|</option>
										<option value="612">612�׭쥫�A�|;�����m�A�|</option>
										<option value="613">613�W���A�|</option>
										<option value="614">614���Ʀa�ϹA�|</option>
										<option value="616">616���L�a�ϹA�|</option>
										<option value="617">617�Ÿq�a�ϹA�|</option>
										<option value="618">618�x�n�a�ϹA�|</option>
										<option value="619">619�����a�ϹA�|</option>
										<option value="620">620�̪F�a�ϹA�|</option>
										<option value="621">621�Ὤ�a�ϹA�|</option>
										<option value="622">622�x�F�a�ϹA�|</option>
										<option value="624">624���A�|</option>
										<option value="625">625�x�����A�|</option>
										<option value="627">627�s�����A�|</option>
										<option value="700">700���ضl�F</option>
										<option value="803">803�p���ӷ~�Ȧ�</option>
										<option value="805">805���F�Ȧ�</option>
										<option value="806">806���j�Ȧ�</option>
										<option value="807">807���׻Ȧ�</option>
										<option value="808">808�ɤs�Ȧ�</option>
										<option value="809">809�U���Ȧ�</option>
										<option value="810">810�P�i�Ȧ�</option>
										<option value="812">812�x�s�Ȧ�</option>
										<option value="814">814�j���Ȧ�</option>
										<option value="815">815�鲱�Ȧ�</option>
										<option value="816">816�w���Ȧ�</option>
										<option value="822">822����H�U</option>
										<option value="901">901�j�����A�|</option>
										<option value="903">903����A�|</option>
										<option value="904">904�s���A�|</option>
										<option value="910">910�]�Ϊk�H�A���|�p�X��T����</option>
										<option value="912">912�V�s�A�|</option>
										<option value="916">916��ٹA�|</option>
										<option value="922">922�x�n���A�|</option>
										<option value="928">928�O���A�|</option>
										<option value="951">951�_�A����</option>
										<option value="954">954���n���a�ϹA���|</option>
									</select>

									<!-- 									<input class="au-input au-input--full" -->
									<!-- 										type="text" name="oBankCode" placeholder="�п�J�Ȧ�N��"> -->
								</div>
								<div class="form-group">
									<label>�Ȧ�b��</label><font color=red>${errorMsgs.oBankAcccount}</font>
									 <input class="au-input au-input--full"
										type="text" name="oBankAccount" placeholder="�п�J�Ȧ�b��"
										value="<%=(ownerUser == null) ? "" : ownerUser.getoBankAccount()%>">
								</div>
								<div class="form-group">

									<label>���U���</label> <input class="au-input au-input--full"
										type="date" name="oRegisterDate"
										value="<%=(ownerUser == null) ? "" : ownerUser.getoRegisterDate()%>">

								</div>
								<div class="form-group">
									<label for="file-input">�W�Ǥj�Y�K</label><font color=red>${errorMsgs.oProfilePic}</font>
									 <input type="file"
										name="oProfilePic" onclick="previewImage()"
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
										<input type="hidden" name="action" value="insert"> <input
											type="submit" class="btn btn-primary btn-sm" value="���U">
										<i class="fa fa-dot-circle-o"></i>
									</div>
								</div>
							</form>
							<div class="register-link">
								<p>
									�w�g���b���F��? <a href="${pageContext.request.contextPath }/login/oLogin/oUserLogin.jsp">�n�J</a>
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
	java.sql.Date oRegistDate = null;
	try {
		oRegistDate = java.sql.Date.valueOf(request.getParameter("oRegistDate").trim());
	} catch (Exception e) {
		oRegistDate = new java.sql.Date(System.currentTimeMillis());
	}
	%>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://unpkg.com/taiwan-bank@1.1.0/dist/taiwan-bank.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
		$("#myBank").taiwanBank();
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