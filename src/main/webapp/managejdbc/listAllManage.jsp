<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="com.pichill.managejdbc.entity.Manage"%>
<%@ page import="com.pichill.managejdbc.model.*"%>
<%@ page import="com.pichill.managejdbc.service.ManageService"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>

<%
    ManageService manageSvc = new ManageService();
    List<Manage> list = manageSvc.getAll();
    pageContext.setAttribute("list",list);
%>


<html>
<head>
<title>�Ҧ����u��� - listAllManage.jsp</title>

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

<h4>�����m�߱ĥ� EL ���g�k����:</h4>
<table id="table-1">
	<tr><td>
		 <h3>�Ҧ����u��� - listAllManage.jsp</h3>
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
<%-- 	<%@ include file="page1.file" %>  --%>
<%-- 	<c:forEach var="empVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>"> --%>
		    <c:forEach var="manage" items="${list}">
		    
		<tr>
			<td>${manage.manageID}</td>
			<td>${manage.mName}</td>
			<td>${manage.mUserName}</td>
			<td>${manage.mPassword}</td>
			<td>${manage.mBirth}</td>
			<td>${manage.mGender == 0 ? '�k' : '�k'}</td>
			<td>${manage.mTelephone}</td>
			<td>${manage.mEmgContact}</td>
			<td>${manage.mEmgPhone}</td>
			<td>${manage.mAddress}</td>
			<td>${manage.mHiredate}</td>
			<td>${manage.mLastLogTime}</td>
			<td>${manage.mID}</td>
			<td>${manage.mEmail}</td>
<%-- 			<td>${manage.mProfilePic}</td> --%>
			<td>${manage.mStatus == 0 ? '�w��¾':'�b¾��'}</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/managejdbc/manage.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�ק�">
			     <input type="hidden" name="manageID"  value="${manage.manageID}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
<!-- 			<td> -->
<%-- 			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/managejdbc/manage.do" style="margin-bottom: 0px;"> --%>
<!-- 			     <input type="submit" value="�R��"> -->
<%-- 			     <input type="hidden" name="manageID"  value="${manage.manageID}"> --%>
<!-- 			     <input type="hidden" name="action" value="delete"></FORM> -->
<!-- 			</td> -->
		</tr>
	</c:forEach>
</table>
<%-- <%@ include file="page2.file" %> --%>

</body>
</html>