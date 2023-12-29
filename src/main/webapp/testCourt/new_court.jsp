<%@page import="com.pichill.owneruser.entity.OwnerUser"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.pichill.court.*"%>
<%@ page import="com.pichill.place.*"%>
<%@ page import="java.util.Date" %>
    
 <%
//��com.emp.controller.EmpServlet.java��238��s�Jreq��empVO���� (������J�榡�����~�ɪ�empVO����)
Court court = (Court) request.getAttribute("court");
%>   
    

    

<%
OwnerUser ownerUser = (OwnerUser) session.getAttribute("ownerUser");
System.out.println(ownerUser);
%> 

    
<!DOCTYPE html>
<html lang="zh-Hant">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>���~�|��-�ӽФW�[�y�]</title>
   <link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/css1/bootstrap.min.css" media="all" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/CSS/css.css" media="all" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/CSS/index3.css" media="all" />
	
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
                    <img src="<%=request.getContextPath()%>/owneruser/pic/headerlogo.svg" alt="SVG" />
                </a>

			    <ul class="nav nav-pills">
			     <li class="nav-item"><a href="<%=request.getContextPath()%>/homepage/owneruserhome.jsp" class="nav-link">����</a></li>
			     <li class="nav-item"><a href="<%=request.getContextPath()%>/ownerusernotify/notify.jsp" class="nav-link">�q��</a></li>
			     <li class="nav-item"><a href="<%=request.getContextPath()%>/post/forumowner.html" class="nav-link">�׾�</a></li>
			     <li class="nav-item"><a href="<%=request.getContextPath()%>/contactus/addContactUs.jsp" class="nav-link">�p���ڭ�</a></li>
			     <li class="nav-item"><a href="<%=request.getContextPath()%>/testoUser/ouserlistOne.jsp" class="nav-link"> 
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
                         	<form method="POST" action="<%=request.getContextPath()%>/testoUser/ouserlistOne.jsp"> 
                            	<button class="btn d-inline-flex align-items-center collapsed border-0">���~�|�����</button>
                        	</form>
                        </li>
                        <li class="my-2">
                        	<form method="POST" action="<%=request.getContextPath()%>/testCourt/new_court.jsp"> 
                            	<button class="btn d-inline-flex align-items-center collapsed border-0">�ӽФW�[�y�]</button>
                        	</form>
                        </li>
                        <li class="my-2">
                        	<form method="POST" action="<%=request.getContextPath()%>/testCourt/new_place.jsp">
                        		<button class="btn d-inline-flex align-items-center collapsed border-0">�ӽФW�[���a</button>
                            </form> 
                        </li>                        
                        <li class="my-2">
                            <form method="POST" action="<%=request.getContextPath()%>/testCourt/all_court.jsp"> 
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
        
        	<div>
                <span style="color:#FF0000;  position: relative;left: 250px;">�e��
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt="">�����񶵥�</span>
       		</div>
           		<br>
           		
			<div class="error">
				<%-- ���~��C --%>
					<c:if test="${not empty errorMsgs}">
						<font style="color: red">�Эץ��H�U���~:</font>
						  <ul style="list-style-type: none">
							<c:forEach var="message" items="${errorMsgs}">
								<li style="color: red">${message}</li>
							</c:forEach>
						  </ul>
					</c:if>
			</div>
						
			<br>
			<form action="${pageContext.request.contextPath }/court/courtf.do"
			 METHOD="post"	enctype="multipart/form-data">
			
            
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt="">
                <label for="courtName">���]�W��</label>
                <input type="text" id="court" name="courtName" 
                value="<%=(court == null)? "" :court.getCourtName()%>" size="45" required>
                <br><br>

                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt="">
                <label  for="time">�}�]�ɶ�</label>
                <input type="time" value="<%=(court==null)? "09:00:00" : court.getCourtOpenTime()%>"  min="09:00" max="18:00" name="courtOpenTime">

                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt="" style="position: relative; left: 15px;">
                <label style="position: relative; left: 15px;" for="time">���]�ɶ�</label>
                <input type="time" value="<%=(court==null)? "21:00:00" :court.getCourtCloseTime()%>" style="position: relative; left: 15px;" name="courtCloseTime">
                <br><br>

                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt="">
                <label for="loc">�ϰ�</label>
                <input type="text" value="<%=(court==null)? "" :court.getLoc()%>" style="position: relative; left: 31px;" name="loc">
                <font color="#FF0000" size="-1"  style="position: relative;;left: 30px;">�p:������</font>
                
<!--                 <select style="position: relative; left: 31px;"> -->
<!--                     <option>�п�ܳ��]�ϰ�</option> -->
<!--                     <option>������</option> -->
<!--                     <option>�j�P��</option> -->
<!--                     <option>���s��</option> -->
<!--                     <option>�Q�s��</option> -->
<!--                     <option>�j�w��</option> -->
<!--                     <option>�U�ذ�</option> -->
<!--                     <option>�H�q��</option> -->
<!--                     <option>�h�L��</option> -->
<!--                     <option>�_���</option> -->
<!--                     <option>�����</option> -->
<!--                     <option>�n���</option> -->
<!--                     <option>��s��</option> -->
<!--                 </select> -->
                <br>
                <br>
                
                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt="">
                <label for="tax_id">���]�a�}</label>
                <input type="text" id="tax_id" name="courtAddress" 
                value="<%=(court == null)? "" : court.getCourtAddress()%>" style="width: 300px" required>
                <font color="#FF0000" size="-1" style="position: relative;left: 1px; ">�]�t�m��ϡB����D�Ϊ��P�����C</font><br><br>

                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt="">
                <label for="phone">���]�q��</label>
                <input type="text" id="text" name="courtTelephone" value="<%=(court == null)? "" : court.getCourtTelephone()%>"  required>
<!--                 <font color="#FF0000" size="-1" nowrap="" style="position: relative;left: 1px;">�]�t�ϰ�X �p:0212345678�C</font> -->
                <br><br>

                <img src="<%=request.getContextPath()%>/owneruser/pic/stR01.png" width="20" height="20" alt="">
                <label for="courtRule" style="position: relative; ">���]����</label><br><br>
<%--                 <input type="hidden" id="courtRule" name="courtRule" value="<%=(court ==null)? "" :court.getCourtRule()%>" > --%>
                 <textarea name="CourtRule" id="courtRule" placeholder="Write something.."style="height:300px;width:600px;position: relative;left:23px;" required><%=(court == null) ? "�п�J����" : court.getCourtRule()%></textarea>
                
                <script type="text/javascript">
                	function changeText(){
                		document.getElementById().value=document.getElementById().value;
                	}
                </script>
                
                
                <br><br><br>
                

                <label for="courtPic" style="position: relative;left: 23px;">���]�Ӥ�</label><br><br>
                	<input type="file" value="${court.courtPic}"
					id="uploadImg" name="courtPic" onchange="preview()" multiple="multiple"
					class="form-control-file" />
					<div id="blob_holder">
					  <img src="#" width="300px" >
					</div>						
                <br>
                
                
            <!-------- �e�X���s  ------->
            <input type="hidden" name="action" value="insert">
			<input type="submit"  value="�e�X�s�W" style="width: 150px; height: 44px;">

                 
                
            </form>
            
            <br><br><br>


        </main>
    </div>

    
  <!--======================================= �Ӥ��W�� / �w�� =======================================-->
    <script>
    function preview() {

		var fileInput = document.getElementById('uploadImg');
		var file = fileInput.files[0];

		var reader = new FileReader();

		reader.onload = function() {
			document.getElementById('blob_holder').innerHTML = '<img src="' + reader.result + '" width="300px"/>';
		};

		if (file) {
			reader.readAsDataURL(file);
		}

	}
	</script>




    <!----------------------------------------------- footer �� ------------------------------------------------------->
    <footer class="footer">

        <div class="container">
            <header class="d-flex flex-wrap justify-content-center py-3">
                 <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
              		<img src = "<%=request.getContextPath()%>/generaluser/pic/footerlogo.svg" alt="SVG"/>     
            	</a>

                <ul class="nav nav-pills">
                    <li class="nav-item"><a href="<%=request.getContextPath()%>/homepage/termOfUse/otermOfUse.jsp" class="nav-link">�ϥΪ̱���</a></li>
                    <li class="nav-item"><a href="#" class="nav-link"></a></li>
                    <li class="nav-item"><a href="<%=request.getContextPath()%>/homepage/privacyPolicy/oprivacyPolicy.jsp" class="nav-link">���p�v�F��</a></li>
                    <li class="nav-item"><a href="#" class="nav-link"></a></li>
                    <li class="nav-item"><a href="<%=request.getContextPath()%>/homepage/disclaimer/odisclaimer.jsp" class="nav-link">�K�d����</a></li>
                    <li class="nav-item"><a href="#" class="nav-link"></a></li>
                    <li class="nav-item"><a href="#" class="nav-link"></a></li>
                </ul>
            </header>
        </div>
    </footer>

    <script src="<%=request.getContextPath()%>/JS/bootstrap.min.js"></script>

</body>

</html>