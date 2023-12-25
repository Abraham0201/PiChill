<%@ page contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pichill.reserveorder.entity.ReserveOrder"%>
<%@ page import="com.pichill.generaluser.entity.*"%>
<%@ page import="com.pichill.generaluser.service.*"%>
<%@ page import="com.pichill.owneruser.entity.*"%>
<%@ page import="com.pichill.time.*"%>
<%@ page import="com.pichill.place.*"%>
<%@ page import="com.pichill.court.*"%>

<%
//�q��Ʈw���X��reserveorder, �]�i�H�O��J�榡�����~�ɪ�reserveorder����
ReserveOrder reserveOrder = (ReserveOrder) request.getAttribute("reserveOrder");
%>
<%
GeneralUser gUser = (GeneralUser) session.getAttribute("generalUser");
%>
<%--<%
 Integer gUserID = 11000001;
 GeneralUserService generalUserSvc = new GeneralUserService();
 GeneralUser generalUser = generalUserSvc.getOneGeneralUser(gUserID);
 pageContext.setAttribute("generaluser",generalUser);
%>--%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
	<title>reserveOrder</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/generaluser/CSS/bootstrap.min.css">
  	<link rel="stylesheet" href="<%=request.getContextPath()%>/generaluser/css2/css.css">
  	<link rel="stylesheet" href="<%=request.getContextPath()%>/generaluser/css2/reserve.css">
	
	
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
                <li class="nav-item"><a href="<%=request.getContextPath()%>/generaluser/main.jsp" class="nav-link">����</a></li>
                <li class="nav-item"><a href="#" class="nav-link">���i</a></li>
                <li class="nav-item"><a href="#" class="nav-link">���]��T</a></li>
                <li class="nav-item"><a href="<%=request.getContextPath()%>/reserveorder/reserveOrder.jsp" class="nav-link">�ڭn�w��</a></li>
                <li class="nav-item"><a href="#" class="nav-link">�׾�</a></li>
                <li class="nav-item"><a href="<%=request.getContextPath()%>/generaluser/guserListOne.jsp" class="nav-link"><img src = "<%=request.getContextPath()%>/generaluser/DBGifReader?gUserID=${generalUser.gUserID}" alt="SVG" class="rounded-circle"/> �|������</a></li>
              </ul>

            </header>
          </div>
    </header>
    
    
    <!----------------------------------------------- aside �� ------------------------------------------------------->
    <div class="main_content">
    <aside class="aside">
        <div class="parent_container">
            <h2 class="h6 pt-4 pb-3 mb-4 border-bottom">�ڭn�w��</h2>
                <nav class="small" id="toc">
                    <ul class="list-unstyled">
                        <li class="my-2">
                          <a class="step1" href="">Step 1 : �w��</a>
                        </li>
                        <li>&nbsp;</li>
                        <li class="my-2">
                          <a class="step2" href="">Step 2 : �T�{�w������</a>
                        </li>
                        <li>&nbsp;</li>
                        <li class="my-2">
                          <a class="step2" href="">Step 3 : �e���I��</a>
                        </li>
                    </ul>
                </nav>
        </div>
    </aside>
    
    <!----------------------------------------------- main �� ------------------------------------------------------->
    <main class="main">
    
    <%-- ���~��C --%>
			<c:if test="${not empty errorMsgs}">
				<font style="color:red">�Эץ��H�U���~:</font>
				<ul>
					<c:forEach var="message" items="${errorMsgs}">
						<li style="color:red">${message}</li>
					</c:forEach>
				</ul>
			</c:if>
  		
      <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/reserveorder/reserveorder.do" enctype="multipart/form-data" class="choice" id="myForm">
            <br>
            <span>�|���s��</span><br>
            <input type="text" id="guserID" name="guserID" value="${param.generalUser.gUserID}">
            <br><br>
            <!-- ��ܲy�� -->
            <div class="col">
              <div class="col" id="choose">
                <label for="country" id="label">��ܲy��</label>
                <select class="form-select" id="ball" name="ball" onchange="updateRegions()">
<%-- 	                <c:forEach var="place" items="${placeSvc.all}"> --%>
<%-- 					  <option value="${reserveOrder.place.placeID}" ${(reserveOrder.param.placeID == reserveOrder.place.placeID)? 'selected':'' } >${reserveOrder.place.ball == 0 ? "�x�y" : place.ball == 1 ? "�Ʋy" : "�вy"} --%>
<%-- 				    </c:forEach> --%>
                  <option value="0">�x�y</option>
                  <option value="1">�Ʋy</option>
                  <option value="2">�вy</option>
                </select>
              </div>
              <br>
            <!-- ��ܦa�� -->
            <div class="col">
              <div class="col" id="choose">
                <label for="loc" id="locLabel">��ܦa��</label>
                <select class="form-select" id="loc" name="loc" disabled onchange="updateCourts()">
                <option value="">�Х���ܲy��</option>
<!--                   <option value="">�Q�s��</option> -->
<!--                   <option>������</option> -->
<!--                   <option>���s��</option> -->
                </select>
              </div>
              <br>
            <!-- ��ܲy�] -->
            <div class="col">
              <div class="col" id="choose">
                <label for="court" id="courtLabel">��ܲy�]</label>
                <select class="form-select" id="court" name="court" disabled onchange="updatePlaces()">
                <option value="">�Х���ܦa��</option>
<%--                 	<c:forEach var="court" items="${courtSvc.all}"> --%>
<%-- 				  	  <option value="${court.courtID}" ${(param.courtID==court.courtID)? 'selected':'' } >${court.courtName} --%>
<%-- 			    	</c:forEach> --%>
                </select>
              </div>
              <br>
              <!-- ��ܳ��a -->
            <div class="col">
              <div class="col" id="choose">
                <label for="place" id="placeLabel">��ܳ��a</label>
                <select class="form-select" id="place" name="place" disabled>
                <option value="">�Х���ܲy�]</option>
<%-- 	                <c:forEach var="place" items="${placeSvc.all}"> --%>
<%-- 					  <option value="${place.placeID}" ${(param.placeID==place.placeID)? 'selected':'' } >${place.placeName} --%>
<%-- 				    </c:forEach> --%>
                </select>
              </div>
              <br>
            <!-- �w����� -->
              <div class="col">
                <p for="reservedate" id="p">�w�����</p>
                <input type="date" id="reserveDate" name="reserveDate" value="${reserveOrder.reserveDate}">
              </div>
        
            <br>
            <!-- �w���ɬq -->
            <div class="col">
              <div class="col" id="choose">
                <label for="country" id="label">�w���ɬq</label>
                <select class="form-select" id="time" name="time" placeholder="�п�ܹw���ɬq">
                  <option value="0">00:00-01:00</option>
                  <option value="1">01:00-02:00</option>
                  <option value="2">02:00-03:00</option>
                  <option value="3">03:00-04:00</option>
                  <option value="4">04:00-05:00</option>
                  <option value="5">05:00-06:00</option>
                  <option value="6">06:00-07:00</option>
                  <option value="7">07:00-08:00</option>
                  <option value="8">08:00-09:00</option>
                  <option value="9">09:00-10:00</option>
                  <option value="10">10:00-11:00</option>
                  <option value="11">11:00-12:00</option>
                  <option value="12">12:00-13:00</option>
                  <option value="13">13:00-14:00</option>
                  <option value="14">14:00-15:00</option>
                  <option value="15">15:00-16:00</option>
                  <option value="16">16:00-17:00</option>
                  <option value="17">17:00-18:00</option>
                  <option value="18">18:00-19:00</option>
                  <option value="19">19:00-20:00</option>
                  <option value="20">20:00-21:00</option>
                  <option value="21">21:00-22:00</option>
                  <option value="22">22:00-23:00</option>
                  <option value="23">23:00-24:00</option>
<%-- 	                <c:forEach var="time" items="${timeSvc.all}"> --%>
<%-- 					  <option value="${time.timeID}" ${(param.timeID==time.timeID)? 'selected':'' } >${time.reserveTime} --%>
<%-- 				    </c:forEach> --%>
                </select>
              </div>
            <br>
            <!-- �H�� -->
            <div class="col">
              <div class="col" id="choose">
                <label for="coupon" id="label">�H��</label><br>
                  <input type="text" id="orderNum" name="orderNum" placeholder="�п�J�w���H��" value="${reserveOrder.orderNum}">
              </div>
            <br>
            <input type="hidden" name="action" value="insert">
<%-- 			<input type="hidden" name="reserveOrderID" value="<%=reserveOrder.getReserveOrderID()%>"> --%>
            <input type="submit" id="next" value="�U�@�B" style="width:150px; height:44px;">&nbsp;
            <input type="reset" id="next" value="����" style="width:150px; height:44px;" onclick="resetForm()">
            <br><br>
            <br><br>
        </form>
        
    </main>
    </div>
    
    <!----------------------------------------------- footer �� ------------------------------------------------------->
    <footer class="footer">
      
        <div class="container">
          <header class="d-flex flex-wrap justify-content-center py-3">
            <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
              <img src = "<%=request.getContextPath()%>/generaluser/pic/footerlogo.svg" alt="SVG"/>     
            </a>
          
            <ul class="nav nav-pillss">
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
<script>
// ===�βy���z��a��===================================================================================
function updateRegions() {
  // ����y����ܮت���
  var selectedBall = document.getElementById("ball").value;

  // ����a�Ͽ�ܮ�
  var locSelect = document.getElementById("loc");

  // �M�Ŧa�Ͽ�ܮت��ﶵ
  locSelect.innerHTML = "";

  // �ھڲy����ܮت��ȰʺA�K�[�a�Ͽﶵ
  if (selectedBall === "0") {
    // �p�G�O�x�y�A�u���_��ϩM�n��ϥi�H��
    addOption(locSelect, "�_���");
    addOption(locSelect, "�n���");
  } else if (selectedBall === "1") {
    // �p�G�O�Ʋy�A�i�H�K�[��L�a�Ϫ��ﶵ
    addOption(locSelect, "������");
    addOption(locSelect, "�U�ذ�");
    addOption(locSelect, "���s��");
    addOption(locSelect, "�����");
  } else if (selectedBall === "2") {
    // �p�G�O�вy�A�i�H�K�[��L�a�Ϫ��ﶵ
    addOption(locSelect, "�j�w��");
    addOption(locSelect, "�j�P��");
    addOption(locSelect, "���s��");
    addOption(locSelect, "�H�q��");
  }

  // ��ܦa�Ͽ�ܮت�����
  // document.getElementById("locLabel").style.display = "block";

  // �ҥΦa�Ͽ�ܮ�
  locSelect.disabled = false;
}

function addOption(select, value) {
  var option = document.createElement("option");
  option.value = value;
  option.text = value;
  select.add(option);
}

// ===�βy����a�Ͽz��y�]===================================================================================
function updateCourts() {
  // ����a�Ͽ�ܮت���
  var selectedLoc = document.getElementById("loc").value;

  // ����y�]��ܮ�
  var courtSelect = document.getElementById("court");

  // �M�Ųy�]��ܮت��ﶵ
  courtSelect.innerHTML = "";

  // ����y����ܮت���
  var selectedBall = document.getElementById("ball").value;

  // �ھڦa�Ͽ�ܮت��ȰʺA�K�[�y�]�ﶵ
  if (selectedLoc === "�j�w��") {
    // �p�G�O�_��ϡA�u�������x�y�]�i�H��
    addOption(courtSelect, "���s�B���]");
  } else if (selectedLoc === "������") {
    addOption(courtSelect, "�����Ʋy��");
  }else if (selectedLoc === "�_���") {
    addOption(courtSelect, "�����x�y�]");
  }else if (selectedLoc === "�j�P��") {
    addOption(courtSelect, "���S��вy�]");
  }else if (selectedLoc === "�U�ذ�") {
    addOption(courtSelect, "�U�ج��O�y�]");
  }else if (selectedLoc === "�H�q��") {
    addOption(courtSelect, "TFK�вy�]");
  }else if (selectedLoc === "�n���") {
    addOption(courtSelect, "BOS�B���]");
  }else if (selectedLoc === "�����") {
    addOption(courtSelect, "��S���B�ʥͬ��]");
  }else if (selectedLoc === "���s��" && selectedBall === "1") {
    addOption(courtSelect, "�s�ͱƲy��");
  }else if (selectedLoc === "���s��" && selectedBall === "2") {
    addOption(courtSelect, "���u�вy��X�]");
  }
  

  // ��ܲy�]��ܮت�����
  // document.getElementById("courtLabel").style.display = "block";

  // �ҥβy�]��ܮ�
  courtSelect.disabled = false;
}

function addOption(select, value) {
  var option = document.createElement("option");
  option.value = value;
  option.text = value;
  select.add(option);
}

//===�βy�]�z����a===================================================================================

function updatePlaces() {
  // ����y�]��ܮت���
  var selectedCourt = document.getElementById("court").value;

// ������a��ܮ�
  var placeSelect = document.getElementById("place");


// �M�ų��a��ܮت��ﶵ
  placeSelect.innerHTML = "";

// �ھڲy�]���ȰʺA�K�[���a�ﶵ

if (selectedCourt === "���s�B���]") {
    // �p�G�O���s�B���]�A�u��A���a�i��
  addOption(placeSelect, "A���a");
} else if(selectedCourt === "�����Ʋy��") {
  addOption(placeSelect, "B���a");
}else if(selectedCourt === "���S��вy�]") {
  addOption(placeSelect, "C���a");
}else if(selectedCourt === "�����x�y�]") {
  addOption(placeSelect, "D���a");
}else if(selectedCourt === "�U�ج��O�y�]") {
  addOption(placeSelect, "E���a");
}else if(selectedCourt === "�s�ͱƲy��") {
  addOption(placeSelect, "A���a");
}else if(selectedCourt === "���u�вy��X�]") {
  addOption(placeSelect, "B���a");
}else if(selectedCourt === "TFK�вy�]") {
  addOption(placeSelect, "C���a");
}else if(selectedCourt === "BOS�B���]") {
  addOption(placeSelect, "D���a");
}else if(selectedCourt === "��S���B�ʥͬ��]") {
  addOption(placeSelect, "E���a");
}
// ��ܳ��a��ܮت�����

// document.getElementById("label").style.display = "block";

  // �ҥγ��a��ܮ�
  placeSelect.disabled = false;

}

function addOption(select, value) {
  var option = document.createElement("option");
  option.value = value;
  option.text = value;
  select.add(option);
}


function resetForm() {
    // ���o��椸��
    var form = document.getElementById("myForm");
    // �ϥΪ�檺 reset ��k�ӭ��m��椤����J���
    form.reset();
  }
</script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>