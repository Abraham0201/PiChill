<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.pichill.contactus.service.ContactUsServiceImpl"%>
<%@ page import="com.pichill.contactus.entity.ContactUs"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>

<%
ContactUsServiceImpl contactUsService = new ContactUsServiceImpl();
    /* List<ContactUs> list = contactUsService.getAllPosts(); */
    List<ContactUs> list = contactUsService.getAll();
    pageContext.setAttribute("list",list);
%>


<html>
<head>
<title>������� - listAllform.jsp</title>

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
	width: 800px;
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

<table id="table-1">
	<tr><td>
		 <h3>�Ҧ��峹 - listAllContactUs.jsp</h3>
		 <h4><a href="contactUs.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>���s��</th>
		<th>�@��|���s��</th>
		<th>���~�|���s��</th>
		<th>�D��</th>
		<th>����</th>
		<th>����Ϥ�</th>
		<th>�o��ɶ�</th>
		<th>��檬�A</th>
		<th>�������</th>
		<th>�ק�</th>
		<th>�R��</th>
	</tr>
<%-- 	<%@ include file="page1.file" %>  --%>
<%-- 	<c:forEach var="empVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>"> --%>
	<c:forEach var="contactUs" items="${list}"	>
		<tr>
			<td>${contactUs.formID}</td>
			<td>${contactUs.gUserID}</td>
			<td>${contactUs.oUserID}</td>
			<td>${contactUs.formPurpose}</td>
			<td>${contactUs.formContent}</td>
			<td>${contactUs.formPic}</td> 
			<td>${contactUs.formTime}</td>
			<td>${contactUs.formStatus}</td>
			<td>${contactUs.formType}</td>

			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/contactUs/contactUs.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�ק�">
			     <input type="hidden" name="formID"  value="${contactUs.formID}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/contactus/contact.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�s�W">
			     <input type="hidden" name="formID"  value="${contactUs.formID}">
			     <input type="hidden" name="action" value="add"></FORM>
			</td>
		</tr>
	</c:forEach>
</table>
<%-- <%@ include file="page2.file" %> --%>

</body>
</html>