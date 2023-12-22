<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pichill.generaluser.entity.GeneralUser"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%
//��com.emp.controller.EmpServlet.java��238��s�Jreq��empVO���� (������J�榡�����~�ɪ�empVO����)
GeneralUser generalUser = (GeneralUser) request.getAttribute("generalUser");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>�@��|�����U</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-4.1/bootstrap.min.css" />
<!-- Vendor CSS-->
<link
	href="<%=request.getContextPath()%>/backEnd-Website/vendor/animsition/animsition.min.css"
	rel="stylesheet" media="all" />
<link
	href="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet" media="all" />
<link
	href="<%=request.getContextPath()%>/backEnd-Website/vendor/wow/animate.css"
	rel="stylesheet" media="all" />
<link
	href="<%=request.getContextPath()%>/backEnd-Website/vendor/css-hamburgers/hamburgers.min.css"
	rel="stylesheet" media="all" />
<link
	href="<%=request.getContextPath()%>/backEnd-Website/vendor/slick/slick.css"
	rel="stylesheet" media="all" />
<link
	href="<%=request.getContextPath()%>/backEnd-Website/vendor/select2/select2.min.css"
	rel="stylesheet" media="all" />
<link
	href="<%=request.getContextPath()%>/backEnd-Website/vendor/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" media="all" />
<!-- Main CSS-->
<link href="<%=request.getContextPath()%>/backEnd-Website/css/login.css"
	rel="stylesheet" media="all" />
<style type="text/css">
button.au-btn {
	/* border: 2px solid red; */
	background-color: #207DCA;
	/* margin: 5px; */
}

div.register {
	border: 1.5px solid red;
	height: auto;
}

.login-form {
	max-height: 360px;
	overflow-y: auto;
}

.city-select, .area-select {
	display: block;
}

.area-select {
	margin-top: 10px;
	margin-bottom: 10px;
	padding-top: 10px;
	border-top: 1px solid #ddd;
}

div.row div.col-1 input.btn {
	/* 	border: 1px solid red; */
	width: 150%;
	height: 40px;
	margin-bottom: 1px;
}

div.register-link {
	/* border: 1px solid green; */
	margin-top: 0;
}

div.pwd-see {
	display: flex;
	align-items: center;
}

label.pwd-see2 {
	margin-left: 5px;
}

div.modal {
	/* border: 2px solid red; */
	width: 80%;
	height: 80%;
	left: 10%;
	top: 10%;
}

div.modal-content {
	/* border: 2px solid black; */
	width: 100%;
	height: 100%;
	padding-top: 20px;
}

pre {
	/*   position: fixed; */
	/*   top: 0; */
	/*   left: 0; */
	/*   width: 100%; */
	/*   height: 100%; */
	/*   z-index: 999; */
	background: white;
	overflow-y: auto;
	margin-bottom: 0;
}

div.moralf {
/* 	border: 1px solid red;  */
	height: 165px;
	/* position: relative; */
/* 	position: absolute; */

}

button.agreeterm {
/* 	border: 1px solid purple;  */
	background-color: #207DCA;
	color: white;
	margin: 0;
	padding: 0;
	width: 75px;
	border-radius: 5px;
	
	position: absolute;
	right: 46.5%;
}

button.agreeterm: hover {
/* 	border: 1px solid purple;  */
	background-color: orange;
/* 	color: white; */
/* 	margin: 0; */
/* 	padding: 0; */
/* 	width: 75px; */
/* 	border-radius: 5px; */
	
/* 	position: absolute; */
/* 	right: 46.5%; */
}
</style>
</head>
<body class="animsition">
	<div class="all">
		<!-- <img src="./pic/m_login.png" height="1000" width="1000"> -->
	</div>
	<div class="page-wrapper">
		<div class="page-content--bge5">
			<div class="container">
				<div class="login-wrap">
					<div class="login-content">
						<div class="login-logo">
							<a href="#"> <img
								src="<%=request.getContextPath()%>/backEnd-Website/pic/g_register.png"
								alt="CoolAdmin">
							</a>
						</div>
						<div class="login-form">
							<form
								action="${pageContext.request.contextPath }/generaluser/generaluserf.do"
								method="post" enctype="multipart/form-data">
								<div class="form-group">
									<label for="gUsername">�b��</label><font color=red>${errorMsgs.gUsername}</font>
									<input class="au-input au-input--full" type="text"
										name="gUsername" placeholder="�п�J�b��" id="gUsername"
										value="<%=(generalUser == null) ? "" : generalUser.getgUsername()%>">
								</div>
								<div class="form-group">
									<label>�H�c</label><font color=red>${errorMsgs.gEmail}</font> <input
										class="au-input au-input--full" type="text" name="gEmail"
										placeholder="�п�J�H�c"
										value="<%=(generalUser == null) ? "" : generalUser.getgEmail()%>">
								</div>
								<div class="form-group">
									<label>�K�X</label><font color=red>${errorMsgs.gPassword}</font>
									<input class="au-input au-input--full" type="password"
										id="password" name="gPassword" placeholder="�п�J�K�X"
										value="<%=(generalUser == null) ? "" : generalUser.getgPassword()%>">
									<div class="pwd-see">
										<input type="checkbox" id="togglePwd"> <label
											class="pwd-see2" for="togglePwd">��ܱK�X</label>
									</div>
								</div>
								<div class="form-group">
									<label>�A���T�{�K�X</label><font color=red>${errorMsgs.gPaaword2}</font>
									<input class="au-input au-input--full" type="password"
										id="password2" name="gPassword2" placeholder="�ЦA����J�K�X">
									<div class="pwd-see">
										<input type="checkbox" id="togglePwd2"> <label
											class="pwd-see2" for="togglePwd2">��ܱK�X</label>
									</div>
								</div>
								<div class="form-group">
									<label>�m�W</label><font color=red>${errorMsgs.gName}</font> <input
										class="au-input au-input--full" type="text" name="gName"
										placeholder="�п�J�m�W"
										value="<%=(generalUser == null) ? "" : generalUser.getgName()%>">
								</div>
								<div class="form-group">
									<label>�κ�ID</label><font color=red>${errorMsgs.nicknameID}</font>
									<input class="au-input au-input--full" type="text"
										name="nicknameID" placeholder="�п�J�ʺ�ID"
										value="<%=(generalUser == null) ? "" : generalUser.getNicknameID()%>">
								</div>
								<div class="form-group">
									<label>�q��</label><font color=red>${errorMsgs.gTelephone}</font>
									<input class="au-input au-input--full" type="text"
										name="gTelephone" placeholder="�п�J�q��"
										value="<%=(generalUser == null) ? "" : generalUser.getgTelephone()%>">
								</div>
								<div class="form-group">
									<label>�ʧO</label><font color=red>${errorMsgs.gGender}</font> <select
										class="au-input au-input--full" name="gGender">
										<option value="3">�п�ܩʧO</option>
										<option value="0">�k</option>
										<option value="1">�k</option>
									</select>
								</div>
								<div class="form-group">
									<label>�ͤ�</label><font color=red>${errorMsgs.gBirth}</font> 
									<%
													Date today = new Date();
													SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
													String todayStr = sdf.format(today);
													%>
									<input
										class="au-input au-input--full" placeholder="�п�J�ͤ�" max="<%=todayStr%>"
										type="date" name="gBirth"
										value="<%=(generalUser == null) ? "" : generalUser.getgBirth()%>">

								</div>
								<div class=" form-group">

									<label for="text-input">�p���a�}</label><font color=red>${errorMsgs.gAddress}</font>

									<div class="city-select">
										<select class="au-input au-input--full" id="city" name="city"
											required>
											<option value="">�п�ܿ���</option>
										</select>
									</div>
									<div class="area-select">
										<select class="au-input au-input--full" id="area" name="area"
											required>
											<option value="">�п�ܶm����</option>
										</select>
									</div>
									<input type="text" id="text-input" name="gAddress"
										placeholder="�п�J�p���a�}" class="form-control" />
								</div>
								<div class="form-group">
									<label>������</label><font color=red>${errorMsgs.gIDNum}</font> <input
										class="au-input au-input--full" type="text" name="gIDNum"
										placeholder="�п�J������"
										value="<%=(generalUser == null) ? "" : generalUser.getgIDNum()%>">
								</div>
								<div class="form-group">

									<label>���U���</label> <input class="au-input au-input--full"
										type="date" name="gRegistDate"
										value="<%=(generalUser == null) ? "" : generalUser.getgRegistDate()%>">

								</div>
								<div class="form-group">
									<label for="file-input">�W�Ǥj�Y�K</label><font color=red>${errorMsgs.gProfilePic}</font>
									<input type="file" name="gProfilePic" onclick="previewImage()"
										multiple="multiple" onchange="hideContent('upFiles.errors');" value="${generalUser.gProfilePic }"
										class="form-control-file"><img id="imagePreview"
										src="#" alt="Preview" />
								</div>
								<div class="login-checkbox">
									<label onclick="showTerms()"> <input type="checkbox"
										name="agree" disabled>�O�_�P�N�ϥΪ̱���
									</label><font color=red>${errorMsgs.agree}</font>
								</div>

								<div class="row form-group">
									<div class="col-1 col-md-8">
										<input type="hidden" name="action" value="insert"><input
											type="submit" class="btn btn-primary btn-sm" value="���U">
										<i class="fa fa-dot-circle-o"></i>
									</div>
								</div>
							</form>
							<div class="register-link">
								<p>
									�w�g���b���F��? <a
										href="${pageContext.request.contextPath }/login/gLogin/gUserLogin.jsp">�n�J</a>
								</p>
							</div>
						</div>
					</div>
					<div class="left-image">
						<img
							src="<%=request.getContextPath()%>/backEnd-Website/pic/Group 460.png" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal" id="termsModal">
		<div class="modal-content">
			<pre>
        �i  �ϥΪ̱���  �j
        �����|���A�ȱ��کҺ٤��u�|���v�A���̷ӥ����ҩw���[�J�|���{�ǥ[�J�����óq�L�{�Ҫ̡C
        ����z�ϥΥ����A�ȮɡA�Y��ܱz�P�N�ο�u���A�ȱ��ڪ��W�w�ƶ��ά����k�ߤ��W�w�C
        �������O�d���f�֥[�J�|����椧�v�Q�A�t�~�w�[�J�|���̡A������O�d���Ѱ���|����椧�v�Q�C
        �����|���A�ȱ��ڤ��׭q�A�A�Ω�Ҧ��|���A�����׭q���A�ȱ��ڮɡA�N�󥻯��W���i�C
        �|��
        ���ϥΥ����Ҵ��Ѥ��|���A�ȮɡA��[�J�|���ɩҵn�����b���αK�X�ϥΤ��C
        ���|�������ɱb���αK�X���ϥλP�޲z���d���C���ϥθӷ|�����b���αK�X(�L����|�������Ψ�L�H)�Q�Υ����A�ȩҳy���έl�ͤ��Ҧ��欰�ε��G�A�|�����ۦ�t������d���C
        ���|�����b���αK�X�򥢡A�εo�{�L�G�D�ĤT�̵s�ήɡA���ߧY�q�������s�������A�]���Y�ɳq���A�ɭP�����L�k���Ĩ���έק�ɡA�ҳy�����Ҧ��l���A�|�����ۭt���d�C
        ���C�������ϥΥ��A�ȡA����|�����n�X�����������A�H�T�O�z���|���v�q�C
        ���s�βĤT�̷|�����b���αK�X�A�ɭP�ĤT�̩Υ����q�D��L�ĤT�H�Φ�F�������լd�ΰl�D�ɡA�ĤT�̷|���Υ����q���v�V�z�ШD�l�`���v�A�]�A��������D�^�O�ΡB�߮v�O�ΰ��A�l�����C

        �|���n�����
        ���|���n����ƶ����ѱz���H���T�B�̷s�Χ��㪺��ơC
        ���|���n����Ƥ��o�����y�B���굥������(EX�p�ӤH��ƤΫH�Υd���)�A�@�g�o�{�����q�i�ڵ���[�J�|����椧�v�Q�C�ño�H�Ȱ��βפ��|�����A�Y�H�Ϥ��إ�������k�ߡA��N�̪k�l�s�C
        ���|���򥻸��(EX:��}�A�q�ܤΨ�L�n�����)���ܧ�ɡA�Ф��w����s�����ӤH��ơA�T�O�䥿�T�Χ���ʡC�Y�z���Ѫ���Ʀ����~�Τ��ŵ��{�H�A���������v�Ȱ��βפ�z���b���A�éڵ��z�~��ϥΥ��A�ȡC
        �����g�|�����H�P�N�A�����q��h�W���|�N�A�έӤH���p����ƶ}�ܵ��ĤT�̡A�߸�Ʀ@�έ�h�K�����b����(�аѾ\�����u���p�v�O�@�n���v�����W�w)�C
        ���|���������O�ޱK�X�A���i�N�K�X���S�δ��ѵ��L�H���D�ΨϥΡF�H�P�@�ӷ|�������Ҧr���M�K�X�ϥΥ��A�ȩҶi�檺�Ҧ��欰�A���N�Q�{���O�ӷ|�����H�M�K�X�����H���欰�C
        ���|���p�G�o�{���h�æ��ĤT�H�ϥΨ�|�������Ҧr���αK�X�A���ӥߧY�q�������q�A�Ĩ����n�����d���I�C���W�z�q�����o�����������q��|���t������Φ������v�θ��v���d���θq�ȡC

        �ϥΦ欰
        1. �z�ϥΥ��A�Ȥ��@���欰�����ŦX��a�ΰ�ڬ����k�O�W�d�F���ϥΪ̪��@���欰�A�z���ۦ�t������d���C
        2. �z�P�N�������D�k���ت��ΥH�D�k�覡�ϥΥ��A�ȡA�P�T���u���إ�������k�W�κ��ں�������ںD�ҡA�ëO�Ҥ��o�Q�Υ��A�ȱq�ƫI�`�L�H�v�q�ιH�k���欰�C
        3. �z��ϥΥ����|���A�Ȯ�����u�H�U����G
          (1)���l�L�H�H��ΰӼ��v�B�ۧ@�v�����z�]���v�Ψ�L�v�Q���e�C
          (2)�ϥιH�Ϥ��@���ǩε��}���U�Ψ�L���k����r�C
          (3)�j�P�F�v�B�v�Ц�m�����E���סC
          (4)���g�����q�\�i�A���o�Q�Υ��A�ȩΥ������Ҵ��Ѩ�L�귽�A�]�A��������Ϥ��Ʈw�B�s�g�s�@�������n�鵥�A�q�ƥ���ӷ~����欰�A�Ω���s�i�ө��٧U�H�C
          (5)��L�H�ϥ����u�|���A�ȱ��ڡv�����e�C

        �����q�M���v�Q
        �����A�ȩҸ��A�Υ��A�ȩҳs�����@���n��Τ��e�A�Υ����q���s�i�өΦX�٤H�Ҵ��Ѥ����e�A������ۧ@�v�Ψ�L�M���v�Q�Ϊk�ߩҫO�١C
        ����z�ǿ��Ʀܥ����q���Ѥ��A�ȮɡA�z�Y�P�N���@��Ƭ����}���(����H���i�s��)�C�z���v�ó\�i�����q�o�H���s�B�׹��B��s�ΥH��L�Φ��ϥθӤ��e�������Τ@�����A
        �ΧQ�θӤ��e�s�@�l�͵ۧ@�C�l�͵ۧ@���ۧ@�v�x�k�����q�Ҧ��C
        �������q�P�N���̥��ϥα��ڬ��w�A�N�e�z�z����Ƥέl�͵ۧ@�m�󥻺����Ѻ����ϥΪ��s���A�H�Υ����q���ݬ����C��~�A�����D�k��Ѩ�L������Q�ت��ΫI�`�z���v�Q���ϥΡC
        ���Ҧ������������X�{���s�i�ݪO�P���ʰT���A�Ҧ��v�θg���v���������q�Ҧ��A�ϥΪ̰��ƥ����o�����q�P�N�~�A���o�ۦ�ϥΩҦ��T���C
        ���|���P�N�ñ��v�������A�o�����ѭӤH�ƪA�ȩά����[�ȪA�Ȥ��ت��A���ѩһݤ��|����Ƶ��X�@���(�ĤT��)�����w�d�򤺤��B�ΡA�p�|�����P�N�N���ƦC��X�@���(�ĤT��)���~�ΪA�ȦW�椺�A
        �i�q����������W�椤�R�����ơA�æP�ɩ��䥻�����H�~���ʪ��u�f������v�Q�C
        ���P�ɬ����Ѧ�P�B�������R�B�έp�ά�s�B�ά����ѷ|���ӤH�ƪA�ȩΥ[�ȪA�Ȥ��ت��A�|���P�N�����q�B�Υ����q�������X�@�٦�A�o�O���B�O�s�B�çQ�η|���b�������үd�s�β��ͤ���ƤΰO���A
        �P�ɦb�����S�U�Ӹ�Ƥ����ΤU�o���}�Ψϥβέp��ơC
        �����|���ҵn�����ӤH��ơA�|���P�N�������o��X�z���d�򤺻`���B�B�z�B�O�s�B�ǻ��Ψϥθӵ���ơA
        �H���ѨϥΪ̨�L��T�ΪA�ȡB�Χ@���|���έp��ơB�ζi����������欰���լd�Φ�P��s�C

        �פ���v
        �z�ϥΥ��A�Ȥ��欰�Y������H�Ϫk�O�Υ��ϥα��کΦM�`�������βĤT���v�q�����ɡA�����q���v���g�i���z�A�ߧY�ȮɩΥä[�פ�z�ϥΥ��A�Ȥ����v�C
        �K�d�ƶ�
        1.�U�C���εo�ͮɡA���������v�i�H����B���_���ѥ��A�ȡG
          (1)�糧�A�Ȭ����n�w��]�ƶi��󴫡B�ɯšB�O�i�άI�u�ɡC
          (2)�o�ͬ�o�ʤ��q�l�q�H�]�ƬG�ٮɡC
          (3)�Ѩa�Ψ�L���i�ܤO���]���P�ϥ������L�k���ѪA�ȮɡC
        2.�����q���ϥΪ̦b�ϥΥ��A�ȩΨϥΥ��A�ȩҭP�ͤ����󪽱��B�����B�l�ͤ��]���ΫD�]�����l�`�A���t���v�d���C
        3.�ϥΪ̹��W�ǯd������r�B�Ϥ��Ψ䥦��ơA���ۦ�ƥ��F�����q�������]�ɭP�䤺�e�����Τ@���������B���l�A���t����d���C
        4.�����q��ϥΥ��A�Ȥ��γ~�ΩҲ��ͪ����G�A���t����O�ҳd���A�礣�O�һP���A�Ȭ������n��L�ʥ��η|���H�ץ��C
        5.���z�b���������Ҧ����סB�N���Φ欰�ȥN��z�ӤH�F���N�����q���߳��A�����q���t����d���C�����q���ϥΪ̩Ҧۺ٤������A����O�䥿�T�ʡC
        6.�����q�L����o�ͩ󥻪A�ȩγz�L���A�ȩүA�Τ������~�B�����B�]©�Ψ�L�@�����k�欰��z�Υ���H�t�d�C
        7.���z�z�L���A�ȩ��ʶR�Ψ��o�A�γz�L�����q���٧U�̩μs�i�өҥZ�n�B�P��Υ�I������f�~�ΪA�ȡA�z���ۦ�Ӿ��i�୷�I�Ψ̪k�V�ӫ~�ΪA�ȴ��Ѫ̥�A�D�v�A
        �P�����q�����L���A�����q�����t����d���C

        �ק��v
        ����z�}�l�ϥΥ��A�ȮɡA�Y��ܱz�w�R���\Ū�B�A�ѻP�P�N���������ڤ����e�C�����q���v�����ɶ��ק�P�ܧ󥻱��ڤ����e�A�ñN���ӧO�q���|���A
        ��ĳ�z�w���d�\���A�ȱ��ڡC�p�z�󥻱��ڭק�P�ܧ�ᤴ�~��ϥΥ��A�ȡA�h�����z�w�\Ū�B�A�ѻP�P�N���������ڭק���ܧ�C
        �������q���v�ȮɩΥä[�ק�Τ���ѥ��A�ȵ��z�A�z���o�]���n�D������v�C

        ���z�]���v�O�@
        ���������ҨϥΤ��n��B�{���κ����W�Ҧ����e�A�]�A��������ۧ@�B�Ϥ��B�ɮסB��T�B��ơB�����[�c�B�����]�p�A���ѥ������Ψ�L�v�Q�H�̪k�֦��䴼�z�]���v�A
        �]�A��������Ӽ��v�B�M�Q�v�B�ۧ@�v�B��~���K�P�M���޳N���C
        ������H���o�w��ϥΡB�ק�B���s�B���}���e�B��@�B�����B�o��B���}�o��B�i���٭�u�{�B�ѽs�ΤϦV��Ķ�C�p���ޥΩ�����e�z���n��B�{���κ������e�A
        �����̪k���o�������Ψ�L�v�Q�H���ƫe�ѭ��P�N�C�p���H�Ϥ����ơA�z���糧�����Ψ�L�v�Q�H�t�l�`���v�d���]�]�A��������D�^�O�ΤΫ߮v�O�ε��^�C

        ��L�W�w
        ���������ϥΪ̱����A�K�d�����e�A��c�����ϥα��ڤ��@�����C
        ���Y�]�z�ϥΥ��A�Ȥ�����欰�A�ɭP�����q�D�ĤT�H�Φ�F�������լd�ΰl�D�ɡA�����q���v�V�z�ШD�l�`���v�A�]�A��������D�^�O�ΡB�߮v�O�ΰ��A�l�����C

        �����q�w��i�w�����n�w����@�u�@�A���i��ɭP�t�Τ��_�άO�Ȱ��̡A�N�|��Ӫ��p�o�ͫe�A�H�A���覡�i���|���C

        �|�������פ�P�����q�q�����q��
        �������q�㦳���U���A�Ȥ��e�βפ���@�|���b��A�Ȥ��v�Q�C
        ���Y�|���M�w�פ���q�|�����A�i�����H�q�l�l�󪺤覡�q�������q�άO�ѥ����q�Ҵ��Ѥ�����i������A�����q�N���ֵ��P�z���|����ơC
        ���|�����q�����������q�|����椧�q�ȡA�æ۰�����q�|����������_�]�H�����q�q�l�l��o�X������ǡ^�A�ॢ�Ҧ����A�ȩҴ��Ѥ��u�f���v�q�C
        �����קK�c�N���Ƶo�ͭP�Ϸ|�������v�q�l���A��|���q�������q����|�������ɡA�����q�N�A���H�q�l�l��T�{�L�~��A�A�i����P�|�����C
        �i���p�v�F���j
        ���F���z�A�ѷ�z�y�X�ڭ̪������ɡA�Ҩɦ�����ӤH��ơ]�ӤH��ƬO���o�H�ѧO�z�������B�����}����ơA�p�m�W�B�a�}�B�q�l�l��a�}�ιq�ܸ��X�^�O�@���v�Q�A
        �ڭ̱N�v�������p�U�A�Y������N���κðݡA�w��z�P�ڭ��p���C

        ���p�v�F���A�νd��

        ���p�v�F���A�Ω�z�ϥΥ������A�ȮɩҴ��Ѫ��ӤH��ơC�z�g�ѥ������Ҵ��Ѫ��s���I��i�J��L�����ɡA�z�b�Ӻ��������A�Υ����������p�v�O�@�F���C
        �ڭ̦b��ر��p�U�`���z�����
        �����������F��ǽT�����ѱz�A�ȩΦ^�бz�����D�A�]�ӻݭn�бz�b�U�C���p�U���ѭӤH������ơG
        1.��z�n�[�J�������|���H��o�ڭ̪��|���A�Ȯ�
        2.��z�n�V���������ߪA�ȰT����
        3.��z�n�ѥ[�ڭ̩��|�쪺���ʡA�ñĨ��u�W���W��
        4.��z�n�V�����������A�ȮɡA���׸ӪA�ȬO�����εL��
        �ڭ̦p��B�αz�ҵn�����ӤH���
        �ڭ̩Ҧ������ӤH��ơA�D�n�γ~�O�ϧڭ̱o�H��ǽT�����Ѳ��~�ΪA�ȵ��Ȥ�B�����Ȥ᪺�ݨD�B�γq���Ȥᦳ���������̷s�����~�P�A�ȡC
        �ڭ̥�i�ର�����ت��ϥέӤH��ơA�Ҧp�G�]�֡B��Ƥ��R�ά�s���A�H��i�ڭ̪����~�B�A�ȡB�����e�{�覡�B�λP�Ȥ᪺���q�޹D�C�������b���g�z�P�N�e�A
        �����|�N�z�ҵn�����ӤH��T���S�B���ɩ���⵹�ĤT�̡A�άO�N�z����ƨϥΩ󥼨ƥ��i���z����L�γ~�C
        ����z�ӤH��ƪ��ק�P�R��
        ��z�b���������U�����|����A�z�i�H�H�ɧQ�αz��ID�M�K�X���ΧR���z������Ѫ���ơA�H�T�O�䥿�T�ʡC
        �ڭ̦�ɥ����N�z����T���S
        �����������|�b���g�z�P�N�����p�U�V����H�Τ��q�X��ΥX�ɱz���ӤH��ơC���b�Y�Ǳ��p�U�|���ҥ~�C�o�Ǫ��p�]�A�]��������^�G
        1.��z�b���������欰�w�H�ϥ��������A�ȱ��ڡA�Υi��l�`�Χ�ê�������v�q�A�αz���欰�w�ɭP����H�D���l�`�A�u�n�ڭ̬۫H���S�z���ӤH��ƬO���F���ѡB�p���αĨ��k�ߦ�ʩҥ��n�̡C
        2.�q�k���Ψ�L���v�����]�����w���A�n�D���������}�S�w�ӤH��ƮɡA�������N���q�k���X�k�������{�ǡA�H�ι糧�����Ҧ��ϥΪ̦w���Ҷq�U���i�ॲ�n���t�X�ɡC

        ����COOKIE���ϥ�
        ���������i��b�z���q���]�w�è��Υ�����COOKIES�A�H���ѶK�߫K�Q���U���A�ȡCCOOKIE�O�������A���ΨөM�ϥΪ��s�����i�淾�q���@�ا޳N�A���i��b�ϥΪ̪��q�����x�s�Y�Ǹ�T�A
        ���O�ϥΪ̥i�H�ǥ��s�������]�w�A�����έ�����\��A�����\�઺�����N�|�y���z���ॿ�`�ϥΥ������������D�n�\��C

        �b���έӤH������p�O�@
        �����O�ٱz�����p�Φw���A�z���b����Ʒ|�αK�X�O�@�C
        ����z�n�s��|����Ƶ������֦��ӤH��Ƥ����p�����ɡA�������|�n�D�z��J�b���ѧO��ƽT�{�����C
        �����T�O�z���b���έӤH��Ʀw���L���A���������F�P�O���s�U���w������~�A�P�ɤ]�бz�ȥ��n�w����s�z���@�~�t�Ψê`�N���r�C

        ���p�v���ڪ��ק�
        �ѩ��޵o�i�����t�A�����k�W�q�w�������ơA�H�Υ��ӥi�����H�w���������ܾE���]���A�������N�|���ݭn�ק�ڭ̦b�����W�Ҵ��Ѫ����p�v�����A�H����O�ٱz���p�v���߷N�C
        ��ڭ̧������p�v���ڭק�ɡA�ڭ̷|�ߧY�N��Z�n�󥻺������������A�åH���ؼХܴ����z�e���I��\Ū�C
                        </pre>
			<div class="moralf">
				<button class="agreeterm" onclick="agreeTerms()">�P�N</button>
			</div>

		</div>
	</div>
	<%
	java.sql.Date gRegistDate = null;
	try {
		gRegistDate = java.sql.Date.valueOf(request.getParameter("gRegistDate").trim());
	} catch (Exception e) {
		gRegistDate = new java.sql.Date(System.currentTimeMillis());
	}
	%>

	<script>
function showTerms() {
  $("#termsModal").modal("show");  
}
function agreeTerms() {
	  $("#termsModal").modal("hide");
	  $("input[name=agree]").prop("disabled", false); 
	  $("input[name=agree]").prop("checked", true);
	}
</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
// 	$(document).ready(function() {

		
// 		var timeout;
// 		$('#gUsername').on('input', function() {
// 		    clearTimeout(timeout);
// 		    timeout = setTimeout(function() {
// 		        var gUsername = $('#gUsername').val();
// 		        var gUsernameReg = "^[a-zA-Z0-9]{8,12}$";
// 		        if (gUsername !== "") {
// 		        	if (!gUsername.trim().match(gUsernameReg)) {
// 		                $("#accountExistsMessage").text("���ŦX�b���榡");
// 		                $("#accountExistsMessage").css("color", "red");
// 		            } else {
// 				            $.ajax({
<%-- 				                url: "<%=request.getContextPath()%>/generaluser/generaluserf.do?action=checkAccount", --%>
// 				                method: "POST",
// 				                data: { "gUsername": gUsername },
// 				                success: function(data) {
// 				                    console.log("ttt");
// 				                    if (data.exists) {
// 				                        $("#accountExistsMessage").text("���b���w�s�b");
// 				                        $("#accountExistsMessage").css("color", "red");
// 				                    } else {
// 				                        $("#accountExistsMessage").text("���b���i�ϥ�");
// 				                        $("#accountExistsMessage").css("color", "blue");
// 				                    }
// 				                },
// 				                error: function() {
// 				                    $("#accountExistsMessage").text("�ˬd�b�������~");
// 				                }
// 				            });
// 		              }      
// 		        } else {
// 		            $("#accountExistsMessage").text('');
// 		        }
// 		    }, 500); // 500�@����
// 		});
		
// 		var memberemailInput = $("#memberemail");
// 	    var errorMsgMemberEmail = $("font[color='red']");

// 	     // ��ť��J�ت���J�ƥ�
// 	     gUsernameInput.on('input', function() {
// 	        // �����J�ت���
// 	        var inputValue = gUsernameInput.val();

// 	        // �p�G��J�ؤ�����r�A�M�����~�T��
// 	        if (inputValue.trim() !== "") {
// 	            errorMsggUsername.text('');
// 	        }
// 	    });
	</script>
	<script>
		$(document)
				.ready(
						function() {

							//�Ĥ@�h���
							$
									.ajax({
										url : 'https://raw.githubusercontent.com/donma/TaiwanAddressCityAreaRoadChineseEnglishJSON/master/CityCountyData.json',
										type : "get",
										dataType : "json",
										success : function(data) {
											$
													.each(
															data,
															function(key, value) {
																console.log(
																		key,
																		value)
																$('#city')
																		.append(
																				'<option value="'+data[key].CityName+'">'
																						+ data[key].CityName
																						+ '</option>')
															})
										},
										error : function(data) {
											alert("fail");
										}
									});

							//�ĤG�h���
							$("#city")
									.change(
											function() {
												cityvalue = $("#city").val(); //����
												$("#area").empty(); //�M�ŤW������
												$("#area").css("display",
														"inline"); //��{
												$
														.ajax({
															url : 'https://raw.githubusercontent.com/donma/TaiwanAddressCityAreaRoadChineseEnglishJSON/master/CityCountyData.json',
															type : "get",
															dataType : "json",
															success : function(
																	data) {

																// 																eachval = data[cityvalue].AreaList; //�m��
																eachval = [];
																for (let i = 0; i < data.length; i++) {
																	if (data[i].CityName == cityvalue) {
																		eachval = data[i].AreaList;
																	}
																}

																$
																		.each(
																				eachval,
																				function(
																						key,
																						value) {
																					$(
																							'#area')
																							.append(
																									'<option value="'+eachval[key].AreaName+'">'
																											+ eachval[key].AreaName
																											+ '</option>')
																				});
															},
															error : function() {
																alert("fail");
															}
														});
											});

							//�粒����X��ܭ�
							$("#area")
									.change(
											function() {
												cityvalue = $("#city").val(); //����
												areavalue = $("#area").val(); //�m��

												$
														.ajax({
															url : 'https://raw.githubusercontent.com/donma/TaiwanAddressCityAreaRoadChineseEnglishJSON/master/CityCountyData.json',
															type : "get",
															dataType : "json",
															success : function(
																	data) {
																alert(data[cityvalue].CityName
																		+ "-"
																		+ data[cityvalue].AreaList[areavalue].AreaName);
															},
															error : function() {
																alert("fail");
															}

														});
											})

						});
	</script>
	<script>
		var registerDate = document.getElementsByName("registerDate")[0];

		// �c�ط�e���,�榡�� yyyy-mm-dd
		var today = new Date().toISOString().slice(0, 10);

		// �����U��������  
		registerDate.value = today;
	</script>
	<script>
		const password = document.getElementById('password');
		const toggle = document.getElementById('togglePwd');

		toggle.addEventListener('change', function() {
			if (this.checked) {
				password.type = 'text';
			} else {
				password.type = 'password';
			}
		});

		const password2 = document.getElementById('password2');
		const toggle2 = document.getElementById('togglePwd2');

		toggle2.addEventListener('change', function() {
			if (this.checked) {
				password2.type = 'text';
			} else {
				password2.type = 'password';
			}
		});
	</script>
	<script>
	function preview() {

		var fileInput = document.getElementById('uploadImg');
		var file = fileInput.files[0];

		var reader = new FileReader();

		reader.onload = function() {
			document.getElementById('blob_holder').innerHTML = '<img src="' + reader.result + '" width="100px"/>';
		};

		if (file) {
			reader.readAsDataURL(file);
		}

	}
	</script>
	<!-- Jquery JS-->
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/jquery-3.2.1.min.js"></script>
	<!-- proper.min.js first, then bootstrap.min.js -->
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-4.1/popper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-4.1/bootstrap.min.js"></script>
	<!-- Vendor JS       -->
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/slick/slick.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/wow/wow.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/animsition/animsition.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/counter-up/jquery.waypoints.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/counter-up/jquery.counterup.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/circle-progress/circle-progress.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/chartjs/Chart.bundle.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/backEnd-Website/vendor/select2/select2.min.js"></script>
	<!-- Main JS-->
	<script src="<%=request.getContextPath()%>/backEnd-Website/js/main.js"></script>
</body>
</html>