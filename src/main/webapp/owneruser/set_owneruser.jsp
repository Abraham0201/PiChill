<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pichill.owneruser.entity.OwnerUser"%> 

<%
//��com.emp.controller.EmpServlet.java��238��s�Jreq��empVO���� (������J�榡�����~�ɪ�empVO����)
OwnerUser ownerUser = (OwnerUser) request.getAttribute("owneruser");
%>


<!DOCTYPE html>
<html lang="zh-Hant">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>���~�|������ - ���~�|�����</title>

<link
	href="<%=request.getContextPath()%>/owneruser/css1/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/owneruser/CSS/index3.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css"/>

<!-- <script> -->
<%-- 	src="<%=request.getContextPath()%>/owneruser/js/bootstrap.min.js"> --%>
<!--  </script>  -->
	<style>
	.phone1 {
		width: 200px;
		height: 200px;
		background-image: url('img_flowers.jpg');
		background-repeat: no-repeat;
		background-size: contain;
		/* border: 1px solid red; */
		position: absolute;
		right: 100px;
		/* z-index: -1; */
	}
	
	  .xdsoft_datetimepicker .xdsoft_datepicker {
           width:  300px;   /* width:  300px; */
  }
  .xdsoft_datetimepicker .xdsoft_timepicker .xdsoft_time_box {
           height: 151px;   /* height:  151px; */
  }
	</style>
</head>
<body>

<!----------------------------------------------- header �� ------------------------------------------------------->
	<header class="header">
		<div class="container">
			<header class="d-flex flex-wrap justify-content-center py-1">
				<a href="/"
					class="d-flex align-items-center mb-1 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
					<img src="<%=request.getContextPath()%>owneruser/pic/headerlogo.svg"
					alt="SVG" />
				</a>


				<ul class="nav nav-pills">
					<li class="nav-item"><a href="#" class="nav-link">����</a></li>
					<li class="nav-item"><a href="#" class="nav-link">�q��</a></li>
					<li class="nav-item"><a href="#" class="nav-link">�w���޲z�t��</a></li>
					<li class="nav-item"><a href="#" class="nav-link">�׾�</a></li>
					<li class="nav-item"><a href="#" class="nav-link">�p���ڭ�</a></li>
					<li class="nav-item"><a href="#" class="nav-link"> <img
							src="<%=request.getContextPath()%>/owneruser/pic/face.svg" alt="���~�|���Y��" />�|������
					</a></li>
				</ul>

			</header>
		</div>
	</header>

<!----------------------------------------------- aside �� ------------------------------------------------------->
	<div class="main_content">
		<aside class="aside">
			<div class="parent_container">
				<h2 class="h6 pt-4 pb-3 mb-4 border-bottom">���~�|������</h2>
				<nav class="small" id="toc">
					<ul class="list-unstyled">
						<li class="my-2">
							<button
								class="btn d-inline-flex align-items-center collapsed border-0"
								data-bs-toggle="collapse" aria-expanded="false"
								data-bs-target="#contents-collapse"
								aria-controls="contents-collapse">���~�|�����</button>
						</li>

						<li class="my-2">
							<button
								class="btn d-inline-flex align-items-center collapsed border-0"
								data-bs-toggle="collapse" aria-expanded="false"
								data-bs-target="#forms-collapse" aria-controls="forms-collapse"
								href="index4.html">�ӽФW�[�y�]</button>
						</li>
						<li class="my-2">
							<button
								class="btn d-inline-flex align-items-center collapsed border-0"
								data-bs-toggle="collapse" aria-expanded="false"
								data-bs-target="#forms-collapse" aria-controls="forms-collapse">�y�]�޲z</button>

						</li>
						<li class="my-2">
							<button
								class="btn d-inline-flex align-items-center collapsed border-0"
								data-bs-toggle="collapse" aria-expanded="false"
								data-bs-target="#forms-collapse" aria-controls="forms-collapse">�n�X</button>
						</li>
					</ul>
				</nav>
			</div>
		</aside>

		<!----------------------------------------------- main �� ------------------------------------------------------->
		<main class="main">
			<h2 class="h6 pt-4 pb-3 mb-4 border-bottom">���~�|�����</h2> 
		
			<%-- ���~��C --%>
			<c:if test="${not empty errorMsgs}">
				<font style="color: red">�Эץ��H�U���~:</font>
				<ul>
					<c:forEach var="message" items="${errorMsgs}">
						<li style="color: red">${message}</li>
					</c:forEach>
				</ul>
			</c:if>
		
			<FORM METHOD="post" ACTION="owneruser.do" name="form1">
				<br> 
				<p> 
	 			<span style="color: #FF0000;">�e��<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" 
	 			width="20" height="20" alt="">�����񶵥� </span> 
	 			</p> 

 				<div class="phone1"> 
				<!-- �W�ǹϤ� -->
                 <div id="blob_holder"><img src="<%=request.getContextPath()%>/owneruser/DBGifReader?oUserID=${param.oUserID}" width="100px"></div>
                <input type="file" id="gProfilePic" name="gProfilePic" onclick="previewImage()" multiple="multiple" />
				</div>
<!-- 			<form class="bararea" enctype="multipart/form-data">  -->

				<span>�|���s��:</span>
	            <input type="text" id="ouserID" name="ouserID" value="<%=ownerUser.getoUserID()%>" disabled/>
	            <br><br>
			
				<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20">  
				<label for="username">�b���G</label> 
				<input type="text" id="username" name="oUserName"  
					value="<%=(ownerUser == null) ? "yehshaa0106" : ownerUser.getoUserName()%>" size="45" 
		 			style="position: relative; left: 17px;" required> 
				 <br> 
				 <br> 
	
				<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
	 			<label for="password">�K�X�G</label> 
	 			<input type="password" id="password" name="oPassword" 
	 					value="<%=(ownerUser == null) ? "LtaS845r" : ownerUser.getoPassword()%>" 
	 					style="position: relative; left: 17px;" required> 
	 			<font color="#FF0000" size="-1"	style="position: relative; left: 17px;">�п�J8~12�r�A���]�t�Ʀr�B�j�p�g�^��r��</font>
	 			<br> 
	 			<br> 
	
				<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20">  
				<label for="tax_id">�νs�G</label> 
	 			<input type="text" id="tax_id"	name="compiled"  
	 				   value="<%=(ownerUser == null) ? "09071688" : ownerUser.getcompiled()%>" style="position: relative; left: 17px;" required> 
	 			<br>
	 			<br> 
	 			
	 			<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20">  
	 			<label for="phone">���]�t�d�H�m�W:</label> 
	 			<input type="text" id="name" name="oName" 
	 				   value="<%=(ownerUser == null) ? "���ڵ�" : ownerUser.getoName()%>" required> 
	 			<br> 
	 			<br> 
				<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png"  height="20"> 
	 			<label for="gender">�ʧO�G</label> 
	 				<%--	name �ݬۦP�A��ܦP�@�ճ��Achecked ���w�]�Ŀ�ﶵ--%>
	 					<div class="radio"> 
	 					 <%int gender = 1 ;%>
		 				  <%--  <%int oGender = ownerUser.getoGender();%> --%>
		 					<select name="oGender"> 
		 						<option value="0" <%=gender == 0 ? "selected" : ""%>>�k</option> 
		 						<option value="1" <%=gender == 1 ? "selected" : ""%>>�k</option> 
		 					</select>
	 					</div>	 
					<br> 
					<br> 
					<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt=""> 
						<label for="phone">���]�t�d�H�����Ҧr��:</label> 
	 					<input type="text" id="oIDNum" name="oIDNum" 
	 					value="<%=(ownerUser == null) ? "H212810987" : ownerUser.getoIDNum()%>" 
	 					placeholder="A123456789" required> 
	 				<br>  
					<br> 
					
					<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt="">  
					<label for="obirth">�X�ͦ~���:</label>
					<input name="oBirth" id="f_date1" type="text">
					
					<br> 
					<br> 	 
					
					<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt="">  
	 				<label for="oTelephone">�s���q�ܡG</label> 
	 				<input type="text" id="oTelephone" name="oTelephone" value="<%=(ownerUser == null) ? "0934862754" : ownerUser.getoTelephone()%>" required> 
	 				<font color="#FF0000" size="-1" >�p:0912345678�C</font> 
	 				<br> 
	 				<br>
					
					<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt="">  
						<label for="oAddress">�s���a�}�G</label>  
	 					<input type="text" id="oAddress" name="oAddress" value="<%=(ownerUser == null) ? "�s�_���s���ϥ��v��98��6��" : ownerUser.getoAddress()%>" required>  
	 					<br> 
						<br> 
						
	 				<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt="">  
	 					<label for="oBankCode">�Ȧ�N���G</label>  
	 					<input type="text" id="bank_branch" name="oBankCode" value="<%=(ownerUser == null) ? "808" : ownerUser.getoBankCode()%>"  placeholder="�p:012" required> 
	 					<br> 
	 					<br>  
	 					
					<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt="">  
						<label for="oBankAccount">�Ȧ�b���G</label> 
	 					<input type="text" id="bank_account" name="oBankAccount"  value="<%=(ownerUser == null) ? "95301246813579" : ownerUser.getoBankAccount()%>" required>
						<br>  
						<br> 
						
	 				<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt="">  
	 					<label for="oBankAccount">�q�l�H�c�G</label> 
	 					<input type="text" id="oEmail" name="oEmail" 
	 					style = "width:250px;"
	 					value="<%=(ownerUser == null) ? "yehshaa0106@gmail.com" : ownerUser.getoEmail()%>" required>  
	 					<font color="#FF0000" size="-1" >�q�l�H�c�榡�d��:abc@yahoo.com.tw</font> 
			</form>

				<br> <br>

 			<!-------- �e�X���s  -------> 
				<input type="hidden" name="action" value="update">
				<input type="hidden" name="oUserID" value="<%=ownerUser.getoUserID()%>">
				<input type="submit" value="�e�X�ק�" style="width: 150px; height: 44px;"> 

 			</div>
	
	</main>





<!----------------------------------------------- footer �� ------------------------------------------------------->
	<footer class="footer">

		<div class="container">
			<header class="d-flex flex-wrap justify-content-center py-3">
				<a href="/"
					class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
					<img src="./pic/footerlogo.svg" alt="SVG" />
				</a>

				<ul class="nav nav-pills">
                    <li class="nav-item"><a href="<%=request.getContextPath()%>/homepage/termOfUse/termOfUse.html" class="nav-link">�ϥΪ̱���</a></li>
                    <li class="nav-item"><a href="#" class="nav-link"></a></li>
                    <li class="nav-item"><a href="<%=request.getContextPath()%>/homepage/privacyPolicy/privacyPolicy.html" class="nav-link">���p�v�F��</a></li>
                    <li class="nav-item"><a href="#" class="nav-link"></a></li>
                    <li class="nav-item"><a href="<%=request.getContextPath()%>/homepage/disclaimer/disclaimer.html" class="nav-link">�K�d����</a></li>
                    <li class="nav-item"><a href="#" class="nav-link"></a></li>
                    <li class="nav-item"><a href="#" class="nav-link"></a></li>
                </ul>
			</header>
		</div>
	</footer>

<!-- =========================================�H�U�� datetimepicker �������]�w========================================== -->


<script src="<%=request.getContextPath()%>owneruser/datetimepicker/jquery.js"></script>
<script src="<%=request.getContextPath()%>owneruser/datetimepicker/jquery.datetimepicker.full.js"></script>


<script>
        $.datetimepicker.setLocale('zh');
        $('#f_date1').datetimepicker({
           theme: '',              //theme: 'dark',
 	       timepicker:false,       //timepicker:true,
 	       step: 1,                //step: 60 (�o�Otimepicker���w�]���j60����)
 	       format:'Y-m-d',         //format:'Y-m-d H:i:s',
 		   value: '<%=ownerUser.getoBirth()%>', // value:   new Date(),
           //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // �h���S�w���t
           //startDate:	            '2017/07/10',  // �_�l��
           //minDate:               '-1970-01-01', // �h������(���t)���e
           //maxDate:               '+1970-01-01'  // �h������(���t)����
        });
        
        
   
        // ----------------------------------------------------------�H�U�ΨӱƩw�L�k��ܪ����-----------------------------------------------------------

        //      1.�H�U���Y�@�Ѥ��e������L�k���
        //      var somedate1 = new Date('2017-06-15');
        //      $('#f_date1').datetimepicker({
        //          beforeShowDay: function(date) {
        //        	  if (  date.getYear() <  somedate1.getYear() || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() <  somedate1.getMonth()) || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() == somedate1.getMonth() && date.getDate() < somedate1.getDate())
        //              ) {
        //                   return [false, ""]
        //              }
        //              return [true, ""];
        //      }});

        
        //      2.�H�U���Y�@�Ѥ��᪺����L�k���
        //      var somedate2 = new Date('2017-06-15');
        //      $('#f_date1').datetimepicker({
        //          beforeShowDay: function(date) {
        //        	  if (  date.getYear() >  somedate2.getYear() || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
        //              ) {
        //                   return [false, ""]
        //              }
        //              return [true, ""];
        //      }});


        //      3.�H�U����Ӥ�����~������L�k��� (�]�i���ݭn������L���)
        //      var somedate1 = new Date('2017-06-15');
        //      var somedate2 = new Date('2017-06-25');
        //      $('#f_date1').datetimepicker({
        //          beforeShowDay: function(date) {
        //        	  if (  date.getYear() <  somedate1.getYear() || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() <  somedate1.getMonth()) || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() == somedate1.getMonth() && date.getDate() < somedate1.getDate())
        //		             ||
        //		            date.getYear() >  somedate2.getYear() || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
        //              ) {
        //                   return [false, ""]
        //              }
        //              return [true, ""];
        //      }});
</script>

<%-- <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script> --%>

</body>
</html>