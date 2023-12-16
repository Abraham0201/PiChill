<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>���~�|���n�J</title>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-4.1/bootstrap.min.css" />
  <style type="text/css">
    button.au-btn {
	/* border: 2px solid red; */
	background-color: #207DCA;
	/* margin: 5px; */
}

button.au-btn:hover {
	/* border: 2px solid red; */
	background-color: orange;
	/* margin: 5px; */
}
    div.pwd-see {
	display: flex;
  	align-items: center;
}

label.pwd-see2 {
margin-left: 5px;
}
  </style>
  <!-- Vendor CSS-->
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/animsition/animsition.min.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/wow/animate.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/slick/slick.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/select2/select2.min.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all" />
  <!-- Main CSS-->
  <link href="<%=request.getContextPath()%>/backEnd-Website/css/login.css" rel="stylesheet" media="all" />
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
              <a href="#">
                <img src="<%=request.getContextPath()%>/backEnd-Website/pic/o_login1.png" alt="CoolAdmin" />
              </a>
            </div>
            <div class="login-form">
              <form action="index.html" method="post">
                <div class="form-group">
                  <label>�ϥΪ̫H�c (email)</label>
                  <input class="au-input au-input--full" type="email" name="email" placeholder="Email" />
                </div>
                <div class="form-group">
                  <label>�K�X</label>
                  <input class="au-input au-input--full" type="password" id="password" name="password" placeholder="Password" />
                  <div class="pwd-see">
										<input type="checkbox" id="togglePwd"> <label class="pwd-see2"
											for="togglePwd">��ܱK�X</label>
									</div>
                </div>
                <div class="login-checkbox">
                  <label>
                    <input type="checkbox" name="remember" />�O��ڪ��b��
                  </label>
                  <label>
                    <a href="#">�ѰO�K�X?</a>
                  </label>
                </div>
                <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">
                  �n�J
                </button>
                <!-- <div class="social-login-content">
                                        <div class="social-button">
                                            <button class="au-btn au-btn--block au-btn--blue m-b-20">sign in with facebook</button>
                                            <button class="au-btn au-btn--block au-btn--blue2">sign in with twitter</button>
                                        </div>
                                    </div> -->
              </form>
              <div class="register-link">
                <p>
                  �A�|�����b��?
                  <a href="${pageContext.request.contextPath }/frontstage/ownerUserFront/oUserRegist.jsp">�ڭn���U</a>
                </p>
              </div>
            </div>
          </div>
          <div class="left-image">
            <img src="<%=request.getContextPath()%>/backEnd-Website/pic/Group 460.png" />
          </div>
        </div>
      </div>
    </div>
  </div>
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
	</script>
  <!-- Jquery JS-->
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/jquery-3.2.1.min.js"></script>
  <!-- proper.min.js first, then bootstrap.min.js -->
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-4.1/popper.min.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-4.1/bootstrap.min.js"></script>
  <!-- Vendor JS       -->
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/slick/slick.min.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/wow/wow.min.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/animsition/animsition.min.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/counter-up/jquery.waypoints.min.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/counter-up/jquery.counterup.min.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/circle-progress/circle-progress.min.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/chartjs/Chart.bundle.min.js"></script>
  <script src="<%=request.getContextPath()%>/backEnd-Website/vendor/select2/select2.min.js"></script>
  <!-- Main JS-->
  <script src="<%=request.getContextPath()%>/backEnd-Website/js/main.js"></script>
</body>
</html>