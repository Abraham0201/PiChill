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
<title>�d�ݷ|����� (�@��)</title>
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
<style></style>
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
								<li><a href="new_manage.html">�s�W���u���</a></li>
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
								<li><a href="all_manage.html">�Ҧ����u���</a></li>
								<li><a href="new_manage.html">�s�W���u���</a></li>
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
							<ul class="list-styled navbar__sub-list js-sub-list">
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
									src="<%=request.getContextPath()%>/image/Group 115.png" alt="" /></a>
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
							<strong>�ק� ${generalUser.gName}���u���</strong>
							<h4>
								<a
									href="<%=request.getContextPath()%>/backstage/generalUserBack/all_gUser.jsp"><img
									src="<%=request.getContextPath()%>/image/smallLogo.png"
									width="20" height="20" border="0">�^�Ҧ��@��|��</a>
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
						<form action="" method="post" enctype="multipart/form-data"
							class="form-horizontal">
							<div class="card-body">
								<div class="row">
									<div class="col-lg-6">
										<div class="left-card-body card-block">

											<div class="row form-group">
												<div class="col col-md-3">
													<label for="disabled-input" class="form-control-label">�@��|���s��</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="disabled-input" name="gUserID"
														value="<%=generalUser.getgUserID()%>" disabled="disabled"
														class="form-control" />
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">�m�W</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" name="gName"
														value="<%=generalUser.getgName()%>" disabled="disabled"
														class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">�s���q��</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" name="gTelephone"
														value="<%=generalUser.getgTelephone()%>"
														disabled="disabled" class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">�q�l�H�c</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" name="gEmail"
														value="<%=generalUser.getgEmail()%>" disabled="disabled"
														class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="selectLg" class="form-control-label">�b�����A</label>
												</div>
												<div class="col-10 col-md-8">
													<%
													int status = generalUser.getStatus();
													%>
													<select name="status" id="selectLm"
														class="form-control-sm form-control">

														<option value="0" <%=status == 0 ? "selected" : ""%>>���`</option>
														<option value="1" <%=status == 1 ? "selected" : ""%>>�Q�ת����v</option>
													</select>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label class="form-control-label">�ʧO</label>
												</div>
												<div class="col col-md-8">
													<div class="form-check">
														<div class="radio">
															<%
															int gender = generalUser.getgGender();
															%>
															<select name="gGender" disabled="disabled">
																<option value="0" <%=gender == 0 ? "selected" : ""%>>�k</option>
																<option value="1" <%=gender == 1 ? "selected" : ""%>>�k</option>
															</select>
														</div>
													</div>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">�b��</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" name="gUsername"
														value="<%=generalUser.getgUsername()%>" disabled="disabled"
														class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>


											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">�K�X</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" name="gPassword" disabled="disabled"
														 value="<%=generalUser.getgPassword()%>" class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">�����Ҧr��</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" name="gIDNum"
														disabled="disabled"  value="<%=generalUser.getgIDNum()%>" class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">�ʺ�ID</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" name="nicknameID" disabled="disabled"
														 value="<%=generalUser.getNicknameID()%>" class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="right-card-body card-block">

											
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">�K���</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" disabled="disabled"
														name="gPostAmount"  value="<%=generalUser.getgPostAmount()%>" class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">�d����</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" disabled="disabled"
														name="commentAmount"  value="<%=generalUser.getCommentAmount()%>" class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">�Q���|��</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" disabled="disabled"
														name="gReportCnt"  value="<%=generalUser.getgReportCnt()%>" class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">���U���</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" disabled="disabled"
														name="gRegistDate"  value="<%=generalUser.getgRegistDate()%>"
														class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">�ͤ�</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" disabled="disabled"
														name="gBirth"  value="<%=generalUser.getgBirth()%>"
														class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class="form-control-label">�w������</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="text" id="text-input" disabled="disabled"
														name="yoyakuCnt" value="<%=generalUser.getYoyakuCnt()%>" class="form-control" />
													<!-- <small class="form-text text-muted">This is a help text</small> -->
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="file-input" class="form-control-label">�W�Ǥj�Y�K</label>
												</div>
												<div class="col-10 col-md-8">
													<input type="file" id="file-input" name="gProfilePic"
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
											<div class="row form-group">
												<div class="col-12 col-md-8">
													<input type="hidden" name="action" value="update">
													<input type="hidden" name="gUserID"
														value="<%=generalUser.getgUserID()%>"> <input
														type="submit" class="btn btn-primary btn-sm" value="�e�X�ק�">
													<i class="fa fa-dot-circle-o"></i>
												</div>
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