<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>

<p id="lockMessage">�b���w�Q��w�A�еy�ԦA�աC</p>

<script>
// �w���ˬd�O�_�i�H����
var lockoutTime = <%= request.getAttribute("lockoutTime") %>;
setInterval(function() {
    if (new Date().getTime() >  lockoutTime) {
        // ��w�ɶ��w�g�����A���s�ɦV��n�J����
        window.location.href = "/login/mLogin/manageLogin";
    }
}, 1000); // �C���ˬd�@��
</script>

</body>
</html>