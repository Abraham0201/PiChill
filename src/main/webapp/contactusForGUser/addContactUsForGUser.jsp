<%@page import="com.pichill.contactus.service.ContactUsServiceImpl"%>
<%@page import="com.pichill.contactus.service.ContactUsService"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pichill.contactus.entity.ContactUs"%>
<%@ page import="com.pichill.contactus.*"%>
<%@ page import="com.pichill.generaluser.entity.*"%>
<%@ page import="java.util.*"%>

<%
//��com.emp.controller.EmpServlet.java��238��s�Jreq��empVO���� (������J�榡�����~�ɪ�empVO����)
ContactUs contactUs = (ContactUs) request.getAttribute("contactUs");
GeneralUser generalUser = (GeneralUser) session.getAttribute("generalUser");
System.out.println("generalUser is " + generalUser);
Integer gUserID = generalUser.getgUserID();
System.out.println("gUser is " + gUserID);
ContactUsService contactUsSvc = new ContactUsServiceImpl();
List<ContactUs> list = contactUsSvc.getByUID(generalUser.getgUserID());
pageContext.setAttribute("list", list);
pageContext.setAttribute("gUserID", gUserID);
%>
<%-- --<%= empVO==null %>--${empVO.deptno}-- <!-- line 100 --> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>generalUser</title>
<!----------------�פJjquery ------------------------>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/generaluser/CSS/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/generaluser/css2/css.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/generaluser/css2/index3.css">

</head>
<body>
	<!----------------------------------------------- header �� ------------------------------------------------------->
	<header class="header">
		<div class="container">
			<header class="d-flex flex-wrap justify-content-center py-1">
				<a href="/"
					class="d-flex align-items-center mb-1 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
					<img
					src="<%=request.getContextPath()%>/generaluser/pic/headerlogo.svg"
					alt="SVG" />
				</a>


				<ul class="nav nav-pills">
					<li class="nav-item"><a href="main.html" class="nav-link">����</a></li>
					<li class="nav-item"><a href="#" class="nav-link">���i</a></li>
					<li class="nav-item"><a href="#" class="nav-link">���]��T</a></li>
					<li class="nav-item"><a href="#" class="nav-link">�ڭn�w��</a></li>
					<li class="nav-item"><a href="#" class="nav-link">�׾�</a></li>
					<li class="nav-item"><a href="#" class="nav-link"><img
							src="<%=request.getContextPath()%>/generaluser/DBGifReader?gUserID=${generalUser.gUserID}"
							alt="SVG" class="rounded-circle" /> �|������</a></li>
				</ul>


			</header>
		</div>
	</header>

	<!----------------------------------------------- aside �� ------------------------------------------------------->
	<div class="main_content">
		<aside class="aside">
			<div class="parent_container">
				<h2 class="h6 pt-4 pb-3 mb-4 border-bottom" id="ah6">�|������</h2>
				<nav class="small" id="toc">
					<ul class="list-unstyled">
						<li class="my-2"><a class="asidearea"
							href="<%=request.getContextPath()%>/generaluser/guserListOne.jsp">�|�����</a>
						</li>
						<li>&nbsp</li>
						<li class="my-2"><a class="asidearea" href="">�y�]�w������</a></li>
						<li>&nbsp</li>
						<li class="my-2"><a class="asidearea" href="">�p���ڭ�</a></li>
						<li>&nbsp</li>
						<li class="my-2"><a class="asidearea" href="">�p���ڭ̬���</a></li>
						<li>&nbsp</li>
						<li class="my-2">
							<form method="POST"
								action="<%=request.getContextPath()%>/logoutfg.do">
								<button class="asidearea">�n�X</button>
								<input type="hidden" name="action" value="logout">
							</form>
						</li>
					</ul>
				</nav>
			</div>
		</aside>

		<!----------------------------------------------- main �� ------------------------------------------------------->
		<main class="main">
			<br>
			<!--<br>
            <br> -->
			<h2 class="h6 pt-4 pb-3 mb-4 border-bottom" id="h2">CONTACT US</h2>
			<br>

			<form id="contactForm" enctype="multipart/form-data" method="post"
				action="<%=request.getContextPath()%>/contactUs.do" name="action">

				<div>
					<label for="formType" class="questiontype">���D���O : </label><br>
					<input type="radio" id="other" name="questionType" value="��L"
						checked required> <label for="other" class="question">�@����D</label>
				</div>
				<br>

				<div>
					<label for="subject" class="title">�D�� : </label> <input type="text"
						id="subject" name="subject" required>
				</div>
				<br>

				<div>
					<label for="imageUpload" class="imageUpload">�W�ǹϤ� : </label><br>
					<input type="file" id="imageUpload" name="imageUpload[]"
						accept="image/*" multiple>
				</div>

				<div id="imagePreviews"></div>

				<br> <br>

				<div>
					<label for="problemDescription" id="content">�Фj�P�ԭz���D���e : </label><br>
					<textarea id="problemDescription" name="problemDescription"
						rows="6" style="height: 300px; width: 500px" required></textarea>
				</div>

				<!-------- �e�X���s  ------->
				<input type="hidden" name="action" value="insert_gUser"> <input
					type="submit" name="action" value="�e�X"
					style="width: 150px; height: 44px; border: 0; background-color: #FF9F1B; color: #fff; border-radius: 8px; cursor: pointer; margin-top: 50px; margin-bottom: 130px;">
				<!-- <input type="button" value="�e�X" name="action" style="width: 150px; height: 44px;"> -->
			</form>

		</main>
	</div>



	<!----------------------------------------------- footer �� ------------------------------------------------------->
	<footer class="footer">

		<div class="container">
			<header class="d-flex flex-wrap justify-content-center py-3">
				<a href="/"
					class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
					<img
					src="<%=request.getContextPath()%>/generaluser/pic/footerlogo.svg"
					alt="SVG" />
				</a>

				<ul class="nav nav-pillss">
					<li class="nav-item"><a href="#" class="nav-link">�ϥΪ̱���</a></li>
					<li class="nav-item"><a href="#" class="nav-link"></a></li>
					<li class="nav-item"><a href="#" class="nav-link">���p�v�F��</a></li>
					<li class="nav-item"><a href="#" class="nav-link"></a></li>
					<li class="nav-item"><a href="#" class="nav-link">�K�d����</a></li>
					<li class="nav-item"><a href="#" class="nav-link"></a></li>
					<li class="nav-item"><a href="#" class="nav-link"></a></li>

				</ul>
			</header>
		</div>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		$(document)
				.ready(
						function() {
							// �w���W�Ǫ��Ϥ�
							$('#imageUpload')
									.on(
											'change',
											function(e) {
												$('#imagePreviews').empty();
												var files = e.target.files;
												for (var i = 0; i < files.length; i++) {
													var reader = new FileReader();
													reader.onload = function(
															event) {
														$('#imagePreviews')
																.append(
																		'<div class="image-preview"><img src="' + event.target.result + '"><button class="delete-image">�R��</button></div>');
													}
													reader
															.readAsDataURL(files[i]);
												}
											});

							// �R���Ϥ��w��
							$(document).on(
									'click',
									'.delete-image',
									function() {
										$(this).parent('.image-preview')
												.remove();
									});

							// ��洣��
							$('#contactForm').button(
									function(e) {
										e.preventDefault();
										// �b���B�B�z��洣�檺�{���X�A�z�i�H�ϥ� AJAX �Ψ�L�覡�i�����B�z
										// �Ҧp�A�z�i�H�ϥ� jQuery �� $.ajax() ��k�ӵo�e���ƾڨ���A��
										// ������ƾڡG$(this).serialize()
										// ����Ϥ��ƾڡG�ϥ� FormData

										// �ܽd�G
										var formData = new FormData(this);
										$.ajax({
											url : 'your_backend_endpoint', // ��אּ�z����ݺ��I
											type : 'POST',
											data : formData,
											processData : false,
											contentType : false,
											success : function(response) {
												console.log('���w���\����I���A���^���G',
														response);
												// �b���B�K�[���\����᪺�B�z�覡�A�Ҧp��ܦ��\�T���έ��m���
											},
											error : function(error) {
												console.error('��洣�楢�ѡI���~�T���G',
														error);
												// �b���B�K�[���Ѵ���᪺�B�z�覡�A�Ҧp��ܿ��~�T���δ��ѭ��s����
											}
										});
									});
						});
	</script>
</body>
</html>