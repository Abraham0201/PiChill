<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.pichill.post.service.PostServiceImpl"%>
<%@ page import="com.pichill.post.entity.Post"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>

<%
//     PostServiceImpl postSvc = new PostServiceImpl();
// //     List<Post> list = postSvc.getAllPosts();
//     pageContext.setAttribute("list",list);
%>


<html>
<head>
<title>�����峹 - listAllPost.jsp</title>

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
		 <h3>�Ҧ��峹 - listAllPost.jsp</h3>
		 <h4><a href="post.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>�峹�s��</th>
		<th>�@��|���s��</th>
		<th>���~�|���s��</th>
		<th>���D</th>
		<th>����</th>
		<th>�峹����</th>
		<th>�o��ɶ�</th>
		<th>���g��</th>
		<th>�ק�</th>
		<th>�R��</th>
	</tr>
<%-- 	<%@ include file="page1.file" %>  --%>
<%-- 	<c:forEach var="empVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>"> --%>
	<c:forEach var="post" items="${list}"	>
		<tr>
			<td>${post.postID}</td>
			<td>${post.gUserID}</td>
			<td>${post.oUserID}</td>
			<td>${post.postTitle}</td>
			<td>${post.postContent}</td>
			<td>${post.postType}</td> 
			<td>${post.postTime}</td>
			<td>${post.likeCnt}</td>

			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/post/post.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�ק�">
			     <input type="hidden" name="postID"  value="${post.postID}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/post/post.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�R��">
			     <input type="hidden" name="postID"  value="${post.postID}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>
		</tr>
	</c:forEach>
</table>
<%-- <%@ include file="page2.file" %> --%>

</body>
</html>