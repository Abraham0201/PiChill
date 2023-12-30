<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pichill.owneruser.entity.OwnerUser"%>
<%@ page import="java.util.*" %>
<%@ page import="com.pichill.court.Court"%>
<%@ page import="com.pichill.frontstage.court.service.CourtServiceFront"%>

<%
OwnerUser ownerUser = (OwnerUser) session.getAttribute("ownerUser");
System.out.println("ownerUser is " + ownerUser);
Integer oUserID = ownerUser.getoUserID();
System.out.println("oUser is " + oUserID);
CourtServiceFront courtSvcF = new CourtServiceFront();
List<Court> list = courtSvcF.getoUserID(oUserID);
pageContext.setAttribute("list",list);
pageContext.setAttribute("oUserID",oUserID);

%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>�K�d����</title>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/css1/bootstrap.min.css">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/CSS/index3.css">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/owneruser/CSS/css.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/disclaimer.css">
 
</head>

<body>
  <!----------------------------------------------- header �� ------------------------------------------------------->
  <header class="header">
    <div class="container">
      <header class="d-flex flex-wrap justify-content-center py-1">
        <a href="/" class="d-flex align-items-center mb-1 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
          <img src="<%=request.getContextPath()%>/owneruser/pic/headerlogo.svg" alt="SVG"/>
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

  <!----------------------------------------------- main �� ------------------------------------------------------->
  <div class="disclaimer">

    <h1 class="headline">�kChill���]���d���K���α��v����</h1>
    
    <div class="container">
      <div class="row">
        <div class="col-md-10-col-md-push-1">
        
            <li class="termList">�@�B��z�b�kChill�q�ҭ����W���U�q�ҽT�{���P�ɡA�z�Y�P�N���C�@��ҵ{���e�M���������ʳ]�I�A�Ӿ�۷�{�ת����I�M�M�I�C���ϱz�����ѻP�èϥΣkChill�Ҵ��Ѫ��U���ҵ{�M�]�I�A�z�P�N�G</li>
              <ol class="sub">
                <li>�ѱz�ӤH�b�i��U���ҵ{�M�ϥγ]�I�ɩҳy�����ˮ`�A�N�ۦ�t�d�C</li>
                <li>�z�P�N�Ҧ����ѻP�kChill�������H���A�]�A����������]�g��̦U���]�g��̡B�޲z�H�B�g�z�H�Ψ�Ҧ����u�B�H���A�Ҥ���z�ӤH���]���t�O�ޤ��d�C���~�A�b���]���g��̡B�޲z�H�B�g�z�H�Ψ�Ҧ����u�B�H�����㭫�j�L�������p�U�A�O�Ҥ���kChill�X�@���U���]�g��̡B�޲z�H�B�g�z�H�Ψ�Ҧ����u�B�H���A�]�z�ѻP�ҵ{�Ψϥγ]�I�ӾD�����H���ΰ]���W�l�`�i��_�D�A�é󦹧K����l�`���v�d���C</li>
                <li>�O�ұz�ӤH���㦳�����Ī��ΰ��d���p�A�L���A�X�ѻP�ҵ{�Ψϥγ]�I�����ΡA ��L���������H���T��z�ѻP�������W�U���]�Ҵ��Ѥ��ҵ{�γ]�I�C</li>
              </ol> 
            <li class="termList">�G�B�z�M�������x�äF�ѣkChill�����W�ҦC�ܪ��Ҧ��ҵ{�Ҭ������B��A��ҵ{�A�z���զb�q�Ƹӵ��ҵ{���e�A�w�����Ը߬��������H���B�U���]���g��̡B�޲z�H�B�ҵ{�H���ÿ�q���ĳ�A�Y�z�ӤH���d���C</li>
            <li class="termList">�T�B�z�P�N��u�U���]�����ڤγW�h�A�ýT���u�U���]�H���Ϋ��ɭ����U�ث��ɡC</li>
            <li class="termList">�|�B�z�P�N�ϥΣkChill�ѻP�U���ҵ{���L�{���A�i��|������ӡB����v�����i��A���ӵ����e�A�z�P�N�kChill�N���ۧ@�v�H�ά������z�]���v�H�A�o�N�z�ӵ��v���B�Ӥ��H����P�Ʀ�覡���s�B��@�B�s��B���}�f�z�B���}�t�X�B���}�W�M�B���}�ǿ�ΥH��L�覡�[�H�Q�ΡA�ño��ĤT�H�i����v�A�ѲĤT�H�ϥΡC</li>
            <li class="termList">���B�z�P�N�����کҫ������]�A�Y�]�t�{�b�Υ��ӥ[�J17FIT���Ҧ��ҵ{���Ѫ̡C</li>
              <p class="thankyou">
                �kChill �P�±z���[�J�C
              </p>
        </div>
      </div>
    </div>
  </div>
  <!----------------------------------------------- footer �� ------------------------------------------------------->
  <footer class="footer">

    <div class="container">
      <header class="d-flex flex-wrap justify-content-center py-3">
        <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
          <img src="<%=request.getContextPath()%>/owneruser/pic/footerlogo.svg" alt="SVG"/>
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

  <script src="./JS/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>