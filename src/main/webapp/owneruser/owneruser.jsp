<%@ page contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pichill.owneruser.entity.OwnerUser"%>
    
<%
//�q��Ʈw���X��owneruser, �]�i�H�O��J�榡�����~�ɪ�owneruser����
OwnerUser ownerUser = (OwnerUser) session.getAttribute("ownerUser");
%>  
    
    
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>ownerUser</title>
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
					<li class="nav-item"><a href="<%=request.getContextPath()%>/ownerusernotify/notify.jsp" class="nav-link">�q��</a></li>
					<li class="nav-item"><a href="<%=request.getContextPath()%>/post/forumowner.html" class="nav-link">�׾�</a></li>
					<li class="nav-item"><a href="<%=request.getContextPath()%>/contactus/addContactUs.jsp" class="nav-link">�p���ڭ�</a></li>
					<li class="nav-item"><a href="<%=request.getContextPath()%>/owneruser/owneruser.jsp" class="nav-link"> 
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
                         	<form method="POST" action="<%=request.getContextPath()%>/owneruser/owneruser.jsp"> 
                            	<button class="btn d-inline-flex align-items-center collapsed border-0">���~�|�����</button>
                        	</form>
                        </li>
                        <li class="my-2">
                        	<form method="POST" action="<%=request.getContextPath()%>/court/new_court.jsp"> 
                            	<button class="btn d-inline-flex align-items-center collapsed border-0">�ӽФW�[�y�]</button>
                        	</form>
                        </li>
                        <li class="my-2">
                        	<form method="POST" action="<%=request.getContextPath()%>/place/new_place.jsp">
                        		<button class="btn d-inline-flex align-items-center collapsed border-0">�ӽФW�[���a</button>
                            </form> 
                        </li>                        
                        <li class="my-2">
                            <form method="POST" action="<%=request.getContextPath()%>/court/all_court.jsp"> 
                            	<button class="btn d-inline-flex align-items-center collapsed border-0">�y�]�޲z</button>
                        	</form>
                        </li>
                        <br>
						<li class="my-2">
							<form method="POST" action="<%=request.getContextPath()%>/logoutfo.do"> 
								<button class="btn btn-danger">�n�X</button>
								<input type="hidden" name="action" value="logout">
							</form>
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
				<font style="color:red">�Эץ��H�U���~:</font>
				<ul>
					<c:forEach var="message" items="${errorMsgs}">
						<li style="color:red">${message}</li>
					</c:forEach>
				</ul>
			</c:if>


		<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/owneruser/owneruser.do" enctype="multipart/form-data" class="bararea">
          		<span>���~�|���s��:</span>
                <input type="text" id="ouserID" name="ouserID" value="<%=ownerUser.getoUserID()%>" disabled/>
                <br><br>                            
      
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>�b��:</span>
                <input type="text" id="oUserName" name="oUserName" style = "width:250px;" value="<%= (ownerUser == null) ? "yehshaa0106" : ownerUser.getoUserName()%>" />
                <br><br>
                
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>�K�X:</span>
                <input type="text" id="oPassword" name="oPassword" value="<%= (ownerUser == null) ? "LtaS845r" : ownerUser.getoPassword()%>"/>
                <br><br>
                
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>�νs:</span>
                <input type="text" id="compiled" style="position: relative; left: 17px;" name="compiled" value="<%= (ownerUser == null) ? "09071688" : ownerUser.getcompiled()%> " required/>
                <br><br>
                
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>���]�t�d�H�m�W:</span>
                <input type="text" id="oName" name="oName" value="<%= (ownerUser==null)? "���ڵ�" : ownerUser.getoName()%>"/>
                <br><br>
                
    		    <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>�ʧO:</span>
                <input type="text" id="oGender" name="oGender" value="<%= (ownerUser==null)? 0 : ownerUser.getoGender()%>"/>

                <br><br>
                
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>���]�t�d�H�����Ҧr��:</span>
                <input type="text" id="oIDNum" name=oIDNum"  value="<%= (ownerUser==null)? "H212810987" : ownerUser.getoIDNum()%>"/>
                <br><br>
                
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20">                  
                <span>�X�ͦ~���:</span>
                <input type="text" id="oBirth" name="oBirth" value="<%= (ownerUser==null)? "1990-01-06" : ownerUser.getoBirth()%>"/>
                <br><br>
                
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20px" height="20">   
                <span>�s���q��:</span>
                <input type="text" id="oTelephone" name="oTelephone" value="<%= (ownerUser == null) ? "0934862754" : ownerUser.getoTelephone()%>"/>
                <font color="#FF0000" size="-1" nowrap="">�p:0912345678�C</font> 
                <br><br>
                
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20">    
                <span>�p���a�}:</span>
                 <input type="text" id="oAddress" style = "width:250px;" name="oAddress" placeholder="�п�J�p���a�}" 
                value="<%= (ownerUser == null) ? "�s�_���s���ϥ��v��98��6��" : ownerUser.getoAddress()%>"/>
               <br><br>
                
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20">    
                <span>�Ȧ�N���G</span> 
 				<input type="text" id="oBankCode" name="oBankCode" value="<%=(ownerUser == null) ? "808" : ownerUser.getoBankCode()%>"  placeholder="�p:012" required> 
 				<br> 
 				<br>
 				
 				<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt="">  
				<span>�Ȧ�b���G</span> 
 				<input type="text" id="bank_account" name="oBankAccount"  value="<%=(ownerUser == null) ? "95301246813579" : ownerUser.getoBankAccount()%>" required>
				<br>  
				<br>  
                
                
               <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt="">  
 			   <span>�q�l�H�c�G</span>  
 			   <input type="text" id="oEmail" name="oEmail" style = "width:250px;"
 				value="<%=(ownerUser == null) ? "yehshaa0106@gmail.com" : ownerUser.getoEmail()%>" required>  
 			   <font color="#FF0000" size="-1" nowrap="">�q�l�H�c�榡�d��:abc@yahoo.com.tw</font> 
               <br>  
				<br> 
                
                <span>�j�Y�K:</span><br>
                <div id="blob_holder"><img src="<%=request.getContextPath()%>/owneruser/DBGifReader?oUserID=${param.oUserID}" width="300px"></div>
                <input type="file" id="oProfilePic" name="oProfilePic" onclick="previewImage()" multiple="multiple" />
                <br>
                
                <input type="hidden" name="action" value="update">
				<input type="hidden" name="oUserID" value="<%=ownerUser.getoUserID()%>">
                <input type="submit" id="next" value="�e�X�ק�" style="width:150px; height:44px;">
                <br><br><br>
                <br><br>
         </FORM>      
       </div>
   </main>
<!--     </div> -->

    
    <!----------------------------------------------- footer �� ------------------------------------------------------->
    <footer class="footer">
      
        <div class="container">
          <header class="d-flex flex-wrap justify-content-center py-3">
            <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
              <img src = "<%=request.getContextPath()%>/owneruser/pic/footerlogo.svg" alt="SVG"/>     
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
    
<!--======================================= �Ӥ��W�� / �w�� =======================================-->
    <script type="text/javascript">
		//�M�����ܫH��
		function hideContent(d) {
		     document.getElementById(d).style.display = "none";
		}
		
		//�Ӥ��W��-�w����
		var filereader_support = typeof FileReader != 'undefined';
		if (!filereader_support) {
			alert("No FileReader support");
		}
		acceptedTypes = {
				'image/png' : true,
				'image/jpeg' : true,
				'image/gif' : true
		};
		function previewImage() {
			var oProfilePic1 = document.getElementById("oProfilePic");
			oProfilePic1.addEventListener("change", function(event) {
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
				document.getElementById('submit').disabled = false;
			} else {
				blob_holder.innerHTML = "<div  style='text-align: left;'>" + "�� filename: " + file.name
						+ "<br>" + "�� ContentTyp: " + file.type
						+ "<br>" + "�� size: " + file.size + "bytes"
						+ "<br>" + "�� �W��ContentType����: <b> <font color=red>image/png�Bimage/jpeg�Bimage/gif </font></b></div>";
				document.getElementById('submit').disabled = true;
			}
		}
	</script>
	

   
    
</body>
</html>

























</body>
</html>