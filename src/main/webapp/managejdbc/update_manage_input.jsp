<%-- <%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%> --%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%-- <%@ page import="com.pichill.managejdbc.entity.Manage"%> --%>

<%-- <% //��com.emp.controller.EmpServlet.java��163��s�Jreq��empVO���� (�����q��Ʈw���X��empVO, �]�i�H�O��J�榡�����~�ɪ�empVO����) --%>
//    Manage manage = (Manage) request.getAttribute("manage");
<%-- %> --%>
<%-- <%-- --<%= manage==null %>--${empVO.deptno}-- <!-- line 100 --> --%> --%>
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/> -->
<!-- <title>���u��ƭק� - update_manage_input.jsp</title> -->

<!-- <style> -->
/*   table#table-1 { */
/* 	background-color: #CCCCFF; */
/*     border: 2px solid black; */
/*     text-align: center; */
/*   } */
/*   table#table-1 h4 { */
/*     color: red; */
/*     display: block; */
/*     margin-bottom: 1px; */
/*   } */
/*   h4 { */
/*     color: blue; */
/*     display: inline; */
/*   } */
<!-- </style> -->

<!-- <style> -->
/*   table { */
/* 	width: 450px; */
/* 	background-color: white; */
/* 	margin-top: 1px; */
/* 	margin-bottom: 1px; */
/*   } */
/*   table, th, td { */
/*     border: 0px solid #CCCCFF; */
/*   } */
/*   th, td { */
/*     padding: 1px; */
/*   } */
<!-- </style> -->

<!-- </head> -->
<!-- <body bgcolor='white'> -->

<!-- <table id="table-1"> -->
<!-- 	<tr><td> -->
<!-- 		 <h3>���u��ƭק� - update_manage_input.jsp</h3> -->
<!-- 		 <h4><a href="select_page.jsp"><img src="../image/smallLogo.png" width="100" height="32" border="0">�^����</a></h4> -->
<!-- 	</td></tr> -->
<!-- </table> -->

<!-- <h3>��ƭק�:</h3> -->

<%-- <%-- ���~��C --%> --%>
<%-- <c:if test="${not empty errorMsgs}"> --%>
<!-- 	<font style="color:red">�Эץ��H�U���~:</font> -->
<!-- 	<ul> -->
<%-- 		<c:forEach var="message" items="${errorMsgs}"> --%>
<%-- 			<li style="color:red">${message}</li> --%>
<%-- 		</c:forEach> --%>
<!-- 	</ul> -->
<%-- </c:if> --%>

<!-- <FORM METHOD="post" ACTION="manage.do" name="form1"> -->
<!-- <table> -->
<!-- 	<tr> -->
<!-- 		<td>�޲z���s��:<font color=red><b>*</b></font></td> -->
<%-- 		<td><%=manage.getManageID()%></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td>���u�m�W:</td> -->
<%-- 		<td><input type="TEXT" name="mName" value="<%= (manage==null)? "�����W" : manage.getmName()%>" size="45"/></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td>�b��:</td> -->
<%-- 		<td><input type="TEXT" name="mUserName"   value="<%= (manage==null)? "Chen52" : manage.getmUserName()%>" size="45"/></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td>�K�X:</td> -->
<%-- 		<td><input type="password" name="mPassword" value="<%= (manage==null)? "525252" : manage.getmPassword()%>" size="45"/></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td>�ͤ�:</td> -->
<%-- 		<td><input name="mBirth" type="date" value="<%= (manage==null)? "1982-06-01" : manage.getmBirth()%>" size="45"></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td>�ʧO:</td> -->
<!-- 		<td><select name="mGender"> -->
<!-- 			<option value="0" selected>�k</option> -->
<!-- 			<option value="1">�k</option> -->
<!-- 			</select> -->
<!-- 		</td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td>���:</td> -->
<%-- 		<td><input type="TEXT" name="mTelephone" value="<%= (manage==null)? "0918324387" : manage.getmTelephone()%>" size="45"/></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td>����p���H:</td> -->
<%-- 		<td><input type="TEXT" name="mEmgContact" value="<%= (manage==null)? "���s��" : manage.getmEmgContact()%>" size="45"/></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td>����p���H���:</td> -->
<%-- 		<td><input type="TEXT" name="mEmgPhone" value="<%= (manage==null)? "0914562187" : manage.getmEmgPhone()%>" size="45"/></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td>�p���a�}:</td> -->
<%-- 		<td><input type="TEXT" name="mAddress" value="<%= (manage==null)? "�s�_���éM�����e���587��22��" : manage.getmAddress()%>" size="45"/></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td>�J¾���:</td> -->
<!-- 		<td><input name="mHiredate" type="date" ></td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td>�̫�W�u�ɶ�:</td> -->
<!-- 		<td><input name="mLastLogTime" type="text" ></td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td>������:</td> -->
<%-- 		<td><input type="TEXT" name="mID" value="<%= (manage==null)? "Z984029391" : manage.getmID()%>" size="45"/></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td>�q�l�H�c:</td> -->
<%-- 		<td><input type="TEXT" name="mEmail" value="<%= (manage==null)? "brandon416jr@gmail.com" : manage.getmEmail()%>" size="45"/></td> --%>
<!-- 	</tr> -->
<!-- <!-- 	<tr> --> -->
<!-- <!-- 		<FORM action="uploadServlet3_simple.do" method=post enctype="multipart/form-data"> --> -->
<!-- <!--         	<input type="file" name="upfile1"> --> -->
<!-- <!--         	<input type="submit" value="�W��"> --> -->
<!-- <!--   		</FORM> --> -->
<!-- <!-- 	</tr> --> -->
<!-- 	<tr> -->
<!-- 		<td>���A:</td> -->
<!-- 		<td> -->
<!-- 			<select name="mStatus"> -->
<!-- 				<option value="0">�w��¾</option> -->
<!-- 				<option value="1" selected>�b¾��</option> -->
<!-- 			</select> -->
<!-- 		</td> -->
<!-- 	</tr> -->

<%-- <%-- 	<jsp:useBean id="deptSvc" scope="page" class="com.dept.model.DeptService" /> --%> --%>
<!-- <!-- 	<tr> --> -->
<!-- <!-- 		<td>����:<font color=red><b>*</b></font></td> --> -->
<!-- <!-- 		<td><select size="1" name="deptno"> --> -->
<%-- <%-- 			<c:forEach var="deptVO" items="${deptSvc.all}"> --%> --%>
<%-- <%-- 				<option value="${deptVO.deptno}" ${(empVO.deptno==deptVO.deptno)?'selected':'' } >${deptVO.dname} --%> --%>
<%-- <%-- 			</c:forEach> --%> --%>
<!-- <!-- 		</select></td> --> -->
<!-- <!-- 	</tr> --> -->

<!-- </table> -->
<!-- <br> -->
<!-- <input type="hidden" name="action" value="update"> -->
<%-- <input type="hidden" name="manageID" value="<%=manage.getManageID()%>"> --%>
<!-- <input type="submit" value="�e�X�ק�"></FORM> -->
<!-- </body> -->

<!-- </html> -->