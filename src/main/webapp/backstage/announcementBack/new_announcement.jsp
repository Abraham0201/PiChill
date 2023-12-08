<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pichill.backstage.announcement.entity.Announcement"%>

<%
//��com.emp.controller.EmpServlet.java��238��s�Jreq��empVO���� (������J�榡�����~�ɪ�empVO����)
Announcement announcement = (Announcement) request.getAttribute("announcement");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>�s�W���i</title>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-4.1/bootstrap.min.css" />
  <style type="text/css"></style>
  <!-- Vendor CSS-->
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/animsition/animsition.min.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/wow/animate.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/slick/slick.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/select2/select2.min.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all" />
  <!-- Main CSS-->
  <link href="<%=request.getContextPath()%>/backEnd-Website/css/main.css" rel="stylesheet" media="all" />
  <link rel="stylesheet" href="<%=request.getContextPath()%>/backEnd-Website/css/set.css" media="all" />
  <link rel="stylesheet" href="<%=request.getContextPath()%>/backEnd-Website/css/set_form.css" media="all" />
  <style></style>
</head>
<body class="animsition">
  <!-- MENU SIDEBAR-->
	<div class="sidebar">
		<aside class="menu-sidebar d-none d-lg-block">
			<div class="menu-sidebar__content js-scrollbar1">
				<nav class="navbar-sidebar">
					<ul class="list-unstyled navbar__list expanded">
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>���u�޲z
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a class="active" href="<%=request.getContextPath()%>/backstage/manage/all_manage.jsp">�Ҧ����u���</a></li>
								<li><a
									href="<%=request.getContextPath()%>/backstage/manage/new_manage.jsp">�s�W���u���</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>�@��|���޲z
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a
									href="<%=request.getContextPath()%>/backstage/generalUserBack/all_gUser.jsp">�Ҧ��|�����</a></li>
								<li><a
									href="<%=request.getContextPath()%>/backstage/generalUserBack/new_gUser.jsp">�s�W�|�����</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>���~�|���޲z
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a
									href="<%=request.getContextPath()%>/backstage/ownerUserBack/all_oUser.jsp">�Ҧ��|�����</a></li>
								<li><a
									href="<%=request.getContextPath()%>/backstage/ownerUserBack/new_oUser.jsp">�s�W�|�����</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>�̷s�����޲z
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a
									href="<%=request.getContextPath()%>/backstage/contactUsBack/form.jsp">����޲z</a></li>
								<li><a
									href="<%=request.getContextPath()%>/backstage/announcementBack/all_announce.jsp">���i�޲z</a></li>
								<li><a
									href="#">�s�W���i</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>�׾º޲z
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a
									href="<%=request.getContextPath()%>/backstage/postBack/all_post.jsp">�Ҧ��峹</a></li>
								<li><a
									href="<%=request.getContextPath()%>/backstage/postBack/all_comment.jsp">�Ҧ��d��</a></li>
								<li><a
									href="<%=request.getContextPath()%>/backstage/postBack/report.jsp">���|�޲z</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>�y�]�޲z
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a
									href="<%=request.getContextPath()%>/backstage/courtBack/all_court.jsp">�Ҧ��y�]</a></li>
								<li><a
									href="<%=request.getContextPath()%>/backstage/courtBack/all_place.jsp">�Ҧ����a</a></li>
							</ul></li>
						<li class="has-sub"><a
							href="<%=request.getContextPath()%>/backstage/reserveOrderBack/all_reserveOrder.jsp">
								<i class="fas fa-tachometer-alt"></i>�w���޲z
						</a></li>
					</ul>
				</nav>
			</div>
		</aside>
		<!-- END MENU SIDEBAR-->
	</div>

	<!-- PAGE CONTAINER-->
	<div class="page-container">
		<!-- HEADER DESKTOP-->
		<header class="header-desktop">
			<div class="section__content section__content--p30">
				<div class="container-fluid">
					<div class="header-wrap">
						<div class="header-logo">
							<a href="<%=request.getContextPath()%>/backstage/index.jsp"><img
								class="img-logo"
								src="<%=request.getContextPath()%>/image/bigLogo.png" alt="" /></a>
<!-- 							<a href="index.html"><img class="img-logo"  -->
<%-- 								src="<%=request.getContextPath()%>/image/bigLogo.png" alt="" /></a> --%>
						</div>
						<div class="header-button">
							<div class="account-wrap">
								<div class="account-item clearfix js-item-menu">
									<div class="image">
<!-- 										<img -->
<%-- 											src="<%=request.getContextPath()%>/manage/DBGifReader?manageID=<%=manage.getManageID()%>" --%>
<!-- 											alt="�ϥΪ��Y��" />  -->
											<img
											src="<%=request.getContextPath()%>/image/Group 115.png"
											alt="�ϥΪ��Y��" />
									</div>
									<div class="content">
										<a class="js-acc-btn" href="#">�޲z��ù���P�A�z�n</a>
<%-- 										<a class="js-acc-btn" href="#">�޲z��<%=manage.getmName() %>�A�z�n</a> --%>
									</div>
									<div class="account-dropdown js-dropdown">
										<div class="info clearfix">
											<div class="image">
												<a href="#"> 
<!-- 												<img -->
<%-- 											src="<%=request.getContextPath()%>/manage/DBGifReader?manageID=<%=manage.getManageID()%>" --%>
<!-- 											alt="�ϥΪ��Y��" />  -->
												<img
													src="<%=request.getContextPath()%>/image/Group 115.png"
													alt="John Doe" />
												</a>
											</div>
											<div class="content">
												<h5 class="name">
													<a href="#">ù���P</a>
<%-- 													<a href="<%=request.getContextPath()%>/manage/manage.do?action=getOne_For_Update&manageID=<%=manage.getManageID()%>"><%=manage.getmName() %></a> --%>
												</h5>
												<span class="email">brandon416jr@gmail.com</span>
<%-- 												<span class="email"><%=manage.getmEmail() %></span> --%>
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
              <strong>�s�W���i</strong>
              <h4>
								<a
									href="<%=request.getContextPath()%>/backstage/announcementBack/all_announcement.jsp"><img
									src="<%=request.getContextPath()%>/image/smallLogo.png" width="20" height="20" border="0">�^�Ҧ����i</a>
							</h4>
            </div>
            
            <div class="error">
							<%-- ���~���C --%>
							<c:if test="${not empty errorMsgs}">
								<font style="color: red">�Эץ��H�U���~:</font>
								<ul style="list-style-type: none">
									<c:forEach var="message" items="${errorMsgs}">
										<li style="color: red">${message}</li>
									</c:forEach>
								</ul>
							</c:if>
						</div>
            <form action="announcementb.do" method="post" enctype="multipart/form-data" class="form-horizontal">
            <div class="card-body">
              <div class="row">
                <div class="col-lg-12">
                  <div class="card-body card-block">
                      <div class="row form-group">
                        <div class="col col-md-3">
                          <label for="text-input" class="form-control-label">�޲z���s��</label>
                        </div>
                        <div class="col-10 col-md-8">
                          <input type="text" id="text-input" name="manageID" placeholder="�п�J�޲z���s��"
                          value="<%=announcement.getManageID()%>"
                            class="form-control" />
                          <!-- <small class="form-text text-muted">This is a help text</small> -->
                        </div>
                      </div>
                      <div class="row form-group">
                        <div class="col col-md-3">
                          <label for="text-input" class="form-control-label">����s��</label>
                        </div>
                        <div class="col-10 col-md-8">
                          <input type="text" id="text-input" name="formID" placeholder="�п�J����s��" value="<%=announcement.getFormID()%>"
                            class="form-control" />
                          <!-- <small class="form-text text-muted">This is a help text</small> -->
                        </div>
                      </div>
                      <div class="row form-group">
                        <div class="col col-md-3">
                          <label for="text-input" class="form-control-label">���D</label>
                        </div>
                        <div class="col-10 col-md-8">
                          <input type="text" id="text-input" name="annoTitle" placeholder="�п�J���D" value="<%=announcement.getAnnoTitle()%>"
                            class="form-control" />
                          <!-- <small class="form-text text-muted">This is a help text</small> -->
                        </div>
                      </div>
                      <div class="row form-group">
                        <div class="col col-md-3">
                          <label for="text-input" class="form-control-label">����</label>
                        </div>
                        <div class="textbox col-10 col-md-8">
                          <textarea name="textarea-input" id="annoContent" rows="9" placeholder="�п�J����" 
                            class="form-control"><%=announcement.getAnnoContent()%>"</textarea>
                          <!-- <input type="text" id="text-input" disabled="" name="text-input" placeholder="rfrfrfr" class="form-control"> -->
                          <!-- <small class="form-text text-muted">This is a help text</small> -->
                        </div>
                      </div>
                      <div class="row form-group">
                        <div class="col col-md-3">
                          <label for="file-input" class="form-control-label">�Ϥ�</label>
                        </div>
                        <div class="col-10 col-md-8">
                          <input type="file" id="file-input" name="annoPic"
														onclick="previewImage()" multiple="multiple"
														onchange="hideContent('upFiles.errors');"
														class="form-control-file" /> <img id="imagePreview"
														src="#" alt="Preview" />
                        </div>
                      </div>
                      <div class="row form-group">
                        <div class="col col-md-3">
                          <label for="text-input" class="form-control-label">�ɶ�</label>
                        </div>
                        <div class="col-10 col-md-8">
                          <input type="text" id="text-input" name="annoTime" placeholder="�ɶ�" value="<%=announcement.getAnnoTime()%>" class="form-control" />
                          <!-- <small class="form-text text-muted">This is a help text</small> -->
                        </div>
                      </div>
                      <div class="row form-group">
                        <div class="col col-md-3">
                          <label for="selectLg" class="form-control-label">���i���A</label>
                        </div>
                        <div class="col-10 col-md-8">
                          <select name="annoStatus" id="selectLm" class="form-control-sm form-control">
                            <option value="0">�����i</option>
                            <option value="1">�w���i</option>
                          </select>
                        </div>
                      </div>
                    <div class="row form-group">
											<div class="col-1 col-md-8">
												<input type="hidden" name="action" value="insert"> <input
													type="submit" class="btn btn-primary btn-sm" value="�e�X�s�W">
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

  <!-- <script>
      const textbox = document.querySelector('.textbox .form-control');
        textbox.addEventListener('input', (e) => {
        e.target.style.height = 'auto';
        e.target.style.height = e.target.scrollHeight + 'px';
      });
    </script> -->
  <script src="<%=request.getContextPath()%>/backEnd-Website/js/pic_uplaod.js"></script>
  <!-- Jquery JS-->
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/jquery-3.2.1.min.js"></script>
  <!-- proper.min.js first, then bootstrap.min.js -->
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-4.1/popper.min.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-4.1/bootstrap.min.js"></script>
  <!-- Vendor JS       -->
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/slick/slick.min.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/wow/wow.min.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/animsition/animsition.min.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/counter-up/jquery.waypoints.min.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/counter-up/jquery.counterup.min.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/circle-progress/circle-progress.min.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/chartjs/Chart.bundle.min.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/select2/select2.min.js"></script>
  <!-- Main JS-->
  <script src="<%=request.getContextPath()%>/backEnd-Website/js/main.js"></script>
</body>
</html>