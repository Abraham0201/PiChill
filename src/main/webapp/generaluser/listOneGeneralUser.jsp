<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.pichill.generaluser.entity.*"%>
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>

<%
GeneralUser generalUser = (GeneralUser) request.getAttribute("generalUser"); //GeneralUserServlet.java(Concroller), �s�Jreq��generalUser����
%>

<html>
<head>
<title>�|����� - listOneGeneralUser.jsp</title>

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
		 <h3>�|����� - listOneGeneralUser.jsp</h3>
		 <h4><a href="select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>�|���s��</th>
		<th>�|���m�W</th>
		<th>�b��</th>
		<th>�K�X</th>
		<th>�ʺ�</th>
		<th>�q�l�H�c</th>
		<th>�����Ҧr��</th>
		<th>�ʧO</th>
		<th>�X�ͦ~���</th>
		<th>������X</th>
		<th>�p���a�}</th>
		<th>�b�����A</th>
		<th>�j�Y�K</th>
		<th>�ק�</th>
<!-- 		<th>�R��</th> -->
	</tr>
	<tr>
		<td>${generalUser.gUserID}</td>
		<td>${generalUser.gName}</td>
		<td>${generalUser.gUsername}</td>
		<td>${generalUser.gPassword}</td>
		<td>${generalUser.nicknameID}</td>
		<td>${generalUser.gEmail}</td>
		<td>${generalUser.gIDNum}</td>
		<td>${generalUser.gGender == 0 ? '�k':'�k'}</td>
		<td>${generalUser.gBirth}</td>
		<td>${generalUser.gTelephone}</td>
		<td>${generalUser.gAddress}</td>
		<td>${generalUser.status == 0 ? 'normal' : '�Q�ת����v'}</td> 
		<td>${generalUser.gProfilePic}</td>
		
		<td>
			<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/generaluser/generaluser.do" style="margin-bottom: 0px;">
			    <input type="submit" value="�ק�">
			    <input type="hidden" name="gUserID"  value="${generalUser.gUserID}">
			    <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
		</td>
	</tr>
</table>

</body>
</html>