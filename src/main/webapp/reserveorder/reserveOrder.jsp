<%@ page contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pichill.reserveorder.entity.ReserveOrder"%>
<%@ page import="com.pichill.reserveorder.service.ReserveOrderService"%>
<%@ page import="com.pichill.generaluser.entity.*"%>
<%@ page import="com.pichill.generaluser.service.*"%>
<%@ page import="com.pichill.owneruser.entity.*"%>
<%@ page import="com.pichill.time.*"%>
<%@ page import="com.pichill.place.*"%>
<%@ page import="com.pichill.court.*"%>

<%
GeneralUser gUser = (GeneralUser) session.getAttribute("generalUser");
Integer gUserID = gUser.getgUserID();
pageContext.setAttribute("gUserID",gUserID);
%>

<% 
//�q��Ʈw���X��reserveorder, �]�i�H�O��J�榡�����~�ɪ�reserveorder����
ReserveOrder reserveOrder = (ReserveOrder) request.getAttribute("reserveOrder");
 %>
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
	<title>reserveOrder</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/generaluser/CSS/bootstrap.min.css">
  	<link rel="stylesheet" href="<%=request.getContextPath()%>/generaluser/css2/css.css">
  	<link rel="stylesheet" href="<%=request.getContextPath()%>/generaluser/css2/reserve.css">
  	
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	
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
                <li class="nav-item" id="head"><a href="<%=request.getContextPath()%>/homepage/main.jsp" class="nav-link">����</a></li>
                <li class="nav-item" id="head"><a href="<%=request.getContextPath()%>/announcement/announcementHome.jsp" class="nav-link">���i</a></li>
                <li class="nav-item" id="head"><a href="<%=request.getContextPath()%>/ginquirycourt/all_courtinfo.jsp" class="nav-link">���]��T</a></li>
                <li class="nav-item" id="head"><a href="<%=request.getContextPath()%>/reserveorder/reserveOrder.jsp" class="nav-link">�ڭn�w��</a></li>
                <li class="nav-item" id="head"><a href="<%=request.getContextPath()%>/post/forum.html" class="nav-link">�׾�</a></li>
                <li class="nav-item" id="head1"><a href="<%=request.getContextPath()%>/generaluser/guserListOne.jsp" class="nav-link">
                <img src = "<%=request.getContextPath()%>/generaluser/DBGifReader?gUserID=${generalUser.gUserID}" alt="SVG" class="rounded-circle"/> �|������</a></li>
                
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
  		
      <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/reserveorder/reserveorder.do" class="choice" id="myForm">
            <br>
            <br><br>
            <!-- ��ܲy�� -->
            <div class="col">
              <div class="col" id="choose">
                <label for="ball" id="ballLabel">��ܲy��</label>
                <select class="form-select" id="ball" name="ball" onclick="updateRegions()" required>
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
                <select class="form-select" id="loc" name="loc" disabled onclick="updateCourts()" required>
                <option value="">�Х���ܲy��</option>
                </select>
              </div>
              <br>
            <!-- ��ܲy�] -->
            <div class="col">
              <div class="col" id="choose">
                <label for="court" id="courtLabel">��ܲy�]</label>
                <select class="form-select" id="courtID" name="courtID" disabled onclick="updatePlaces()" required>
                <option value="">�Х���ܦa��</option>
                </select>
              </div>
              <br>
              <!-- ��ܳ��a -->
            <div class="col">
              <div class="col" id="choose">
                <label for="place" id="placeLabel">��ܳ��a</label>
                <select class="form-select" id="placeID" name="placeID" disabled onclick="updateTotalCost()" required>
                <option value="">�Х���ܲy�]</option>
                </select>
              </div>
              <br>
            <!-- �w����� -->
              <div class="col">
                <p for="reservedate" id="p">�w�����</p>
                <input type="date" id="reserveDate" name="reserveDate" value="${reserveOrder.reserveDate}" min="" required>
              </div>
        
            <br>
            <!-- �w���ɬq -->
            <div class="col">
              <div class="col" id="choose">
                <label for="time" id="label">�w���ɬq</label>
                <select class="form-select" id="timeID" name="timeID" placeholder="�п�ܹw���ɬq" required>
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
                </select>
              </div>
            <br>
            <!-- �H�� -->
            <div class="col">
              <div class="col" id="choose">
                <label for="orderNum" id="label">�H��</label><br>
                  <input type="text" id="orderNum" name="orderNum" placeholder="�п�J�w���H��" value="${reserveOrder.orderNum}" required>
              </div>
            <br>
			<!-- �`���B(�o�������) -->
            <div class="col" hidden>
              <div class="col" id="choose">
                <label for="totalCost" id="label">�`���B</label><br>
                  <input type="text" id="totalCost" name="totalCost" value="">
              </div>
            </div>  
            <br>
			
			<!-- ���~�|��(�o�������) -->
            <div class="col" hidden>
              <div class="col" id="choose">
                <label for="oUserID" id="label">���~�|��</label><br>
                  <input type="text" id="oUserID" name="oUserID" value="">
              </div>
            </div>  
            <br>
            <!-- �q�檬�A(�o�������) -->
            <div class="col" hidden>
              <div class="col" id="choose">
                <label for="orderStatus" id="label">�q�檬�A</label><br>
                  <input type="text" id="orderStatus" name="orderStatus" value="">
              </div>
            </div>  
            <br>
            <input type="hidden" name="action" value="insert">
            <input type="hidden" name="action" value="getOneList">
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
              <li class="nav-item"><a href="<%=request.getContextPath()%>/homepage/termOfUse/termOfUse.jsp" class="nav-link">�ϥΪ̱���</a></li>
              <li class="nav-item"><a href="#" class="nav-link"></a></li>
              <li class="nav-item"><a href="<%=request.getContextPath()%>/homepage/privacyPolicy/privacyPolicy.jsp" class="nav-link">���p�v�F��</a></li>
              <li class="nav-item"><a href="#" class="nav-link"></a></li>
              <li class="nav-item"><a href="<%=request.getContextPath()%>/homepage/disclaimer/disclaimer.jsp" class="nav-link">�K�d����</a></li>
              <li class="nav-item"><a href="#" class="nav-link"></a></li>
              <li class="nav-item"><a href="#" class="nav-link"></a></li>
            </ul>
          </header>
        </div>
      </footer>
      

<script>
function updateRegions() {
  // ����y����ܮت���
  var selectedBall = document.getElementById("ball").value;

  // ����a�Ͽ�ܮ�
  var locSelect = document.getElementById("loc");

  // �M�Ŧa�Ͽ�ܮت��ﶵ
  locSelect.innerHTML = "";

  // �ھڲy����ܮت��ȰʺA�K�[�a�Ͽﶵ
  if (selectedBall == "0") {
    // �p�G�O�x�y�A�u���_��ϩM�n��ϥi�H��
    addOption(locSelect, "�_���");
    addOption(locSelect, "�n���");
  } else if (selectedBall == "1") {
    // �p�G�O�Ʋy�A�i�H�K�[��L�a�Ϫ��ﶵ
    addOption(locSelect, "������");
    addOption(locSelect, "�U�ذ�");
    addOption(locSelect, "���s��");
    addOption(locSelect, "�����");
  } else if (selectedBall == "2") {
    // �p�G�O�вy�A�i�H�K�[��L�a�Ϫ��ﶵ
    addOption(locSelect, "�j�w��");
    addOption(locSelect, "�j�P��");
    addOption(locSelect, "���s��");
    addOption(locSelect, "�H�q��");
  }

  // �ҥΦa�Ͽ�ܮ�
  locSelect.disabled = false;
}

function addOption(select, value) {
  var option = document.createElement("option");
  option.value = value;
  option.text = value;
  select.add(option);
  console.log("aaa");
}

// ========================================================================================== //
function updateCourts() {
  // ����a�Ͽ�ܮت���
  var selectedLoc = document.getElementById("loc").value;

  // ����y�]��ܮ�
  var courtSelect = document.getElementById("courtID");

  // �M�Ųy�]��ܮت��ﶵ
  courtSelect.innerHTML = "";

  // ����y����ܮت���
  var selectedBall = document.getElementById("ball").value;

  
  
  // �ھڦa�Ͽ�ܮت��ȰʺA�K�[�y�]�ﶵ
  if (selectedLoc == "�j�w��") {
    // �p�G�O�_��ϡA�u�������x�y�]�i�H��
    addOption1(courtSelect, 61000001 , "���s�B���]");
    document.getElementById("oUserID").value = 12000001;
    
  } else if (selectedLoc == "������") {
    addOption1(courtSelect, 61000002 , "�����Ʋy��");
    document.getElementById("oUserID").value = 12000002;
    
  }else if (selectedLoc == "�_���") {
    addOption1(courtSelect, 61000004 , "�����x�y�]");
    document.getElementById("oUserID").value = 12000004;
    
  }else if (selectedLoc == "�j�P��") {
    addOption1(courtSelect, 61000003 , "���S��вy�]");
    document.getElementById("oUserID").value = 12000003;
    
  }else if (selectedLoc == "�U�ذ�") {
    addOption1(courtSelect, 61000005 , "�U�ج��O�y�]");
    document.getElementById("oUserID").value = 12000005;
    
  }else if (selectedLoc == "�H�q��") {
    addOption1(courtSelect, 61000008 , "TFK�вy�]");
    document.getElementById("oUserID").value = 12000008;
    
  }else if (selectedLoc == "�n���") {
    addOption1(courtSelect, 61000009 , "BOS�B���]");
    document.getElementById("oUserID").value = 12000009;
    
  }else if (selectedLoc == "�����") {
    addOption1(courtSelect, 61000010 , "��S���B�ʥͬ��]");
    document.getElementById("oUserID").value = 12000010;
    
  }else if (selectedLoc == "���s��" && selectedBall == "1") {
    addOption1(courtSelect, 61000006 , "�s�ͱƲy��");
    document.getElementById("oUserID").value = 12000006;
    
  }else if (selectedLoc == "���s��" && selectedBall == "2") {
    addOption1(courtSelect, 61000007 , "���u�вy��X�]");
    document.getElementById("oUserID").value = 12000007;
    
  }
  

   // �ҥβy�]��ܮ�
   courtSelect.disabled = false;
}

function addOption1(select, value , text) {
   var option = document.createElement("option");
   option.value = value;
   option.text = text;
   select.add(option);
   console.log("bbb");
}


// =============================================================================== //

function updatePlaces() {
    // ����y�]��ܮت���
    var selectedCourt = document.getElementById("courtID").value;

    // ����a�Ͽ�ܮت���
    var selectedLoc = document.getElementById("loc").value;

    // ����y����ܮت���
    var selectedBall = document.getElementById("ball").value;
 
    //������a��ܮ�
    var placeSelect = document.getElementById("placeID");

    // �M�ų��a��ܮت��ﶵ
    placeSelect.innerHTML = "";


	// �ھڲy�]���ȰʺA�K�[���a�ﶵ
	
	if (selectedCourt == 61000001) {
	    // �p�G�O���s�B���]�A�u��A���a�i��
	  addOption2(placeSelect, 62000001 , "A���a");
	  
	} else if(selectedCourt == 61000002) {
	  addOption2(placeSelect, 62000002 ,"B���a");
	  
	}else if(selectedCourt == 61000003) {
	  addOption2(placeSelect, 62000003 ,"C���a");
	  
	}else if(selectedCourt == 61000004) {
	  addOption2(placeSelect, 62000004 , "D���a");
	  
	}else if(selectedCourt == 61000005) {
	  addOption2(placeSelect, 62000005 , "E���a");
	  
	}else if(selectedCourt == 61000006) {
	  addOption2(placeSelect, 62000006 , "A���a");
	  
	}else if(selectedCourt == 61000007) {
	  addOption2(placeSelect, 62000007 , "B���a");
	  
	}else if(selectedCourt == 61000008) {
	  addOption2(placeSelect, 62000008 , "C���a");
	  
	}else if(selectedCourt == 61000009) {
	  addOption2(placeSelect, 62000009 , "D���a");
	  
	}else if(selectedCourt == 61000010) {
	  addOption2(placeSelect, 62000010 , "E���a");
	}


  // �ҥγ��a��ܮ�
  placeSelect.disabled = false;

}

//=============================================================================== //

//�����e���
var currentDate = new Date().toISOString().split('T')[0];
	
// �]�m min �ݩ�
document.getElementById("reserveDate").min = currentDate;
	
function addOption2(select, value , text) {
	var option = document.createElement("option");
		option.value = value;
		option.text = text;
		select.add(option);
		console.log("ccc");
}

// =============================================================================== //

function updateTotalCost() {
	console.log("updateTotalCost ��ƳQ�ե�");
    // ����y����ܮت���
    var selectedBall = document.getElementById("ball").value;
	 
    //����a�Ͽ�ܮت���
    var selectedLoc = document.getElementById("loc").value;
  
    // ����y�]��ܮت���
    var selectedCourt = document.getElementById("courtID").value;

    // ������a��ܮت���
    var selectedPlace = document.getElementById("placeID").value;


    // �ھڳ��aID�]�w�`���B

	if (selectedPlace == 62000001) {
		document.getElementById("totalCost").value = 450;
	  
	} else if(selectedPlace == 62000002) {
		document.getElementById("totalCost").value = 450;
	  
	}else if(selectedPlace == 62000003) {
		document.getElementById("totalCost").value = 350;
	  
	}else if(selectedPlace == 62000004) {
		document.getElementById("totalCost").value = 500;
	  
	}else if(selectedPlace == 62000005) {
		document.getElementById("totalCost").value = 800;
	  
	}else if(selectedPlace == 62000006) {
		document.getElementById("totalCost").value = 1200;
	  
	}else if(selectedPlace == 62000007) {
		document.getElementById("totalCost").value = 300;
	  
	}else if(selectedPlace == 62000008) {
		document.getElementById("totalCost").value = 300;
	  
	}else if(selectedPlace == 62000009) {
		document.getElementById("totalCost").value = 600;
	  
	}else if(selectedPlace == 62000010) {
		document.getElementById("totalCost").value = 1000;
	}
	console.log("�`���B�w��s");
	}



$(document).ready(function() {
  $("#next").on("click", function() {
    // ����Ҧ��ݭn����
    var selectedBall = $("#ball").val();
    var selectedLoc = $("#loc").val();
    var selectedCourt = $("#courtID").val();
    var selectedPlace = $("#placeID").val();
    var reserveDate = $("#reserveDate").val();
    var selectedTime = $("#timeID").val();
    var orderNum = $("#orderNum").val();
    var totalCost = $("#totalCost").val();
    var oUserID = $("#oUserID").val();

    alert(totalCost);
    // �ϥ� AJAX �o�e POST �ШD
    $.ajax({
      action: "insert",
      type: "POST",
      url: "http://localhost:8081/PiChill/reserveorder/reserveorder.do",  // ��ݺ��I
      data: {
        "ball": selectedBall,
        "loc": selectedLoc,
        "courtID": selectedCourt,
        "placeID": selectedPlace,
        "reserveDate": reserveDate,
        "timeID": selectedTime,
        "orderNum": orderNum,
        "totalCost": totalCost,
        "oUserID": oUserID,
        "oderStatus": oderStatus
        
      },
      dataType: "json",
      success: function(response) {
        // �B�z���\�^��
        
        console.log("���\�I");
      },
      error: function(error) {
        // �B�z���~�^��
        console.error("�o�Ϳ��~: ", error);
      }
    });
    
    
	
  });
});

</script>

</body>
</html>