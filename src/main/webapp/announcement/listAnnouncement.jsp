<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pichill.announcement.*"%>
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>



<html>
<head>
<title>�j�M���i���G - listAnnouncement.jsp</title>

<style>
table#table-1 {
	background-color: #CCCCFF;
	border: 2px solid black;
	text-align: center;
}

table#table-1 h4 {
	color: red;
	display: block;
	margin-bottom: 1px;
}

h4 {
	color: blue;
	display: inline;
}
</style>

<style>
table {
	width: 600px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
}

table, th, td {
	border: 1px solid #CCCCFF;
}

th, td {
	padding: 5px;
	text-align: center;
}
</style>

</head>
<body bgcolor='white'>

	<h4>�����Ƚm�߱ĥ� Script ���g�k����:</h4>
	<table id="table-1">
		<tr>
			<td>
				<h3>���i�j�M���G - listAnnouncement.jsp</h3>
				<h4>
					<a href="announcement.jsp"><img src="images/back1.gif" width="100"
						height="32" border="0">�^����</a>
				</h4>
			</td>
		</tr>
	</table>

	<table>
		<tr>
		<tr>
			<th>���i�s��</th>
			<th>�޲z���s��</th>
			<th>���s��</th>
			<th>���D</th>
			<th>����</th>
			<th>����Ϥ�</th>
			<th>�o��ɶ�</th>
			<th>���i���A</th>
			<th>�ק�</th>
			<th>�R��</th>
		</tr>
		<c:forEach var="announcement" items="${list}">
			<!-- �Ⱥ�list����A�� -->
			<tr>
				<td>${announcement.announceID}</td>
				<td>${contactUs.manageID}</td>
				<td>${contactUs.formID}</td>
				<td>${contactUs.annoTitle}</td>
				<td>${contactUs.annoContent}</td>
				<td>${contactUs.annoPic}</td>
				<td>${contactUs.annoTime}</td>
				<td>${contactUs.annoStatus}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>