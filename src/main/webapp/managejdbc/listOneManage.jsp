<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.pichill.managejdbc.entity.Manage"%>
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>

<%
   Manage manage = (Manage) request.getAttribute("manage"); //ManageServlet.java(Concroller), �s�Jreq��manage����
%>

<html>
<head>
<title>���u��� - listOneManage.jsp</title>

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
	<tr><td>
		 <h3>���u��� - listOneManage.jsp</h3>
		 <h4><a href="select_page.jsp"><img src="../image/smallLogo.png" width="50" height="50" border="0">�^����</a></h4>
	</td></tr>
</table>

<table>
	<tr>
			<th>�޲z���s��</th>
            <th>���u�m�W</th>
            <th>�b��</th>
            <th>�K�X</th>
            <th>�ͤ�</th>
            <th>�ʧO</th>
            <th>���</th>
            <th>����p���H</th>
            <th>���s���H�q��</th>
            <th>�p���a�}</th>
            <th>�J¾���</th>
            <th>�̫�W�u�ɶ�</th>
            <th>������</th>
            <th>�q�l�H�c</th>
<!--             <th>�j�Y�K</th> -->
            <th>���A</th>
	</tr>
	<tr>
		<td><%=manage.getManageID()%></td>
		<td><%=manage.getmName()%></td>
		<td><%=manage.getmUserName()%></td>
		<td><%=manage.getmPassword()%></td>
		<td><%=manage.getmBirth()%></td>
		<td><%=manage.getmGender()%></td>
		<td><%=manage.getmTelephone()%></td>
		<td><%=manage.getmEmgContact()%></td>
		<td><%=manage.getmEmgPhone()%></td>
		<td><%=manage.getmAddress()%></td>
		<td><%=manage.getmHiredate()%></td>
		<td><%=manage.getmLastLogTime()%></td>
		<td><%=manage.getmID()%></td>
		<td><%=manage.getmEmail()%></td>
<%-- 		<td><%=manage.getmProfilePic()%></td> --%>
		<td><%=manage.getmStatus()%></td>
	</tr>
</table>

</body>
</html>