<%@ page contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="com.pichill.reserveorder.entity.ReserveOrder"%>
<%@ page import="com.pichill.reserveorder.model.*"%>
<%@ page import="com.pichill.reserveorder.service.ReserveOrderService"%>
<%@ page import="com.pichill.generaluser.entity.*"%>
<%@ page import="com.pichill.generaluser.model.*"%>
<%@ page import="com.pichill.generaluser.service.*"%>
<%@ page import="com.pichill.owneruser.entity.*"%>
<%@ page import="com.pichill.time.*"%>
<%@ page import="com.pichill.place.*"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>

<%--<%
ReserveOrder reserveOrder = (ReserveOrder) request.getAttribute("reserveOrder");

 %>--%>
<%--<%
GeneralUser generalUser = (GeneralUser) request.getAttribute("generalUser");

 %>--%>
<%
 Integer gUserID = 11000009;
 ReserveOrderService reserveOrderService = new ReserveOrderService();
 List<ReserveOrder> list = reserveOrderService.getgUserID(gUserID);
 pageContext.setAttribute("list",list);
 pageContext.setAttribute("gUserID",gUserID);

%>

<%-- <%
//  Integer reserveOrderID = 63000001;
//  ReserveOrderService reserveOrderSvc = new ReserveOrderService();
//  ReserveOrder reserveOrder = reserveOrderSvc.getOneReserveOrder(reserveOrderID);
//  pageContext.setAttribute("reserveOrder",reserveOrder);
 %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>listOneOrder</title>
<!-- JQuery �s�� -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Datatable �s�� -->
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.css" />
<script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/generaluser/CSS/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/generaluser/css2/css.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/generaluser/css2/guser.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/generaluser/css2/allOrder.css">
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
					<li class="nav-item"><a
						href="<%=request.getContextPath()%>/generaluser/main.jsp"
						class="nav-link">����</a></li>
					<li class="nav-item"><a href="#" class="nav-link">���i</a></li>
					<li class="nav-item"><a href="#" class="nav-link">���]��T</a></li>
					<li class="nav-item"><a
						href="<%=request.getContextPath()%>/reserveorder/reserveOrder.jsp"
						class="nav-link">�ڭn�w��</a></li>
					<li class="nav-item"><a href="#" class="nav-link">�׾�</a></li>
					<li class="nav-item"><a
						href="<%=request.getContextPath()%>/generaluser/guserListOne.jsp"
						class="nav-link"><img
<%-- 							src="<%=request.getContextPath()%>/generaluser/DBGifReader?gUserID=${generalUser.gUserID}" --%>
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
						<li>&nbsp;</li>
						<li class="my-2"><a class="asidearea"
							href="<%=request.getContextPath()%>/reserveorder/listOneOrder.jsp">�y�]�w������</a>
						</li>
						<li>&nbsp;</li>
						<li class="my-2"><a class="asidearea" href="">�p���ڭ�</a></li>
						<li>&nbsp;</li>
						<li class="my-2"><a class="asidearea" href="">�n�X</a></li>
					</ul>
				</nav>
			</div>
		</aside>
		<!----------------------------------------------- main �� ------------------------------------------------------->
		<main class="main">
			<h2 class="h6 pt-4 pb-3 mb-4 border-bottom">�y�]�w������</h2>
			
			<c:if test="${not empty errorMsgs}">
				<font style="color:red">�Эץ��H�U���~:</font>
				<ul>
					<c:forEach var="message" items="${errorMsgs}">
						<li style="color:red">${message}</li>
					</c:forEach>
				</ul>
			</c:if>

			<!-- 			<form class="bararea" enctype="multipart/form-data"> -->
			<!-- 				<label for="reserveDate">�w�����:</label> <input type="date" -->
			<!-- 					id="reserveDate" name="reserveDate"><br> <br> <label -->
			<!-- 					for="reserveOrderID">�w���q��s��:</label> <input type="text" -->
			<!-- 					id="reserveOrderID" name="reserveOrderID"> -->
			<!-- 			</form> -->
			<!-- 			<div></div> -->
			<!-- 			<div></div> -->
			<!-- 			<div></div> -->
			<div class="container" id="datatable">
				<table id="table_id"
					class="display hover cell-border stripe responsive nowrap">
					<thead>
						<!-- ���W�� -->
						<tr>
							<th>�w���q��s��</th>
							<th>�|���s��</th>
							<th hidden>���~�|���s��</th>
							<th>�m�W</th>
							<th>�y��</th>
							<th>�a��</th>
							<th>�y�]</th>
							<th>���a</th>
							<th>�w�����</th>
							<th>�w���ɬq</th>
							<th>�U��ɶ�</th>
							<th>�H��</th>
							<th >�`���B</th>
							<th>�q�檬�A</th>
							<th id="th">����</th>
						</tr>
					</thead>

					<tbody>
					<c:forEach var="reserveOrder" items="${list}" >
						<!-- ��Ƥ��e -->
						<tr>
							<td>${reserveOrder.reserveOrderID}</td>
							<td>${reserveOrder.generalUser.gUserID}</td>
							<td hidden>${reserveOrder.ownerUser.oUserID}</td>
							<td>${reserveOrder.generalUser.gName}</td>
							<td>${reserveOrder.place.ball == 0 ? "�x�y" : reserveOrder.place.ball == 1 ? "�Ʋy" : "�вy"}</td>
							<td>${reserveOrder.court.loc}</td>
							<td>${reserveOrder.court.courtName}</td>
							<td>${reserveOrder.place.placeName}</td>
							<td>${reserveOrder.reserveDate}</td>
							<td>${reserveOrder.timeRef.reserveTime}</td>
							<td>${reserveOrder.orderTime}</td>
							<td>${reserveOrder.orderNum}</td>
							<td>${reserveOrder.totalCost}</td>
							<td>${reserveOrder.orderStatus == 1 ? "�q�榨��" : reserveOrder.orderStatus == 2 ? "�q�槹��" : "�q��w����"}</td>
							<td>
								<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/reserveorder/reserveorder.do" enctype="multipart/form-data">
									<input type="hidden" name="action" value="getOne_For_Update">
									<input type="hidden" name="reserveOrderID" value="${reserveOrder.reserveOrderID}">
									<input type="submit" id="cancel" value="����" >
								</FORM>
							</td>
						</tr>
						</c:forEach>
					</tbody>

				</table>
				</div>
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
	<script>
		$(document)
				.ready(
						function() {
							$('#table_id')
									.DataTable(
											{
												"language" : {
													"processing" : "�B�z��...",
													"loadingRecords" : "���J��...",
													"paginate" : {
														"first" : "�Ĥ@��",
														"previous" : "�W�@��",
														"next" : "�U�@��",
														"last" : "�̫�@��"
													},
													"emptyTable" : "�ثe�S�����",
													"datetime" : {
														"previous" : "�W�@��",
														"next" : "�U�@��",
														"hours" : "��",
														"minutes" : "��",
														"seconds" : "��",
														"amPm" : [ "�W��", "�U��" ],
														"unknown" : "����",
														"weekdays" : [ "�g��",
																"�g�@", "�g�G",
																"�g�T", "�g�|",
																"�g��", "�g��" ],
														"months" : [ "�@��",
																"�G��", "�T��",
																"�|��", "����",
																"����", "�C��",
																"�K��", "�E��",
																"�Q��", "�Q�@��",
																"�Q�G��" ]
													},
													"searchBuilder" : {
														"add" : "�s�W����",
														"condition" : "����",
														"deleteTitle" : "�R���L�o����",
														"button" : {
															"_" : "�ƦX�d�� (%d)",
															"0" : "�ƦX�d��"
														},
														"clearAll" : "�M��",
														"conditions" : {
															"array" : {
																"contains" : "�t��",
																"equals" : "����",
																"empty" : "�ŭ�",
																"not" : "������",
																"notEmpty" : "�D�ŭ�",
																"without" : "���t"
															},
															"date" : {
																"after" : "�j��",
																"before" : "�p��",
																"between" : "�b�䤤",
																"empty" : "����",
																"equals" : "����",
																"not" : "����",
																"notBetween" : "���b�䤤",
																"notEmpty" : "������"
															},
															"number" : {
																"between" : "�b�䤤",
																"empty" : "����",
																"equals" : "����",
																"gt" : "�j��",
																"gte" : "�j�󵥩�",
																"lt" : "�p��",
																"lte" : "�p�󵥩�",
																"not" : "����",
																"notBetween" : "���b�䤤",
																"notEmpty" : "������"
															},
															"string" : {
																"contains" : "�t��",
																"empty" : "����",
																"endsWith" : "�r����",
																"equals" : "����",
																"not" : "����",
																"notEmpty" : "������",
																"startsWith" : "�r����",
																"notContains" : "���t",
																"notStartsWith" : "�}�Y���O",
																"notEndsWith" : "�������O"
															}
														},
														"data" : "���",
														"leftTitle" : "�s�ձ���",
														"logicAnd" : "�B",
														"logicOr" : "��",
														"rightTitle" : "�����s��",
														"title" : {
															"_" : "�ƦX�d�� (%d)",
															"0" : "�ƦX�d��"
														},
														"value" : "���e"
													},
													"editor" : {
														"close" : "����",
														"create" : {
															"button" : "�s�W",
															"title" : "�s�W���",
															"submit" : "�e�X�s�W"
														},
														"remove" : {
															"button" : "�R��",
															"title" : "�R�����",
															"submit" : "�e�X�R��",
															"confirm" : {
																"_" : "�z�T�w�n�R���z�ҿ���� %d ����ƶܡH",
																"1" : "�z�T�w�n�R���z�ҿ���� 1 ����ƶܡH"
															}
														},
														"error" : {
															"system" : "�t�εo�Ϳ��~(��h��T)"
														},
														"edit" : {
															"button" : "�ק�",
															"title" : "�ק���",
															"submit" : "�e�X�ק�"
														},
														"multi" : {
															"title" : "�h����",
															"info" : "�z�ҿ�ܪ��h����Ƥ��A�����]�t�F���P���ȡC�Y�z�Q�n�N���̳��אּ�P�@�ӭȡA�i�H�b����J�A�n���M���̷|�O�d�U�ۭ쥻���ȡC",
															"restore" : "�_��",
															"noMulti" : "����J��ݳ�W��J�A���e�\�h����Ƥ@�_�ק�"
														}
													},
													"autoFill" : {
														"cancel" : "����"
													},
													"buttons" : {
														"copySuccess" : {
															"_" : "�ƻs�F %d �����",
															"1" : "�ƻs�F 1 �����"
														},
														"copyTitle" : "�w�g�ƻs��ŶKï",
														"excel" : "Excel",
														"pdf" : "PDF",
														"print" : "�C�L",
														"copy" : "�ƻs",
														"colvis" : "������",
														"colvisRestore" : "���m������",
														"csv" : "CSV",
														"pageLength" : {
															"-1" : "��ܥ���",
															"_" : "��� %d ��"
														},
														"createState" : "�إߪ��A",
														"removeAllStates" : "�����Ҧ����A",
														"removeState" : "����",
														"renameState" : "���s�R�W",
														"savedStates" : "�x�s���A",
														"stateRestore" : "���A %d",
														"updateState" : "��s"
													},
													"searchPanes" : {
														"collapse" : {
															"_" : "�j�M���� (%d)",
															"0" : "�j�M����"
														},
														"emptyPanes" : "�S�j�M����",
														"loadMessage" : "���J�j�M������...",
														"clearMessage" : "�M��",
														"count" : "{total}",
														"countFiltered" : "{shown} ({total})",
														"title" : "�L�o���� - %d",
														"showMessage" : "��ܥ���",
														"collapseMessage" : "�P�|����"
													},
													"stateRestore" : {
														"emptyError" : "�W�٤���ťաC",
														"creationModal" : {
															"button" : "�إ�",
															"columns" : {
																"search" : "���j�M",
																"visible" : "������"
															},
															"name" : "�W�١G",
															"order" : "�Ƨ�",
															"paging" : "����",
															"scroller" : "���b��m",
															"search" : "�j�M",
															"searchBuilder" : "�ƦX�d��",
															"select" : "���",
															"title" : "�إ߷s���A",
															"toggleLabel" : "�]�t�G"
														},
														"duplicateError" : "�����A�W�٤w�g�s�b�C",
														"emptyStates" : "�W�٤��i�ťաC",
														"removeConfirm" : "�T�w�n���� %s �ܡH",
														"removeError" : "�������A���ѡC",
														"removeJoiner" : "�M",
														"removeSubmit" : "����",
														"removeTitle" : "�������A",
														"renameButton" : "���s�R�W",
														"renameLabel" : "%s ���s�W�١G",
														"renameTitle" : "���s�R�W���A"
													},
													"select" : {
														"columns" : {
															"_" : "��ܤF %d ����",
															"1" : "��ܤF 1 ����"
														},
														"rows" : {
															"1" : "��ܤF 1 �����",
															"_" : "��ܤF %d �����"
														},
														"cells" : {
															"1" : "��ܤF 1 ����",
															"_" : "��ܤF %d ����"
														}
													},
													"zeroRecords" : "�S���ŦX�����",
													"aria" : {
														"sortAscending" : "�G�ɾ��ƦC",
														"sortDescending" : "�G�����ƦC"
													},
													"info" : "��ܲ� _START_ �� _END_ �����G�A�@ _TOTAL_ ��",
													"infoEmpty" : "��ܲ� 0 �� 0 �����G�A�@ 0 ��",
													"infoFiltered" : "(�q _MAX_ �����G���L�o)",
													"infoThousands" : ",",
													"lengthMenu" : "��� _MENU_ �����G",
													"search" : "�j�M�G",
													"searchPlaceholder" : "�п�J����r",
													"thousands" : ","
												},

											// 												"paging" : true,
											// 												"ordering" : false,
											// 												"info" : false,
											// 												"pageLength" : 5, // Set the number of records per page 
											// 												"lengthMenu" : [ 5, 10, 20 ], // Set the available options for records per page
											});
						});
	</script>
</body>
</html>