<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�@��|���b����w</title>
</head>
<body>

<p id="lockMessage">�b���w�Q��w�A�еy�ԦA�աC</p>

<script>
// �w���ˬd�O�_�i�H����
var lockoutTime = <%= request.getAttribute("lockoutTime") %>;
setInterval(function() {
    if (new Date().getTime() >  lockoutTime) {
        // ��w�ɶ��w�g�����A���s�ɦV��n�J����
        window.location.href = "<%=request.getContextPath()%>/login/gLogin/gUserLogin.jsp";
    }
}, 10000); // �C���ˬd�@��
</script>
</body>
</html>