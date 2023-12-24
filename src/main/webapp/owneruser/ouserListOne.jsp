<%@ page contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pichill.owneruser.entity.*"%>

<%
//�q��Ʈw���X��owneruser, �]�i�H�O��J�榡�����~�ɪ�owneruser����
OwnerUser ownerUser = (OwnerUser) request.getAttribute("ownerUser");
%> 

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>ouserListOne</title>
		<link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/css1/bootstrap.min.css">
	    <link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/CSS/css.css">
	    <link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/CSS/index3.css">
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
  	</style>

</head>
<body>


<!----------------------------------------------- header �� ------------------------------------------------------->
	<header class="header">
		<div class="container">
			<header class="d-flex flex-wrap justify-content-center py-1">
				<a href="/"
					class="d-flex align-items-center mb-1 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
					<img src="<%=request.getContextPath()%>/owneruser/pic/headerlogo.svg" alt="SVG"/>
				</a>


				<ul class="nav nav-pills">
					<li class="nav-item"><a href="<%=request.getContextPath()%>/homepage/owneruserhome.jsp" class="nav-link">����</a></li>
					<li class="nav-item"><a href="#" class="nav-link">�q��</a></li>
					<li class="nav-item"><a href="#" class="nav-link">�w���޲z�t��</a></li>
					<li class="nav-item"><a href="#" class="nav-link">�׾�</a></li>
					<li class="nav-item"><a href="#" class="nav-link">�p���ڭ�</a></li>
					<img src="<%=request.getContextPath()%>/owneruser/DBGifReader?oUserID=${ownerUser.oUserID}"  alt="SVG" class="rounded-circle"/>���~�|������</a></li>
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
								href="<%=request.getContextPath()%>/court/new_court.jsp">�ӽФW�[�y�]</button>
						</li>
						<li class="my-2">
							<button
								class="btn d-inline-flex align-items-center collapsed border-0"
								data-bs-toggle="collapse" aria-expanded="false"
								data-bs-target="#forms-collapse" aria-controls="forms-collapse">�y�]�޲z</button>

						</li>
						<form method="POST" action="<%=request.getContextPath()%>/logoutfo.do"> 
							<li class="my-2">
								<button class="btn btn-danger">�n�X</button>
								<input type="hidden" name="action" value="logout">
							</li>
						</form>
						
					</ul>
				</nav>
			</div>
		</aside>


    <!----------------------------------------------- main �� ------------------------------------------------------->
    <main class="main">
            <h2 class="h6 pt-4 pb-3 mb-4 border-bottom">���~�|�����</h2>
            
            <%-- ���~��C --%>
			<c:if test="${not empty errorMsgs}">
				<font style="color:red">�Эץ��H�U���~:</font>
				<ul>
					<c:forEach var="message" items="${errorMsgs}">
						<li style="color:red">${message}</li>
					</c:forEach>
				</ul>
			</c:if>


<span>���~�|���s��:</span>
                <input type="text" id="ouserID" name="ouserID" value="${ownerUser.oUserID}" disabled/>
                <br><br>                            
      
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>�b��:</span>
                <input type="text" id="oUserName" name="oUserName" value="${ownerUser.oUserName}" disabled>
                <br><br>
                
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>�K�X:</span>
                <input type="text" id="oPassword" name="oPassword" value="${ownerUser.oPassword}"/>
                <br><br>
                
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>�νs:</span>
                <input type="text" id="compiled" style="position: relative; left: 17px;" name="compiled" value="${ownerUser.compiled}" required/>
                <br><br>
                
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>���]�t�d�H�m�W:</span>
                <input type="text" id="oName" name="oName" value="${ownerUser.oName}"/>
                <br><br>
                
    		    <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>�ʧO:</span>
           		<input type="text" id="oGender" name="oGender" value="${ownerUser.oGender == 0 ? '�k':'�k'}" disabled>
<%--                 <% int gender = ownerUser.getoGender(); %> --%>
<!-- 				<select name="oGender" disabled="disabled"> -->
<%-- 				<option value="0" <%=gender == 0 ? "selected" : ""%>>�k</option> --%>
<%-- 				<option value="1" <%=gender == 1 ? "selected" : ""%>>�k</option> --%>
<!-- 				</select> -->
                <br><br>
                
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>���]�t�d�H�����Ҧr��:</span>
                <input type="text" id="oIDNum" name=oIDNum"  value="${ownerUser.oIDNum}"/>
                <br><br>
                
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20">                  
                <span>�X�ͦ~���:</span>
                <input type="text" id="oBirth" name="oBirth" value="${ownerUser.oBirth}" disabled>
                <br><br>
                
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20">   
                <span>�s���q��:</span>
                <input type="text" id="oTelephone" name="oTelephone" value="${ownerUser.oTelephone}"/>
                <font color="#FF0000" size="-1" nowrap="">�p:0912345678�C</font> 
                <br><br>
                
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20">    
                <span>�p���a�}:</span>
                 <input type="text" id="oAddress" style = "width:250px;" name="oAddress" placeholder="�п�J�p���a�}" 
                value="${ownerUser.oAddress}"/>
               <br><br>
                
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20">    
                <span>�Ȧ�N���G</span> 
 				<input type="text" id="oBankCode" name="oBankCode" value="${ownerUser.oBankCode}"  placeholder="�p:012" required> 
 				<br> 
 				<br>
 				
 				<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt="">  
				<span>�Ȧ�b���G</span> 
 				<input type="text" id="bank_account" name="oBankAccount"  value="${ownerUser.getoBankAccount}" required>
				<br>  
				<br>  
                
                
               <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt="">  
 			   <span>�q�l�H�c�G</span>  
 			   <input type="text" id="oEmail" name="oEmail" style = "width:250px;"
 				value="${ownerUser.oEmail}" required>  
 			   <font color="#FF0000" size="-1" nowrap="">�q�l�H�c�榡�d��:abc@yahoo.com.tw</font> 
               <br>  
				<br> 
                
                <span>�j�Y�K:</span><br>
                <input type="file" id="oProfilePic" name="oProfilePic" previewImage() multiple="multiple" hidden/>
                <img src="<%=request.getContextPath()%>/owneruser/DBGifReader?oUserID=${ownerUser.oUserID}" width="100px">
                <br>
 	 			<br>

 			<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/owneruser/owneruser.do" enctype="multipart/form-data" class="bararea">  
                <input type="hidden" name="action" value="getOne_For_Update">
				<input type="hidden" name="oUserID" value="${ownerUser.oUserID}">
                <input type="submit" id="next" value="�ק�" style="width:150px; height:44px;">
                <br><br><br>
                <br><br>
            </form>


  </main>
    </div>  

<!----------------------------------------------- footer �� ------------------------------------------------------->
    <footer class="footer">
      
        <div class="container">
          <header class="d-flex flex-wrap justify-content-center py-3">
            <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
              <img src = "<%=request.getContextPath()%>/generaluser/pic/footerlogo.svg" alt="SVG"/>     
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
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <!--======================================= ��ܹw���� =======================================-->
    <script>
	    function previewImage() {
			var oProfilePic1 = document.getElementById("oProfilePic");
			gProfilePic1.addEventListener("show", function(event) {
				var files = event.target.files || event.dataTransfer.files;
				for (var i = 0; i < files.length; i++) {
					previewfile(files[i])
				}
			}, false);
		}
		function previewfile(file) {
			if (filereader_support === true && acceptedTypes[file.type] === true) {
				var reader = new FileReader();
				reader.onload = function(event) {
					var image = new Image();
					image.src = event.target.result;
					image.width = 130;
					image.height = 150;
					image.border = 0;
					if (blob_holder.hasChildNodes()) {
						blob_holder.removeChild(blob_holder.childNodes[0]);
					}
					blob_holder.appendChild(image);
				};
				reader.readAsDataURL(file);
			} 
		}
      </script>

</body>
</html>