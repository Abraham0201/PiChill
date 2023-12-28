<%@page import="com.pichill.frontstage.reserveorder.service.ReserveOrderServiceFront"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="com.pichill.owneruser.entity.OwnerUser"%>
<%@ page import="com.pichill.reserveorder.entity.ReserveOrder"%>
<%@ page import="com.pichill.frontstage.reserveorder.model.*"%>
<%@ page import="com.pichill.frontstage.reserveorder.service.ReserveOrderServiceFront"%>
<%@ page import="com.pichill.time.*"%>
<%@ page import="com.pichill.place.*"%>
<%@ page import="com.pichill.court.Court"%>

<%
OwnerUser ownerUser = (OwnerUser) session.getAttribute("ownerUser");
System.out.println("ownerUser is " + ownerUser);
Integer oUserID = ownerUser.getoUserID();
System.out.println("oUser is " + oUserID);
ReserveOrderServiceFront reserveOrderSvcF = new ReserveOrderServiceFront();
List<ReserveOrder> list = reserveOrderSvcF.getoUserID(oUserID);
pageContext.setAttribute("list",list);
pageContext.setAttribute("oUserID",oUserID);
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>�q��</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/css1/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/CSS/css.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/CSS/index3.css">
  
      <!---------------datatable------------------------>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">


    <!---------------lightbox ------------------------>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


    <!----------------�פJjquery ------------------------>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>


    <style>
        /* �ۭq CSS �˦� */
        td.text-center {
            text-align: center;
        }

        td:nth-child(1) {
            width: 30%;
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
					<li class="nav-item"><a href="#" class="nav-link"> 
					<img src="<%=request.getContextPath()%>/owneruser/DBGifReader?oUserID=${ownerUser.oUserID}"  alt="SVG" class="rounded-circle"/>���~�|������</a></li>
				</ul>
			</header>
		</div>
	</header>
      
      
    <!----------------------------------------------- aside �� ------------------------------------------------------->
    <div class="main_content">
    <aside class="aside">
        <div class="parent_container">
            <h2 class="h6 pt-4 pb-3 mb-4 border-bottom" id="ah6">�q��</h2>
                <nav class="small" id="toc">
                    <ul class="list-unstyled">                       
                        <li>&nbsp</li>
                        	<li class="my-2">
							<button
								class="btn d-inline-flex align-items-center collapsed border-0"
								data-bs-toggle="collapse" aria-expanded="false"
								data-bs-target="#contents-collapse"
								aria-controls="contents-collapse">�w���q��</button>
						</li>
                    </ul>
                </nav>
        </div>
    </aside>

<!----------------------------------------------- main �� ------------------------------------------------------->
        <main class="main">
            <br>
            <!--<br>
            <br> -->
            <h2 class="h6 pt-4 pb-3 mb-4 border-bottom">�w�������q��</h2>
            
            <br><br>

            <table id="emailTable" class="display">
                <thead>
                    <tr>
                    
                        <th class="text-center">�q��s��</th>
                        <th class="text-center">���~�|���s��</th>
                        <th class="text-center">�w�����</th>
                        <th class="text-center">�w���ɶ�</th>
                        <th class="text-center">�y�]</th>
                        <th class="text-center">���a</th>
                        <th class="text-center">�w���H��</th>
                        <th class="text-center">�w���H�m�W</th>
                        <th class="text-center">�w���H�q��</th>
                    </tr>
                </thead>
                
                <c:forEach var="reserveOrder" items="${list}" >
                <tbody>
                    <!-- ��椺�e -->
                    <tr>
                    	<td class="text-center">${reserveOrder.reserveOrderID}</td>
                        <td class="text-center">${reserveOrder.ownerUser.oUserID}</td>
                        <td class="text-center">${reserveOrder.reserveDate}</td>
                        <td class="text-center">${reserveOrder.timeRef.reserveTime}</td>
                        <td class="text-center">${reserveOrder.place.placeName}</td>
                        <td class="text-center">${reserveOrder.court.courtName}</td>
                        <td class="text-center">${reserveOrder.orderNum}</td>
                        <td class="text-center">${reserveOrder.generalUser.gName}</td>
                        <td class="text-center">${reserveOrder.generalUser.gTelephone}</td>
                    </tr>
                
                   
               
               
                    </c:forEach>
                    <!-- ��h����椺�e -->
                </tbody>
            </table>

            <!-- Lightbox �����e -->
            <div id="emailContentA" style="display: none;">
                <p>�o�e�ɶ��G2023-11-21 10:00 AM</p>
                <p>�H��D���G�H��D���d��</p>
                <p>�H�󤺮e�G�o�̬O�H�󪺤��e...</p>
            </div>
            <div id="emailContentB" style="display: none;">
                <p>�o�e�ɶ��G2023-11-23 14:00 AM</p>
                <p>�H��D���G�H��D���d��</p>
                <p>�H�󤺮e�G�o�̬O�H�󪺤��e...</p>
            </div>
            <div id="emailContentC" style="display: none;">
                <p>�o�e�ɶ��G2023-11-24 15:00 AM</p>
                <p>�H��D���G�H��D���d��</p>
                <p>�H�󤺮e�G�o�̬O�H�󪺤��e...</p>
            </div>
            <div id="emailContentD" style="display: none;">
                <p>�o�e�ɶ��G2023-11-27 10:00 AM</p>
                <p>�H��D���G�H��D���d��</p>
                <p>�H�󤺮e�G�o�̬O�H�󪺤��e...</p>
            </div>
            <div id="emailContentE" style="display: none;">
                <p>�o�e�ɶ��G2023-11-27 10:00 AM</p>
                <p>�H��D���G�H��D���d��</p>
                <p>�H�󤺮e�G�o�̬O�H�󪺤��e...</p>
            </div>

            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
            <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>

        </main>
    </div>
    </div>
    <script>
        $(document).ready(function () {
            // ��l�� DataTables
            $('#emailTable').DataTable({
                "paging": true, // ��ܤ���
                "pageLength": 10, // �C�����10�����
                "order": [], // �w�]�Ƨǳ]�w
                "columnDefs": [{
                    "targets": 'text-center',
                    "className": 'text-center'
                }] // �]�w�Ҧ�����r�m��
            });

            // �d�ݦ^�Ы��s�ƥ�
            $('#emailTable tbody').on('click', 'i.fa-magnifying-glass', function () {
                var emailId = $(this).data('email-id');
                var lightboxName = 'email' + emailId;
                $('#myModal').css('display', 'block');

                // ��ܬ۹����� Lightbox ���e
                $('[data-lightbox="' + lightboxName + '"]').click();
            });

            // �����ҺA����
            $('.close').click(function () {
                $('#myModal').css('display', 'none');
            });

            // �I�������~�ϰ�A�����ҺA����
            $(window).click(function (e) {
                if (e.target.id === 'myModal') {
                    $('#myModal').css('display', 'none');
                }
            });
        });

    </script>

    <!----------------------------------------------- footer �� ------------------------------------------------------->
    <footer class="footer">

        <div class="container">
            <header class="d-flex flex-wrap justify-content-center py-3">
                <a href="/"
                    class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                    <img src="<%=request.getContextPath()%>/owneruser/pic/footerlogo.svg" alt="SVG"/>
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


</body>

</html>