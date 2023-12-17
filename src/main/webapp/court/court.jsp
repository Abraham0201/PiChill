<%@ page contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pichill.court.Court"%>
    
<%
//�q��Ʈw���X��court, �]�i�H�O��J�榡�����~�ɪ�court����
Court court = (Court) request.getAttribute("court");
%>  
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>�y�]�޲z</title>
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/css1/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/CSS/css.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/CSS/index3.css">
  
  <!----------------�פJjquery ------------------------>
    <script src="<%=request.getContextPath()%>https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous">
    </script>
    
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
	input[type="courtAddress"] {
  	cursor: pointer;
  	width: 450px;
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
					<li class="nav-item"><a href="#" class="nav-link"> 
					<img src="<%=request.getContextPath()%>/owneruser/pic/face.svg" alt="���~�|���Y��" />���~�|������</a></li>
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
            <h2 class="h6 pt-4 pb-3 mb-4 border-bottom">�y�]�޲z</h2>
            
            <%-- ���~��C --%>
			<c:if test="${not empty errorMsgs}">
				<font style="color:red">�Эץ��H�U���~:</font>
				<ul>
					<c:forEach var="message" items="${errorMsgs}">
						<li style="color:red">${message}</li>
					</c:forEach>
				</ul>
			</c:if>

		<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/court/court.do" enctype="multipart/form-data" class="bararea">
			<span>�y�]�s��:</span>
				<input type="text" id="courtID" name="courtID" value="<%=court.getCourtID()%>" disabled/>
				<br><br>
<!-- 			<span>���~�|���s��:</span> -->
<%-- 				<input type="text" id="ouserID" name="ouserID" value="<%=court.getoUserID()%>" disabled/> --%>
<!-- 				<br><br> -->
<!-- 			<span>�޲z���s���s��:</span> -->
<%-- 				<input type="text" id="manageID" name="manageID" value="<%=court.getmanageID()%>" disabled/> --%>
<!-- 				<br><br> -->
		    <span>�W�[�ɶ�:</span>
                <input type="text" id="oPassword" name="courtOnTime" value="<%=court.getcourtOnTime()%>" disabled/>
                <br><br>
		 	<span>�ӽФW�[�ɶ�:</span>
                <input type="text" id="courtApplyTime" name="courtApplyTime" value="<%=court.getcourtApplyTime()%>" disabled/>
                <br><br>
		
		 	<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>�y�]�W��:</span>
                <input type="text" id="courtName" style="position: relative; left: 17px;" name="courtName" value="<%= (court == null) ? "���s�B���]" : court.getcourtName()%> " required/>
                <br><br>
		
			<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>�y�]�q��:</span>
                <input type="text" id="courtTelephone" style="position: relative; left: 17px;" name="courtTelephone" value="<%= (court == null) ? "022562622" : court.getcourtTelephone()%> " required/>
                <br><br>
		
			<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>�y�]�a�}:</span>
                <input type="text" id="courtAddress" style="position: relative; left: 17px;" name="courtAddress" value="<%= (court == null) ? "�O�_���j�w�ϳq�Ƶ�11��95��1��" : court.getcourtAddress()%> " required/>
                <br><br>		
		
			<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>�y�]����:</span>
                <input type="text" id="courtRule" style="width:400px ; height:300px ;position: relative; left: 17px;" name="courtRule" 
                value="<%= (court == null) ? "�����]�T��l�ҡB�����B�ܰs�A���i�p�U�оǡC <br>�T��U���@���B���s�B���ޡB�]�J�Υ���ê���@�w�����ǡB�H�Ϥ��Ǩ}�U�Χ��`���Ƥ��欰�C �ӤH�Q�����~�B�]���Цۦ槴���O�ޡA�Y�򥢥��]�����t�d�C �T����a�B����d���i�J���ߡA���U���H�P�M���ɪ������b�����C �w���������B�}���f�B��Ŧ�f�B�ǬV�f�B����@�p�ɤ��B�����L�C�B�s��B�Y���ίv�����ɩΨ�L�����餣�A�̡A�T��ϥΥ��]�ơC �Y�]�ϥΤ���y���]��/�������l�A�����ߦ��v�n�D�l�a���v�C ���g�P�N�T��ϥ��]�����y�A�p�]���ʩί��ɳ��a�A�ݥ��I�O����ϥΡC �������p�����ɨƩy�A�o�t��W�C�B�׭q���A�åH�{�����i�ΪA�ȤH���������ǡC" 
                		: court.getcourtRule()%> " required/>
                <br><br>
		
			<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>�a��:</span>
                <input type="text" id="loc" style="position: relative; left: 50px;" name="loc" value="<%= (court == null) ? "�j�w��" : court.getloc()%> " required/>
                <br><br>		
		
			<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>�}�]�ɶ�:</span>
                <input type="text" id="courtOpenTime" style="position: relative; left: 17px;" name="courtOpenTime" value="<%= (court == null) ? "07:00:00" : court.getcourtOpenTime()%> " required/>
                <br><br>	
		
			<img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20"> 
                <span>�}�]�ɶ�:</span>
                <input type="text" id="courtOpenTime" style="position: relative; left: 17px;" name="courtCloseTime" value="<%= (court == null) ? "21:00:00" : court.getcourtCloseTime()%> " required/>
                <br><br>	
		
		
		        <span>�ӽЪ��A:</span>
                <% int courtAS = court.getcourtApplyStatus(); %>
				<select name="courtApplyStatus ��" disabled="disabled">
					<option value="0" <%=courtAS == 0 ? "selected" : ""%>>�f�֤�</option>
					<option value="1" <%=courtAS == 1 ? "selected" : ""%>>�f�ֳq�L</option>
					<option value="1" <%=courtAS == 1 ? "selected" : ""%>>�f�֥��q�L</option>
				</select>
                <br><br>
                
                <span>�y�]�Ϥ�:</span><br>
                <div id="blob_holder">
                <img src="<%=request.getContextPath()%>/court/DBGifReader?oUserID=${param.courtID}" width="200px">
                </div>
                <input type="file" id="courtPic" name="courtPic" onclick="previewImage()" multiple="multiple" />
                <br>
                
                
                
                <input type="hidden" name="action" value="update">
				<input type="hidden" name="courtID" value="<%=court.getCourtID()%>">
                <input type="submit" id="next" value="�e�X�ק�" style="width:150px; height:44px;">
                <br><br><br>
                <br><br>
		
		</FORM>
       
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
			var cProfilePic1 = document.getElementById("courtPic");
			cProfilePic1.addEventListener("change", function(event) {
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