<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>�@��|���b����w</title>
<style>
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
	overflow: hidden;
}

.src {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

p {
	position: absolute;
	top: 0;
	left: 50%;
	transform: translateX(-50%);
	white-space: nowrap;
	font-size: 30px;
	color: red;
}
</style>
</head>
<body>

	<img src="<%=request.getContextPath()%>/backEnd-Website/pic/404.jpg"
		alt="404" class="src">
	<p id="lockMessage">�ѩ�A��J�h�����~�b���K�X�A�b���w�Q���A��10�����H��A�i��n�J�C</p>

	<script>
// �w���ˬd�O�_�i�H����
var lockoutTime = <%=request.getAttribute("lockoutTime")%>;
setInterval(function() {
    if (new Date().getTime() >  lockoutTime) {
        // ��w�ɶ��w�g�����A���s�ɦV��n�J����
        window.location.href = "<%=request.getContextPath()%>
		/login/gLogin/gUserLogin.jsp";
					}
				}, 1000); // �C���ˬd�@��
	</script>
</body>
</html>