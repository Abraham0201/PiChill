<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pichill.court.Court"%>    
    
<%
//��com.emp.controller.EmpServlet.java��238��s�Jreq��empVO���� (������J�榡�����~�ɪ�empVO����)
Court court = (Court) request.getAttribute("court");
%>    
 
    
<!DOCTYPE html>
<html lang="zh-Hant">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>���]�޲z</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS1/bootstrap.min.css">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/index3.css">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/css.css">
<!----------------�פJjquery ------------------------>
    <script src="<%=request.getContextPath()%>https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous">
    </script>

    <style>
        img.preview {
            width: 200px;
        }

        ul {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        ul>li {
            display: inline-block;
            vertical-align: top;
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
            <!-- <div class="row g-3"> -->
                <h2 class="h6 pt-4 pb-3 mb-4 border-bottom">�ӽФW�[�y�]</h2>
                <!-- <form action="/action_page.php"> -->
        
                <span style="color:#FF0000;  position: relative;left: 250px;">�e��<img src="pic/stR01.png" width="20" height="20" alt="">�����񶵥�</span>
            </p>

            <form action="/submit" method="post" enctype="multipart/form-data" style="width: 800px;">
                <img src="pic/stR01.png" width="20" height="20" alt="">
                <label for="courtName">���]�W��</label>
                <input type="courtName" id="court" name="courtName" 
                value="<%=court.getCourtName()%>" size="45" required>
                <br><br>

                <img src="pic/stR01.png" width="20" height="20" alt="">
                <label  for="time">�}�]�ɶ�</label>
                <input type="time" value=value="<%=court.getCourtOpenTime()%>"  min="09:00" max="18:00">

                <img src="pic/stR01.png" width="20" height="20" alt="" style="position: relative; left: 15px;">
                <label style="position: relative; left: 15px;" for="time">���]�ɶ�</label>
                <input type="time" value="<%=court.getCourtCloseTime()%>" min="09:00" max="18:00" style="position: relative; left: 15px;"><br><br>

                <img src="pic/stR01.png" width="20" height="20" alt="">
                <label for="loc">�ϰ�</label>
                <select style="position: relative; left: 31px;">
                    <option>�п�ܳ��]�ϰ�</option>
                    <option>������</option>
                    <option>�j�P��</option>
                    <option>���s��</option>
                    <option>�Q�s��</option>
                    <option>�j�w��</option>
                    <option>�U�ذ�</option>
                    <option>�H�q��</option>
                    <option>�h�L��</option>
                    <option>�_���</option>
                    <option>�����</option>
                    <option>�n���</option>
                    <option>��s��</option>
                </select>
                <br>
                <br>
                
                <img src="pic/stR01.png" width="20" height="20" alt="">
                <label for="tax_id">���]�a�}</label>
                <input type="courtAddress" id="tax_id" name="tax_id" 
                value="<%=court.getCourtAddress()%>" required>
                <font color="#FF0000" size="-1" nowrap="" style="position: relative;;left: 20px;">�]�t�m��ϡB����D�Ϊ��P�����C</font><br><br>

                <img src="pic/stR01.png" width="20" height="20" alt="">
                <label for="phone">���]�q��</label>
                <input type="tel" id="phone" name="phone" 
                value="<%=court.getCourtTelephone()%>"  required>
                <font color="#FF0000" size="-1" nowrap="">�]�t�ϰ�X �p:02-12345678�C</font><br><br>

                <label for="courtRule" style="position: relative; left: 23px;">���]����</label><br><br>
                <textarea id="subject" name="subject" value="<%=court.getCourtRule()%>"  placeholder="Write something.."style="height:300px;width:600px;position: relative;left:23px;"></textarea>
                <br><br><br>

                <label for="courtPic" style="position: relative;left: 23px;">���]�Ӥ�</label><br><br>
                <form action="/somewhere/to/upload" enctype="multipart/form-data">
                <input type="file" id="progressbarTWInput" accept="image/gif, image/jpeg, image/png" style="position: relative;left: 23px;"/>
                <br><br>
                <img id="preview_progressbarTW_img" src="#" 
                value="<%=court.getCourtPic()%>"
                style="height: 300px;position:relative;left: 23px;"/>
                </form>
                
                <!-------- �e�X���s  ------->
            
				<input type="hidden" name="action" value="update">
				<input type="hidden" name="oUserID" value="<%=court.getCourtID()%>">
				<input type="button" value="�T�{�ק�" name="���s�W��" style="width: 150px; height: 44px;"> 
                
                
                
            </form>
            <br><br><br>





         



            <br><br><br><br><br>

            
        </main>
    </div>
    </div>
    <script>
        //------------���]�Ϥ� -------------------
        $("#progressbarTWInput").change(function () {
            readURL(this);
        });

        function readURL(input) {
            if (input.files && input.files[0]) {

                var reader = new FileReader();

                reader.onload = function (e) {

                    $("#preview_progressbarTW_img").attr('src', e.target.result);

                }
                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>



    <!----------------------------------------------- footer �� ------------------------------------------------------->
    <footer class="footer">

        <div class="container">
            <header class="d-flex flex-wrap justify-content-center py-3">
                <a href="/"
                    class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                    <img src="./pic/footerlogo.svg" alt="SVG" />
                </a>

                <ul class="nav nav-pills">
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

    <script src="<%=request.getContextPath()%>/JS/bootstrap.min.js"></script>
</body>

</html>