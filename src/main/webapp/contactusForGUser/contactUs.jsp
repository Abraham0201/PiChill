<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pichill.contactus.model.*"%>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pichill�p���ڭ�</title>
    <link rel="stylesheet" href="./CSS1/bootstrap.min.css">
    <link rel="stylesheet" href="./CSS/index3.css">
    <link rel="stylesheet" href="./CSS/table.css">

    <!----------------�פJjquery ------------------------>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<style>
  table#table-1 {
	width: 450px;
	background-color: #CCCCFF;
	margin-top: 5px;
	margin-bottom: 10px;
    border: 3px ridge Gray;
    height: 80px;
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
</head>
<body bgcolor='white'>

<table id="table-1">
   <tr><td><h3>IBM Post: Home</h3><h4>( MVC )</h4></td></tr>
</table>

<p>This is the Home page for IBM Post: Home</p>

<h3>��Ƭd��:</h3>
	
<%-- ���~��C --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">�Эץ��H�U���~:</font>
	<ul>
	    <c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<ul>
  <li><a href='listAllContactUs.jsp'>List</a> all Form.  <br><br></li>
  
  
  <li>
    <FORM METHOD="post" ACTION="contactus.do" ><!-- �e�X���\��^��C�� -->
        <b>��J�D��:</b>
        <input type="text" name="formTitle" >
        <input type="hidden" name="action" value="getOne_For_Display">
        <input type="submit" value="�e�X">
    </FORM>
  </li>

  <jsp:useBean id="contactus" scope="page" class="com.pichill.contactus.service.ContactUsServiceImpl" />
   
  <li>
     <FORM METHOD="post" ACTION="contactus.do" >
       <b>��ܭn���i�Τ@��ư�:</b>
       <select size="1" name="formType">
         <c:forEach var="form" items="${contactUsService.all}" > 
          <option value="${contactUs.formType}">${contactUs.formType}
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOne_For_Display">
       <input type="submit" value="�e�X">
    </FORM>
  </li>
  
<!--   <li> -->
<!--      <FORM METHOD="post" ACTION="emp.do" > -->
<!--        <b>��ܭ��u�m�W:</b> -->
<!--        <select size="1" name="empno"> -->
<%--          <c:forEach var="empVO" items="${empSvc.all}" >  --%>
<%--           <option value="${empVO.empno}">${empVO.ename} --%>
<%--          </c:forEach>    --%>
<!--        </select> -->
<!--        <input type="hidden" name="action" value="getOne_For_Display"> -->
<!--        <input type="submit" value="�e�X"> -->
<!--      </FORM> -->
<!--   </li> -->
</ul>


<h3>�峹�޲z</h3>

<ul>
  <li><a href='addContactUs.jsp'>Add</a> a new form.</li>
</ul>

</body>
</html>