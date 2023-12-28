<%@page import="com.pichill.owneruser.entity.OwnerUser"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ page import="com.pichill.court.*"%>
<%@ page import="com.pichill.place.*"%>
<%@ page import="java.util.Date" %>
    
 <%
//��com.emp.controller.EmpServlet.java��238��s�Jreq��empVO���� (������J�榡�����~�ɪ�empVO����)
Place newPlace = (Place) request.getAttribute("newPlace");
%>   
    
<%
Place place = (Place) session.getAttribute("place");
%>
    
<%
Court court = (Court) session.getAttribute("court");
// �g��
// Integer courtID = 61000001;
// CourtService courtSvc = new CourtService();
// Court court = courtSvc.getOneCourt(courtID);
// pageContext.setAttribute("court",court);
%>    
<%
OwnerUser ownerUser = (OwnerUser) session.getAttribute("ownerUser");
%> 

    
<!DOCTYPE html>
<html lang="zh-Hant">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>���~�|��-�ӽФW�[���a</title>
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
		input[type="text"] {
	  	cursor: pointer;
	  	width: 150px;
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
			<form action="${pageContext.request.contextPath }/place/place.do"
			      METHOD="post"	enctype="multipart/form-data">
			      
			      <div class="row form-group">
				
					<span>��ܲy�]:</span>
					<div class="balles" style="width:100px; ">
						<select name="courtID">
							 <c:forEach var="court" items="${courtSvc.all}"> 
 					    		<option value="${court.courtID}" ${(param.courtID==court.courtID)? 'selected':'courtID' } >${place.placeName}
 				    		</c:forEach> 
						</select>
					</div>
					<br><br>
					
					<span>�y��:</span>
					<div class="ballss" style="width:100px; ">
						<div class="form-check">
						  <div class="radio" >
							<select name="ball" style="position:relative;left: 20px;">
							  <option value="0"	${(newPlace.ball==0)? 'selected': ''}>�x�y</option>
							  <option value="1" ${(newPlace.ball==1)? 'selected': ''}>�Ʋy</option>
							  <option value="2" ${(newPlace.ball==2)? 'selected': ''}>�вy</option>
							</select>
						  </div>
						</div>
					</div>
					<br><br>
					
					<span>���a�W��:</span>
					<br><br>
					<input type="text" id="text-input" name="placeName"	
					       value="<%=(newPlace == null) ? "" : newPlace.getPlaceName()%>" 
					       placeholder="�pA�BB" class="form-control"/>
					<font color="#ff0000" size="4" nowrap="">�@����g�@�ӦW��</font>	
        			<br><br><br><br>       
        			
					<span>���a�O��</span>
					<br><br>
					<input type="text" id="text-input" name="placeFee"
					value="<%=(newPlace == null) ? "" : newPlace.getPlaceFee()%>" class="form-control" />
					<font color="#000000" size="5"  style="width: 150px;">��/��</font>       
					<br><br>
					
					
					<!-------- �e�X���s  ------->
            		<input type="hidden" name="action" value="insert">
					<input type="submit" value="�e�X�s�W" style="width: 150px; height: 44px;position:relative;left: 400px;">
					       
			      </div>
			</form>    
			      
            <br><br><br>

        </main>
    </div>

     <!----------------------------------------------- footer �� ------------------------------------------------------->
    <footer class="footer">

        <div class="container">
            <header class="d-flex flex-wrap justify-content-center py-3">
                <a href="/"
                    class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                    <img src = "<%=request.getContextPath()%>/owneruser/pic/footerlogo.svg" alt="SVG"/>
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