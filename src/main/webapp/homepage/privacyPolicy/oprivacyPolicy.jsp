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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>���p�v�F��</title>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/generaluser/CSS/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/generaluser/css2/css.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/generaluser/css2/guser.css">
 
  <link rel="stylesheet" href="<%=request.getContextPath()%>/privacyPolicy.css">
</head>

<body>
  <!----------------------------------------------- header �� ------------------------------------------------------->
  <header class="header">
    <div class="container">
      <header class="d-flex flex-wrap justify-content-center py-1">
        <a href="/" class="d-flex align-items-center mb-1 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
          <img src = "<%=request.getContextPath()%>/generaluser/pic/headerlogo.svg" alt="SVG"/>
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
  <div class="privacyPolicy">

    <h1 class="headline">���p�v�F��</h1>
    <div class="introText">
      <p class="introText">
        �D�`�w��z���{�kChill�]�H�U²�٥������^�A���F���z����w�ߪ��ϥΥ��������U���A�ȻP��T�A�S���V�z���������������p�v�O�@�F���A�H�O�ٱz���v�q�A�бz�Ծ\�U�C���e�G
        �kChill�����޲z�t�άO�@�Ө�u�W�w���\�ध������B�t�ΡC
        ���t�ΰ��ѦU��~�H�i��ۦ��|���g��P�����޲z�~�A
        �U��~�H��i�z�L�P�kChill������x���]�w�A�Ѧۦ��Ȥ�i��A�Ȥ��u�W�w���A�P�ɳz�L���x��o��P�ɫȪ����G�C
        ���O�̸g�ѣkChill���x�A����z�L�U��~�H�ѫ�x������צ���o�u�W�w���v���~�A��o�����d��U���]�ֿn���@�~�B�����A
        ���ۤv�߷R�����a�i��u�W�w������O�C
        ���F�O�ٱz�ϥΥ��t�Ϊ��v�q�A�бz�ȥ��Ծ\�U�C�A�ȱ��ڡA��z�������������U�ɨõn�J�A�Y�����w���x�B�åB�P�N���A�ȱ��ڪ��Ҧ����w�G</p>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-10 col-md-push-1">
          <ol class="termList">
            <li style="list-style-type: none;">
              <p>�w�q:</p>
              <p>�kChill�����޲z�t�ΡG²��-���t�ΡC</p>
              <p>�kChill�����G²��-�������C</p>
              <p>�kChill INC.�G²��-�����q�C</p>
              <p>�kChill�����Ϋ�x�޲z�t�ΡG²��-�����x�C</p>
            </li>
          </ol>

          <ol class="termList">
            <li class="termList">�@�B���p�v�O�@�F�����A�νd��
              <ol class="sub">
                <li>���p�v�O�@�F�����e�A�]�A�������p��B�z�b�z�ϥκ����A�Ȯɦ����쪺�ӤH�ѧO��ơC���p�v�O�@�F�����A�Ω󥻺����H�~�������s�������A�]���A�Ω�D�������ҩe�U�ΰѻP�޲z���H���C</li>
              </ol>
            <li class="termList">�G�B�ӤH��ƪ��`���B�B�z�ΧQ�Τ覡:
              <ol class="sub">
                <li>��z�y�X�������ΨϥΥ������Ҵ��Ѥ��\��A�ȮɡA�ڭ̱N���ӪA�ȥ\��ʽ�A�бz���ѥ��n���ӤH��ơA�æb�ӯS�w�ت��d�򤺳B�z�ΧQ�αz���ӤH��ơF�D�g�z�ѭ��P�N�A���������|�N�ӤH��ƥΩ��L�γ~�C</li>
                <li>�������b�z�ϥΪA�ȫH�c�B�ݨ��լd�����ʩʥ\��ɡA�|�O�d�z�Ҵ��Ѫ��m�W�B�q�l�l��a�}�B�p���覡�Ψϥήɶ����C</li>
                <li>��@���s���ɡA���A���|�ۦ�O��������|�A�]�A�z�ϥγs�u�]�ƪ� IP ��}�B�ϥήɶ��B�ϥΪ��s�����B�s�����I���ưO�����A�����ڭ̼W�i�����A�Ȫ��ѦҨ̾ڡA���O�����������ΡA�M����~���G�C</li>
                <li>�����Ѻ�T���A�ȡA�ڭ̷|�N�������ݨ��լd���e�i��έp�P���R�A���R���G���έp�ƾکλ�����r�e�{�A���Ѥ�����s�~�A�ڭ̷|���ݭn���G�έp�ƾڤλ�����r�A�����A�ίS�w�ӤH����ơC</li>
                <li>�z�i�H�H�ɦV�ڭ̴��X�ШD�A�H�󥿩ΧR���������һ`���z���~�Τ����㪺�ӤH��ơC</li>
            <li class="termList">�T�B��Ƥ��O�@
              <ol class="sub">
                <li>�������D�����]��������B���r�t�ε��������U����T�w���]�ƤΥ��n���w�����@���I�A�[�H�O�@�����αz���ӤH��Ʊĥ��Y�檺�O�@���I�A�u�Ѹg�L���v���H���~�౵Ĳ�z���ӤH��ơA�����B�z�H����ñ���O�K�X���A�p���H�ϫO�K�q�Ȫ̡A�N�|����������k�߳B���C</li>
                <li>�p�]�~�Ȼݭn�����n�e�U��L��촣�ѪA�ȮɡA��������|�Y��n�D���u�O�K�q�ȡA�åB�Ĩ����n�ˬd�{�ǥH�T�w��N�T���u�C</li>
              </ol>
            </li>
            <li class="termList">�|�B������~�������s��
              <ol class="sub">
                <li>���������������Ѩ�L�����������s���A�z�]�i�g�ѥ������Ҵ��Ѫ��s���A�I��i�J��L�����C���ӳs���������A�Υ����������p�v�O�@�F���A�z�����ѦҸӳs�������������p�v�O�@�F���C
              </ol>
            </li>
            <li class="termList">���B�P�ĤT�H�@�έӤH��Ƥ��F��
              <p>
                �����������|���ѡB�洫�B�X���ΥX�����z���ӤH��Ƶ���L�ӤH�B����B�p�H���~�Τ��Ⱦ����A�����k�ߨ̾کΦX���q�Ȫ̡A���b�����C
�e�����Ѥ����Υ]�A������G
              </p>

              <ol class="sub">
                <li>�g�ѱz�ѭ��P�N�C</li>
                <li>�k�ߩ���W�w�C</li>
                <li>���K���z�ͩR�B����B�ۥѩΰ]���W���M�I�C</li>
                <li>�P���Ⱦ����ξǳN��s���c�X�@�A��󤽦@�Q�q���έp�ξǳN��s�Ӧ����n�A�B��Ƹg�L���Ѫ̳B�z�λ`���̨̨䴦�S�覡�L�q�ѧO�S�w����ƤH�C</li>
                <li>��z�b�������欰�A�H�ϪA�ȱ��کΥi��l�`�Χ�ê�����P��L�ϥΪ��v�q�ξɭP����H�D���l�`�ɡA�g�����޲z����R���S�z���ӤH��ƬO���F���ѡB�p���αĨ��k�ߦ�ʩҥ��n�̡C</li>
                <li>���Q��z���v�q�C</li>
                <li>�������e�U�t�Ө�U�`���B�B�z�ΧQ�αz���ӤH��ƮɡA�N��e�~�t�өέӤH���ɺʷ��޲z���d�C</li>
              </ol>
            </li>
            <li class="termList">���BCookie ���ϥ�
              <ol class="sub">
                <li>���F���ѱz�̨Ϊ��A�ȡA�������|�b�z���q������m�è��Χڭ̪� Cookie�A�Y�z���@���� Cookie ���g�J�A�z�i�b�z�ϥΪ��s�����\�ඵ���]�w���p�v���Ŭ����A�Y�i�ڵ� Cookie ���g�J�A���i��|�ɭP�����Y�ǥ\��L�k���`���� �C
              </ol>
            </li>
            <li class="termList">�C�B���p�v�O�@�F�����ץ�
              <p>���������p�v�O�@�F���N�]���ݨD�H�ɶi��ץ��A�ץ��᪺���ڱN�Z�n������W�C</p>
            </li>
            <li class="termList">�K�B�S�O���v�ƶ�
              <p>
                �]�ϥΥ��A�ȩҴ��Ѥ���������ά��ʡA�i�භ�z�L�v�t�γf�B�~�̩l�৹���f�~�]���ث~���^���t�e�Ψ��^�A�]���A�|���P�N�ñ��v�kChill�o���Ӧ���������ά��ʤ��ݨD�Υت��A�N�ѷ|���Ҵ��ѥB���t�e�ҥ��n���ӤH��ơ]�p����H�m�W�B�t�e�a�}�B�s���q�ܵ��^�A���Ѥ��v�t�f�B�~�̤ά����t�X���t�ӡA�H�Q�����Ӧ��f�~�]���ث~���^���t�e�B���^�C
              </p>
            </li>
            <li class="termList">�E�B�Ǿڪk�P���Ҫk�|
              <p>
                ���A�ȱ��ڤ������P�A�ΡA�H�λP���A�ȱ��ڦ����ΨϥΪ̻P�����q���]����欰�Ӳ��ͤ���ĳ�ΪȯɡA���̷Ӥ��إ���k�ߤ��H�B�z�A�åH�x�W�x�_�a��k�|���Ĥ@�f���Ҫk�|�A���Y�k�߹����Ҫk�|�t���j��W�w�̡A�����̨�W�w�C
              </p>
            </li>
            <li class="termList">�Q�B��L
              <p>�����q����ϩΰ��楻�A�ȱ��ڥ����v�Q�γW�w�A���c���e�z�v�Q�Φ���v�����C</p>
            </li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <!----------------------------------------------- footer �� ------------------------------------------------------->
  <footer class="footer">

    <div class="container">
      <header class="d-flex flex-wrap justify-content-center py-3">
        <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
          <img src="../../bootstrap1/pic/footerlogo.svg" alt="SVG" />
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
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>