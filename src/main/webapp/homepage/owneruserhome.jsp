<%@ page contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pichill.owneruser.entity.*"%>
    
   
<%
//�q��Ʈw���X��owneruser, �]�i�H�O��J�榡�����~�ɪ�owneruser����
OwnerUser oUser = (OwnerUser) session.getAttribute("ownerUser");
System.out.println("oUser = " + oUser);
Integer oUserID = oUser.getoUserID();
System.out.println("oUser is" + oUserID);
%> 
    
    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>���~�|������</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/CSS/style.css">
	
	<link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/css1/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/CSS/css.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/CSS/index3.css">
	
    <style type="text/css">
        .jumbotron {
            padding: 4rem 2rem;
            margin-bottom: 2rem;
            background-color: #DAE4F4;
            border-radius: .3rem;
        	}
       .btn {
	    	background: #FF9F1B;
	    	color: white;
	    	padding: 9px 26px;
	    	border-radius: 20px;
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
                    <img src="<%=request.getContextPath()%>/generaluser/pic/headerlogo.svg" alt="SVG" />
                </a>


                <ul class="nav nav-pills">
                    <li class="nav-item"><a href="<%=request.getContextPath()%>/homepage/owneruserhome.jsp" class="nav-link">����</a></li>
                    <li class="nav-item"><a href="<%=request.getContextPath()%>/ownerusernotify/notify.jsp" class="nav-link">�q��</a></li>
                    <li class="nav-item"><a href="#" class="nav-link">�׾�</a></li>
                    <li class="nav-item"><a href="#" class="nav-link">�p���ڭ�</a></li>
                    <li class="nav-item"><a href="<%=request.getContextPath()%>/owneruser/owneruser.jsp" class="nav-link"><img src = "<%=request.getContextPath()%>/owneruser/DBGifReader?oUserID=${ownerUser.oUserID}" alt="SVG" class="rounded-circle"/>�|������</a></li>
              	</ul>
                

            </header>
        </div>
    </header>
 <!---------------------- �����ϰ�1 ------------------------->
    <section id='intro'>
        <div class="jumbotron">
            <div class="container">
                <div class='row'>
                    <div class='col-md-12'>

                        <h1>���~�|���z�n</h1>
                        <p>�Q��[���ĤƧQ�βy�]?&emsp;�Q����h�H�ݨ��ۤv?</p>
                        <a class='btn' href="<%=request.getContextPath()%>/court/new_court.jsp">�W�[�y�]</a>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <br>



    <!---------------------- �����ϰ�2 ------------------------->
    <div class="wrap">
        <!-- item 1  -->
        <div class="item">
            <div class="pic">
                <img
                    src="https://plus.unsplash.com/premium_photo-1661414415246-3e502e2fb241?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D">
            </div>
            <div class="txt">
                <h2>�����k Chill ���~�|�����n�B</h2>
                <P>�k Chill���z���ѤW�[���]�����x</P>
                <p>�q�޲z�u�W�w���B���y��I�B����s����</p>
                <p>�k Chill�వ�o��z�Q������h</p>
            </div>
        </div>

        <!-- item 2  -->
        <div class="item">
            <div class="txt">
                <h2>���a���Q�ݨ�?</h2>
                <p>���z���ѳ��a�G�۪����|!</p>
            </div>
            <div class="pic">
                <img
                    src="https://images.unsplash.com/photo-1577416412292-747c6607f055?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D">
            </div>
        </div>

        <!-- item 3  -->
        <div class="item">
            <div class="pic">
                <img
                    src="https://images.unsplash.com/photo-1553729459-efe14ef6055d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D">
            </div>
            <div class="txt">
                <h2>�W�[���]�禬</h2>
                <p>�U�ȹw�����]�A�ߧY�u�W�u�W��I</p>
                <p>�U�ȸg��̤��Ȧ������</p>
            </div>
        </div>
        <!-- item 4  -->
        <div class="item">
            <div class="txt">
                <h2>�M���O���`���Z��...</h2>
                <p>�ڭ̴��ѽ׾°�</p>
                <p>�W�[�������ʡA�i�H�H�ɵo���K��</p>
            </div>
            <div class="pic">
                <img
                    src="https://images.unsplash.com/photo-1513757378314-e46255f6ed16?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D">
            </div>
        </div>
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

</body>
</html>