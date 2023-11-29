<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pichill.manage.entity.Manage"%>

<%
//��com.emp.controller.EmpServlet.java��238��s�Jreq��empVO���� (������J�榡�����~�ɪ�empVO����)
Manage manage = (Manage) request.getAttribute("manage");
%>

<!DOCTYPE html>
<html lang="zh-Hant">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>�ק���u���</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-4.1/bootstrap.min.css" />
<style type="text/css"></style>
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
<link href="<%=request.getContextPath()%>/backEnd-Website/css/main.css"
	rel="stylesheet" media="all" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/backEnd-Website/css/set.css" />
<style>
/* ���~���ܮؼ˦� */
input:invalid, select:invalid {
	box-shadow: none;
}

select:invalid {
	color: red;
}

/* �۩w�q���D�˦� */
select:invalid+.custom-message {
	display: block;
	color: #207dca;
	font-weight: bold;
	margin-top: 5px;
}
</style>
</head>

<body class="animsition">
	<div class="page-wrapper">
		<!-- HEADER MOBILE-->
		<header class="header-mobile d-block d-lg-none">
			<div class="header-mobile__bar" style="background-color: #207dca">
				<div class="container-fluid">
					<div class="header-mobile-inner">
						<a class="logo" href="index.html"> <img
							src="./pic/pi_chill_text.png" alt="chill" style="height: 80px" />
						</a>
						<button class="hamburger hamburger--slider" type="button">
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
			</div>
			<nav class="navbar-mobile">
				<div class="container-fluid">
					<ul class="navbar-mobile__list list-unstyled">
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>���u�޲z
						</a>
							<ul class="list-styled navbar__sub-list js-sub-list">
								<li><a href="all_manage.html">�Ҧ����u���</a></li>
								<li><a href="#">�s�W���u���</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>�@��|���޲z
						</a>
							<ul class="list-styled navbar__sub-list js-sub-list">
								<li><a href="all_gUser.html">�Ҧ��|�����</a></li>
								<li><a href="new_gUser.html">�s�W�|�����</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>���~�|���޲z
						</a>
							<ul class="list-styled navbar__sub-list js-sub-list">
								<li><a href="all_oUser.html">�Ҧ��|�����</a></li>
								<li><a href="new_oUser.html">�s�W�|�����</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>�̷s�����޲z
						</a>
							<ul class="list-styled navbar__sub-list js-sub-list">
								<li><a href="form.html">���޲z</a></li>
								<li><a href="all_announce.html">���i�޲z</a></li>
								<li><a href="new_announce.html">�s�W���i</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>�׾º޲z
						</a>
							<ul class="list-styled navbar__sub-list js-sub-list">
								<li><a href="all_post.html">�Ҧ��峹</a></li>
								<li><a href="all_comment.html">�Ҧ��d��</a></li>
								<li><a href="report.html">���|�޲z</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>�y�]�޲z
						</a>
							<ul class="list-styled navbar__sub-list js-sub-list">
								<li><a href="all_court.html">�Ҧ��y�]</a></li>
								<li><a href="all_place.html">�Ҧ����a</a></li>
							</ul></li>
						<li class="has-sub"><a href="order.html"> <i
								class="fas fa-tachometer-alt"></i>�w���޲z
						</a></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>�ӫ��޲z
						</a>
							<ul class="list-styled navbar__sub-list js-sub-list">
								<li><a href="product.html">�ӫ~�޲z</a></li>
								<li><a href="new_product.html">�s�W�ӫ~</a></li>
								<li><a href="product_order.html">�q��޲z</a></li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- END HEADER MOBILE-->

		<!-- MENU SIDEBAR-->
		<aside class="menu-sidebar d-none d-lg-block">
			<!-- <div class="logo">
                <a href="#">
                    <img class="logo_l" src="./pic/pi_chill_text.png"/>
                </a>
            </div> -->
			<div class="menu-sidebar__content js-scrollbar1">
				<nav class="navbar-sidebar">
					<ul class="list-unstyled navbar__list">
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>���u�޲z
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="all_manage.jsp">�Ҧ����u���</a></li>
								<li><a href="new_manage.jsp">�s�W���u���</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>�@��|���޲z
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="all_gUser.html">�Ҧ��|�����</a></li>
								<li><a href="new_gUser.html">�s�W�|�����</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>���~�|���޲z
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="all_oUser.html">�Ҧ��|�����</a></li>
								<li><a href="new_oUser.html">�s�W�|�����</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>�̷s�����޲z
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="form.html">���޲z</a></li>
								<li><a href="all_announce.html">���i�޲z</a></li>
								<li><a href="new_announce.html">�s�W���i</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>�׾º޲z
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="all_post.html">�Ҧ��峹</a></li>
								<li><a href="all_comment.html">�Ҧ��d��</a></li>
								<li><a href="report.html">���|�޲z</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>�y�]�޲z
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="all_court.html">�Ҧ��y�]</a></li>
								<li><a href="all_place.html">�Ҧ����a</a></li>
							</ul></li>
						<li class="has-sub"><a href="order.html"> <i
								class="fas fa-tachometer-alt"></i>�w���޲z
						</a></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>�ӫ��޲z
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="product.html">�ӫ~�޲z</a></li>
								<li><a href="new_product.html">�s�W�ӫ~</a></li>
								<li><a href="product_order.html">�q��޲z</a></li>
							</ul></li>
					</ul>
				</nav>
			</div>
		</aside>
		<!-- END MENU SIDEBAR-->

		<!-- PAGE CONTAINER-->
		<div class="page-container">
			<!-- HEADER DESKTOP-->
			<header class="header-desktop">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="header-wrap">
							<div class="header-logo">
								<a href="index.html"><img class="img-logo" href="index.html"
									src="<%=request.getContextPath()%>/image/bigLogo.png" alt="" /></a>
							</div>
							<form class="form-header" action="#" method="POST">
								<input class="au-input au-input--xl" type="text" name="search"
									placeholder="�j�M" />
								<button class="au-btn--submit" type="submit">
									<i class="zmdi zmdi-search" style="font-size: 15px">�e�X</i>
								</button>
							</form>
							<div class="header-button">
								<div class="account-wrap">
									<div class="account-item clearfix js-item-menu">
										<div class="image">
											<img src="<%=request.getContextPath()%>/image/Group 115.png"
												alt="�ϥΪ��Y��" />
										</div>
										<div class="content">
											<a class="js-acc-btn" href="#">�޲z��ù���P�A�z�n</a>
										</div>
										<div class="account-dropdown js-dropdown">
											<div class="info clearfix">
												<div class="image">
													<a href="#"> <img
														src="<%=request.getContextPath()%>/image/Group 115.png"
														alt="John Doe" />
													</a>
												</div>
												<div class="content">
													<h5 class="name">
														<a href="my_data.html">ù���P</a>
													</h5>
													<span class="email">brandon416jr@gmail.com</span>
												</div>
											</div>
											<div class="account-dropdown__footer">
												<a href="#"> <i class="zmdi zmdi-power"></i>�n�X
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<!-- END HEADER DESKTOP-->
		</div>

		<div class="main-content">
			<div class="section__content2 section__content--p30">
				<div class="container-fluid2">
					<div class="card">
						<div class="card-header">
							<strong>�ק� ${manage.mName} ���u���</strong>
							<h4>
								<a href="all_manage.jsp"><img src="../image/smallLogo.png"
									width="20" height="20" border="0">�^�Ҧ����u</a>
							</h4>
						</div>

						<%-- ���~��C --%>
						<c:if test="${not empty errorMsgs}">
							<font style="color: red">�Эץ��H�U���~:</font>
							<ul style="list-style-type: none">
								<c:forEach var="message" items="${errorMsgs}">
									<li style="color: red">${message}</li>
								</c:forEach>
							</ul>
						</c:if>

						<form action="<%=request.getContextPath()%>/manage/manage.do" method="post" enctype="multipart/form-data">
							<div class="card-body">
								<div class="row">
									<div class="col-lg-6">
										<div class="left-card-body card-block">
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">���u�s��</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" name="manageID"
														value="<%=manage.getManageID()%>" disabled="disabled"
														class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">���u�m�W</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" name="mName"
														value="<%=(manage == null) ? "�����W" : manage.getmName()%>"
														class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">�b��</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" name="mUserName"
														placeholder="�п�J�b��"
														value="<%=(manage == null) ? "Chen5252" : manage.getmUserName()%>"
														class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">�K�X</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" name="mPassword"
														value="<%=(manage == null) ? "52552252" : manage.getmPassword()%>"
														placeholder="�п�J�K�X" class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="disabled-input" class="form-control-label">�ͤ�</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="date" id="disabled-input" name="mBirth"
														value="<%=(manage == null) ? "1982-06-01" : manage.getmBirth()%>"
														placeholder="�п�J�ͤ�" class="form-control" />
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label class="form-control-label">�ʧO</label>
												</div>
												<div class="col col-md-8">
													<div class="form-check">
														<div class="radio">
															<select name="mGender">
																<option value="0">�k</option>
																<option value="1">�k</option>
															</select>
														</div>
													</div>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">���</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" name="mTelephone"
														value="<%=(manage == null) ? "0918324387" : manage.getmTelephone()%>"
														placeholder="�п�J������X" class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">���s���H</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" name="mEmgContact"
														value="<%=(manage == null) ? "���s��" : manage.getmEmgContact()%>"
														placeholder="�п�J�m�W" class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">���s���H���</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" name="mEmgPhone"
														value="<%=(manage == null) ? "0914562187" : manage.getmEmgPhone()%>"
														placeholder="�п�J������X" class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
										</div>
									</div>

									<div class="col-lg-6">
										<div class="right-card-body card-block">
											
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">�p���a�}</label>
												</div>
												<div class="col-10 col-md-8">
													<select id="city" name="city" required>
														<option value="">�п�ܿ���</option>
													</select> <span class="custom-message">*�п�ܿ���</span> <select
														id="area" name="area" required>
														<option value="">�п�ܶm����</option>
													</select> <span class="custom-message">*�п�ܶm����</span>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label"></label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" name="mAddress"
														value="<%=(manage == null) ? "���e���587��22��" : manage.getmAddress()%>"
														placeholder="�п�J�p���a�}" class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<!-- 										<div class="row form-group"> -->
											<!-- 											<div class="col col-md-3"> -->
											<!-- 												<label for="disabled-input" class="form-control-label">�J¾���</label> -->
											<!-- 											</div> -->
											<!-- 											<div class="col-10 col-md-8"> -->
											<!-- 												<input type="date" id="disabled-input" name="mHiredate" -->
											<%-- 													value="<%=(manage == null) ? "2022-01-01" : manage.getmHiredate()%>" --%>
											<!-- 													placeholder="�п�J�ͤ�" class="form-control" /> -->
											<!-- 											</div> -->
											<!-- 										</div> -->
											<!-- 										<div class="row form-group"> -->
											<!-- 											<div class="col col-md-3"> -->
											<!-- 												<label for="disabled-input" class="form-control-label">�̫�W�u�ɶ�</label> -->
											<!-- 											</div> -->
											<!-- 											<div class="col-10 col-md-8"> -->
											<!-- 												<input type="text" id="disabled-input" name="mLastLogTime" -->
											<!-- 													placeholder="�̫�W�u�ɶ�" -->
											<%-- 													value="<%=(manage == null) ? "1911-01-01 00:00:00" : manage.getmLastLogTime()%>" --%>
											<!-- 													class="form-control" /> -->
											<!-- 											</div> -->
											<!-- 										</div> -->
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="disabled-input" class="form-control-label">�����Ҧr��</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="disabled-input" name="mID"
														placeholder="�п�J�����Ҧr��"
														value="<%=(manage == null) ? "A123456678" : manage.getmID()%>"
														class="form-control" />
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">�q�l�H�c</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" name="mEmail"
														value="<%=(manage == null) ? "brandon416jr@gmail.com" : manage.getmEmail()%>"
														placeholder="�п�J�q�l�H�c" class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="file-input" class="form-control-label">�W�Ǥj�Y�K</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="file" id="file-input" name="mProfilePic"
														multiple="multiple" onclick="previewImage()"
														class="form-control-file" /> <img id="imagePreview"
														src="#" alt="Preview" width="100px" />
<!-- 													<div id="blob_holder"> -->
<!-- 														<img -->
<%-- 															src="<%=request.getContextPath()%>/manage/DBGifReader?manageID=${param.manageID}" --%>
<!-- 															width="100px"> -->
<!-- 													</div> -->
												</div>
											</div>
<!-- 										</div> -->
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="selectLg" class="form-control-label">���A</label>
											</div>
											<div class="col-10 col-md-8">
												<select name="mStatus" id="selectLm"
													class="form-control-sm form-control">
													<!-- 													<option value="0">�п��</option> -->
													<option value="0">�w��¾</option>
													<option value="1">�b¾��</option>
												</select>
											</div>
										</div>

									</div>
									<div class="row form-group">
										<div class="col-12 col-md-8">
											<input type="hidden" name="action" value="update"> <input
												type="hidden" name="manageID"
												value="<%=manage.getManageID()%>"> <input
												type="submit" class="btn btn-primary btn-sm" value="�e�X�ק�">
											<i class="fa fa-dot-circle-o"></i>
										</div>
									</div>
								</div>
							</div>
					</div>

					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/js/pic_uplaod.js"></script>
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
