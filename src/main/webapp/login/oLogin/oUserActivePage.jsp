<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>���~�|�����U���\�|���E��</title>
<style>
body {
	background: url(./pic/m_login.png) no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	position: relative;
	z-index: -100;
}

body, html {
	margin: 0;
	height: 100%;
	overflow: hidden;
}

div.all_place {
	position: absolute;
	top: 50%;
	left: 50%;
	text-align: center;
	transform: translate(-50%, -50%);
	/* border: 2px solid red; */
	background: url(./pic/bb.jpg);
	width: 55%;
	height: 21%;
	border-radius: 12.5px;
}

p.text {
	font-size: 18px;
	color: antiquewhite;
	text-align: center;
}

input.type {
	display: block;
	margin: 0 auto;
	color: #207DCA;
	height: 36px;
	border-radius: 12.5px;
}

input.type:hover {
	background-color: orange;
	color: black;
}
</style>
</head>
<body>
	<div class="all_place">
		<p class="text">
			���߱z�A�w�g���\���U<b>PiChill</b>�|���A�ѩ�|���E���A�]���٤���n�J�C <br>
			�Щ�Q�������m�z���U���H�c�I��s���A�ܦ^�a�z�ɤJ�n�J�e��! ���±z���Y�{!
		</p>
		<form action="#">
			<input type="hidden" name="action" value="" class="type"> <input
				type="submit" name="again" value="���s�o�e�E���s��" class="type">
		</form>
	</div>
</body>
</html>