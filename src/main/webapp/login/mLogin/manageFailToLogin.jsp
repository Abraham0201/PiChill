<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>�޲z���b���Q��w</title>
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
	var basePath = "<%=request.getContextPath()%>"; 
		// �w���ˬd�O�_�i�H����
		var lockoutTime =
	<%=request.getAttribute("lockoutTime")%>
		;
		console.log("��w�ɶ��G" + lockoutTime);
		var delay = lockoutTime - new Date().getTime();
		function check() {
			if (delay > 0) {
				// ��w�ɶ��٨S��A���d�b��e����
				delay = delay - 1000;
				setTimeout(check, 1000);
				console.log("����G" + delay);
			} else {
		
			    location.href = basePath + "/login/mLogin/manageLogin.jsp";
			  }
		}
		setInterval(function() {
			location.reload();

			lockoutTime =<%=request.getAttribute("lockoutTime")%>;
			delay = lockoutTime - new Date().getTime();

			check();

		}, 10000); 
	</script>

</body>
</html>