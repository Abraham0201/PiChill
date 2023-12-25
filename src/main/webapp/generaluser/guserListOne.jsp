<%@ page contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pichill.generaluser.entity.*"%>
<%@ page import="com.pichill.generaluser.service.*"%>
<%@ page import="com.pichill.reserveorder.entity.*"%>
<%@ page import="com.pichill.reserveorder.service.*"%>

<%--<% 
//�q��Ʈw���X��generaluser, �]�i�H�O��J�榡�����~�ɪ�generaluser����
GeneralUser generalUser = (GeneralUser) request.getAttribute("generalUser");
%> --%>

<%
GeneralUser gUser = (GeneralUser) session.getAttribute("generalUser");
%>
<%-- <%
 Integer gUserID = 11000001;
 GeneralUserService generalUserSvc = new GeneralUserService();
 GeneralUser generalUser = generalUserSvc.getOneGeneralUser(gUserID);
 pageContext.setAttribute("generaluser",generalUser);
%>--%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title>guserListOne</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/generaluser/CSS/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/generaluser/css2/css.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/generaluser/css2/guser.css">
	
</head>
<!----------------------------------------------- header �� ------------------------------------------------------->
    <header class="header">
        <div class="container">
            <header class="d-flex flex-wrap justify-content-center py-1">
              <a href="/" class="d-flex align-items-center mb-1 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                <img src = "<%=request.getContextPath()%>/generaluser/pic/headerlogo.svg" alt="SVG"/>     
              </a>
              
            
              <ul class="nav nav-pills">
                <li class="nav-item"><a href="main.jsp" class="nav-link" id="head">����</a></li>
                <li class="nav-item"><a href="#" class="nav-link" id="head">���i</a></li>
                <li class="nav-item"><a href="#" class="nav-link" id="head">���]��T</a></li>
                <li class="nav-item"><a href="<%=request.getContextPath()%>/reserveorder/reserveOrder.jsp" class="nav-link" id="head">�ڭn�w��</a></li>
                <li class="nav-item"><a href="#" class="nav-link" id="head">�׾�</a></li>
                <li class="nav-item"><a href="<%=request.getContextPath()%>/generaluser/select_page.jsp" class="nav-link" id="heads"><img src = "<%=request.getContextPath()%>/generaluser/DBGifReader?gUserID=${generalUser.gUserID}" alt="SVG" class="rounded-circle"/> �|������</a></li>
              </ul>

              
            </header>
          </div>
    </header>
      
      
    <!----------------------------------------------- aside �� ------------------------------------------------------->
    <div class="main_content">
    <aside class="aside">
        <div class="parent_container">
            <h2 class="h6 pt-4 pb-3 mb-4 border-bottom" id="ah6">�|������</h2>
                <nav class="small" id="toc">
                    <ul class="list-unstyled">
                        <li class="my-2">
                          <a class="asidearea" href="<%=request.getContextPath()%>/generaluser/guserListOne.jsp">�|�����</a> 
                        </li>
                        <li>&nbsp</li>
                        <li class="my-2">
                          <a class="asidearea" href="<%=request.getContextPath()%>/reserveorder/listOneOrder.jsp">�y�]�w������</a>                         
                        </li>
                        <li>&nbsp</li>
                        <li class="my-2">
                          <a class="asidearea" href="">�p���ڭ�</a>                         
                        </li>
                        <li>&nbsp</li>
                        <li class="my-2">
                          <a class="asidearea" href="">�n�X</a>                           
                        </li>
                    </ul>
                </nav>
        </div>
    </aside>

    <!----------------------------------------------- main �� ------------------------------------------------------->
    <main class="main">
            <h2 class="h6 pt-4 pb-3 mb-4 border-bottom">�|�����</h2>
            
            <%-- ���~��C --%>
			<c:if test="${not empty errorMsgs}">
				<font style="color:red">�Эץ��H�U���~:</font>
				<ul>
					<c:forEach var="message" items="${errorMsgs}">
						<li style="color:red">${message}</li>
					</c:forEach>
				</ul>
			</c:if>

            
                <span>�|���s��:</span>
                <input type="text" id="guserID" name="guserID" value="${generalUser.gUserID}" disabled>
                <br><br>
                <span>�m�W:</span>
                <input type="text" id="gName" name="gName" value="${generalUser.gName}" disabled>
                <br><br>
                <span>�b��:</span>
                <input type="text" id="gUsername" name="gUsername" value="${generalUser.gUsername}" disabled>
                <br><br>
                <span>�K�X:</span>
                <input type="text" id="gPassword" name="gPassword" value="${generalUser.gPassword}" disabled>
                <br><br>
                <span>�ʺ�:</span>
                <input type="text" id="nicknameID" name="nicknameID" value="${generalUser.nicknameID}" disabled>
                <br><br>
                <span>�q�l�H�c:</span>
                <input type="email" id="gEmail" name="gEmail" value="${generalUser.gEmail}" disabled>
                <br><br>
                <span>�����Ҧr��:</span>
                <input type="text" id="gIDNum" name="gIDNum" value="${generalUser.gIDNum}" disabled>
                <br><br>
                <span>�ʧO:</span>
                <input type="text" id="gGender" name="gGender" value="${generalUser.gGender == 0 ? '�k':'�k'}" disabled>
                <br><br>
                <span>�X�ͦ~���:</span>
                <input type="text" id="gBirth" name="gBirth" value="${generalUser.gBirth}" disabled>
                <br><br>
                <span>������X:</span>
                <input type="text" id="gTelephone" name="gTelephone" value="${generalUser.gTelephone}" disabled>
                <br><br>
                <span>�p���a�}:</span>
                <input type="text" id="gAddress1" name="gAddress" value="${generalUser.gAddress}" disabled>
                <br><br>
                <span hidden>�b�����A:</span>
                <input type="hidden" id="status" name="status" value="${generalUser.status == 0 ? 'normal' : '�Q�ת����v'}" disabled>
                
                <span>�j�Y�K:</span><br>
                <input type="file" id="gProfilePic" name="gProfilePic" previewImage() multiple="multiple" hidden/>
                <img src="<%=request.getContextPath()%>/generaluser/DBGifReader?gUserID=${generalUser.gUserID}" width="100px">
                <br>
                
            <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/generaluser/generaluser.do" enctype="multipart/form-data" class="bararea">  
                <input type="hidden" name="action" value="getOne_For_Update">
				<input type="hidden" name="gUserID" value="${generalUser.gUserID}">
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
			var gProfilePic1 = document.getElementById("gProfilePic");
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