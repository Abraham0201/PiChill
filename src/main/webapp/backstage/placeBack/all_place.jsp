<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="com.pichill.place.Place"%>
<%@ page import="com.pichill.backstage.place.model.*"%>
<%@ page import="com.pichill.backstage.place.service.PlaceServiceBack"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>

<%
PlaceServiceBack placeSvcB = new PlaceServiceBack();
List<Place> list = placeSvcB.getAll();
pageContext.setAttribute("list", list);
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>�Ҧ����a</title>

  <!-- jquery�s�� (�@�w�n�bdatatable�e��!) -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

  <!-- datatable�s�� -->
  <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.css" />

  <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.js"></script>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-4.1/bootstrap.min.css" />
  <style type="text/css"></style>
  <!-- Vendor CSS-->
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/animsition/animsition.min.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/wow/animate.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/slick/slick.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/select2/select2.min.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/font-awesome-4.7/css/font-awesome.css" rel="stylesheet" media="all" />
  <link href="<%=request.getContextPath()%>/backEnd-Website/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all" />
  <!-- <link href="./vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all"> -->
  <!-- Main CSS-->
  <link href="<%=request.getContextPath()%>/backEnd-Website/css/main.css" rel="stylesheet" media="all" />
  <link rel="stylesheet" href="<%=request.getContextPath()%>/backEnd-Website/css/all.css" media="all" />
  <link rel="stylesheet" href="<%=request.getContextPath()%>/backEnd-Website/css/place.css" media="all" />
  <style>
/*     div.dataTables_scrollHeadInner { */
/*       width: 100% !important; */
/*     } */

/*     div.dataTables_scrollHeadInner>table.table-data3 { */
/*       margin: 0 auto !important; */
/*     } */
  </style>
</head>
<body class="animsition all-employees-page">
  <div class="page-wrapper">
    <!-- HEADER MOBILE-->
    <header class="header-mobile d-block d-lg-none">
      <div class="header-mobile__bar" style="background-color: #207dca">
        <div class="container-fluid">
          <div class="header-mobile-inner">
            <a class="logo" href="index.html">
              <img src="./pic/pi_chill_text.png" alt="chill" style="height: 80px" />
            </a>
            <button class="hamburger hamburger--slider" type="button">
              <span class="hamburger-box">
                <span class="hamburger-inner"></span>
              </span>
            </button>
          </div>
        </div>
      </div>
      <nav class="navbar-mobile">
        <div class="container-fluid">
          <ul class="navbar-mobile__list list-unstyled">
            <li class="has-sub">
              <a class="js-arrow" href="#">
                <i class="fas fa-tachometer-alt"></i>���u�޲z</a>
              <ul class="list-styled navbar__sub-list js-sub-list">
                <li>
                  <a href="all_manage.html">�Ҧ����u���</a>
                </li>
                <li>
                  <a href="new_manage.html">�s�W���u���</a>
                </li>
              </ul>
            </li>
            <li class="has-sub">
              <a class="js-arrow" href="#">
                <i class="fas fa-tachometer-alt"></i>�@��|���޲z</a>
              <ul class="list-styled navbar__sub-list js-sub-list">
                <li>
                  <a class="active" href="all_gUser.html">�Ҧ��|�����</a>
                </li>
                <li>
                  <a href="new_gUser.html">�s�W�|�����</a>
                </li>
              </ul>
            </li>
            <li class="has-sub">
              <a class="js-arrow" href="#">
                <i class="fas fa-tachometer-alt"></i>���~�|���޲z</a>
              <ul class="list-styled navbar__sub-list js-sub-list">
                <li>
                  <a href="all_oUser.html">�Ҧ��|�����</a>
                </li>
                <li>
                  <a href="new_oUser.html">�s�W�|�����</a>
                </li>
              </ul>
            </li>
            <li class="has-sub">
              <a class="js-arrow" href="#">
                <i class="fas fa-tachometer-alt"></i>�̷s�����޲z</a>
              <ul class="list-styled navbar__sub-list js-sub-list">
                <li>
                  <a href="form.html">���޲z</a>
                </li>
                <li>
                  <a href="all_announce.html">���i�޲z</a>
                </li>
                <li>
                  <a href="new_announce.html">�s�W���i</a>
                </li>
              </ul>
            </li>
            <li class="has-sub">
              <a class="js-arrow" href="#">
                <i class="fas fa-tachometer-alt"></i>�׾º޲z</a>
              <ul class="list-styled navbar__sub-list js-sub-list">
                <li>
                  <a href="all_post.html">�Ҧ��峹</a>
                </li>
                <li>
                  <a href="all_comment.html">�Ҧ��d��</a>
                </li>
                <li>
                  <a href="report.html">���|�޲z</a>
                </li>
              </ul>
            </li>
            <li class="has-sub">
              <a class="js-arrow" href="#">
                <i class="fas fa-tachometer-alt"></i>�y�]�޲z</a>
              <ul class="list-styled navbar__sub-list js-sub-list">
                <li>
                  <a href="all_court.html">�Ҧ��y�]</a>
                </li>
                <li>
                  <a href="#">�Ҧ����a</a>
                </li>
              </ul>
            </li>
            <li class="has-sub">
              <a href="order.html">
                <i class="fas fa-tachometer-alt"></i>�w���޲z</a>
            </li>
            <li class="has-sub">
              <a class="js-arrow" href="#">
                <i class="fas fa-tachometer-alt"></i>�ӫ��޲z</a>
              <ul class="list-styled navbar__sub-list js-sub-list">
                <li>
                  <a href="product.html">�ӫ~�޲z</a>
                </li>
                <li>
                  <a href="new_product.html">�s�W�ӫ~</a>
                </li>
                <li>
                  <a href="product_order.html">�q��޲z</a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>
    </header>
    <!-- END HEADER MOBILE-->
  </div>
  <!-- MENU SIDEBAR-->
  <div class="sidebar">
    <aside class="menu-sidebar d-none d-lg-block">
      <div class="menu-sidebar__content js-scrollbar1">
        <nav class="navbar-sidebar">
          <ul class="list-unstyled navbar__list expanded">
            <li class="has-sub">
              <a class="js-arrow" href="#">
                <i class="fas fa-tachometer-alt"></i>���u�޲z</a>
              <ul class="list-unstyled navbar__sub-list js-sub-list">
                <li>
                  <a class="active" href="all_manage.html">�Ҧ����u���</a>
                </li>
                <li>
                  <a href="new_manage.html">�s�W���u���</a>
                </li>
              </ul>
            </li>
            <li class="has-sub">
              <a class="js-arrow" href="#">
                <i class="fas fa-tachometer-alt"></i>�@��|���޲z</a>
              <ul class="list-unstyled navbar__sub-list js-sub-list">
                <li>
                  <a href="all_gUser.html">�Ҧ��|�����</a>
                </li>
                <li>
                  <a href="new_gUser.html">�s�W�|�����</a>
                </li>
              </ul>
            </li>
            <li class="has-sub">
              <a class="js-arrow" href="#">
                <i class="fas fa-tachometer-alt"></i>���~�|���޲z</a>
              <ul class="list-unstyled navbar__sub-list js-sub-list">
                <li>
                  <a href="all_oUser.html">�Ҧ��|�����</a>
                </li>
                <li>
                  <a href="new_oUser.html">�s�W�|�����</a>
                </li>
              </ul>
            </li>
            <li class="has-sub">
              <a class="js-arrow" href="#">
                <i class="fas fa-tachometer-alt"></i>�̷s�����޲z</a>
              <ul class="list-unstyled navbar__sub-list js-sub-list">
                <li>
                  <a href="form.html">���޲z</a>
                </li>
                <li>
                  <a href="all_announce.html">���i�޲z</a>
                </li>
                <li>
                  <a href="new_announce.html">�s�W���i</a>
                </li>
              </ul>
            </li>
            <li class="has-sub">
              <a class="js-arrow" href="#">
                <i class="fas fa-tachometer-alt"></i>�׾º޲z</a>
              <ul class="list-unstyled navbar__sub-list js-sub-list">
                <li>
                  <a href="all_post.html">�Ҧ��峹</a>
                </li>
                <li>
                  <a href="all_comment.html">�Ҧ��d��</a>
                </li>
                <li>
                  <a href="report.html">���|�޲z</a>
                </li>
              </ul>
            </li>
            <li class="has-sub">
              <a class="js-arrow" href="#">
                <i class="fas fa-tachometer-alt"></i>�y�]�޲z</a>
              <ul class="list-unstyled navbar__sub-list js-sub-list">
                <li>
                  <a href="all_court.html">�Ҧ��y�]</a>
                </li>
                <li>
                  <a href="#">�Ҧ����a</a>
                </li>
              </ul>
            </li>
            <li class="has-sub">
              <a href="order.html">
                <i class="fas fa-tachometer-alt"></i>�w���޲z</a>
            </li>
            <li class="has-sub">
              <a class="js-arrow" href="#">
                <i class="fas fa-tachometer-alt"></i>�ӫ��޲z</a>
              <ul class="list-styled navbar__sub-list js-sub-list">
                <li>
                  <a href="product.html">�ӫ~�޲z</a>
                </li>
                <li>
                  <a href="new_product.html">�s�W�ӫ~</a>
                </li>
                <li>
                  <a href="product_order.html">�q��޲z</a>
                </li>
              </ul>
            </li>
          </ul>
        </nav>
      </div>
    </aside>
    <!-- END MENU SIDEBAR-->
  </div>

  <!-- PAGE CONTAINER-->
  <div class="page-container">
    <!-- HEADER DESKTOP-->
    <header class="header-desktop">
      <div class="section__content section__content--p30">
        <div class="container-fluid">
          <div class="header-wrap">
            <div class="header-logo">
              <a href="index.html"><img class="img-logo" href="index.html" src="<%=request.getContextPath()%>/image/bigLogo.png" alt="" /></a>
            </div>
            <form class="form-header" action="#" method="POST">
              <input class="au-input au-input--xl" type="text" name="search" placeholder="�j�M" />
              <button class="au-btn--submit" type="submit">
                <i class="zmdi zmdi-search" style="font-size: 15px">�e�X</i>
              </button>
            </form>
            <div class="header-button">
              <div class="account-wrap">
                <div class="account-item clearfix js-item-menu">
                  <div class="image">
                    <img src="<%=request.getContextPath()%>/image/Group 115.png" alt="�ϥΪ��Y��" />
                  </div>
                  <div class="content">
                    <a class="js-acc-btn" href="#">�޲z��ù���P�A�z�n</a>
                  </div>
                  <div class="account-dropdown js-dropdown">
                    <div class="info clearfix">
                      <div class="image">
                        <a href="#">
                          <img src="<%=request.getContextPath()%>/image/Group 115.png" alt="John Doe" />
                        </a>
                      </div>
                      <div class="content">
                        <h5 class="name">
                          <a href="my_data.html">ù���P</a>
                        </h5>
                        <span class="email">brandon416jr@gmail.com</span>
                      </div>
                    </div>
                    <div class="account-dropdown__footer">
                      <a href="#"> <i class="zmdi zmdi-power"></i>�n�X</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- END HEADER DESKTOP-->
  </div>

  <div class="page-container2">
    <div class="table-responsive m-b-40">
      <table id="myTable3" class="table table-borderless table-data3" style="overflow-x: auto" hover>
        <thead>
          <tr>
            <th>���a�s��</th>
            <th>�y�]�s��</th>
            <th>���a�W��</th>
            <th>���a�O��</th>
            <th>�y��</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach var="place" items="${list}">
          <tr>
            <td>${place.placeID}</td>
            <td>${place.courtID}</td>
            <td>${place.placeName}</td>
            <td>${place.placeFee}</td>
            <td>${place.ball}</td>
          </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </div>

  <script>
    var script = document.createElement("script");

    script.src = "https://code.jquery.com/jquery-3.4.1.min.js";

    script.type = "text/javascript";

    document.getElementsByTagName("head")[0].appendChild(script);
  </script>
  <script>
    $(document).ready(function () {
      $("#myTable3").DataTable({
        // paging: true, 
        // searching: true, 

        // �����
        language: {
          processing: "�B�z��...",
          loadingRecords: "���J��...",
          paginate: {
            first: "�Ĥ@��",
            previous: "�W�@��",
            next: "�U�@��",
            last: "�̫�@��",
          },
          emptyTable: "�ثe�S�����",
          datetime: {
            previous: "�W�@��",
            next: "�U�@��",
            hours: "��",
            minutes: "��",
            seconds: "��",
            amPm: ["�W��", "�U��"],
            unknown: "����",
            weekdays: [
              "�g��",
              "�g�@",
              "�g�G",
              "�g�T",
              "�g�|",
              "�g��",
              "�g��",
            ],
            months: [
              "�@��",
              "�G��",
              "�T��",
              "�|��",
              "����",
              "����",
              "�C��",
              "�K��",
              "�E��",
              "�Q��",
              "�Q�@��",
              "�Q�G��",
            ],
          },
          searchBuilder: {
            add: "�s�W����",
            condition: "����",
            deleteTitle: "�R���L�o����",
            button: {
              _: "�ƦX�d�� (%d)",
              0: "�ƦX�d��",
            },
            clearAll: "�M��",
            conditions: {
              array: {
                contains: "�t��",
                equals: "����",
                empty: "�ŭ�",
                not: "������",
                notEmpty: "�D�ŭ�",
                without: "���t",
              },
              date: {
                after: "�j��",
                before: "�p��",
                between: "�b�䤤",
                empty: "����",
                equals: "����",
                not: "����",
                notBetween: "���b�䤤",
                notEmpty: "������",
              },
              number: {
                between: "�b�䤤",
                empty: "����",
                equals: "����",
                gt: "�j��",
                gte: "�j�󵥩�",
                lt: "�p��",
                lte: "�p�󵥩�",
                not: "����",
                notBetween: "���b�䤤",
                notEmpty: "������",
              },
              string: {
                contains: "�t��",
                empty: "����",
                endsWith: "�r����",
                equals: "����",
                not: "����",
                notEmpty: "������",
                startsWith: "�r����",
                notContains: "���t",
                notStartsWith: "�}�Y���O",
                notEndsWith: "�������O",
              },
            },
            data: "���",
            leftTitle: "�s�ձ���",
            logicAnd: "�B",
            logicOr: "��",
            rightTitle: "�����s��",
            title: {
              _: "�ƦX�d�� (%d)",
              0: "�ƦX�d��",
            },
            value: "���e",
          },
          editor: {
            close: "����",
            create: {
              button: "�s�W",
              title: "�s�W���",
              submit: "�e�X�s�W",
            },
            remove: {
              button: "�R��",
              title: "�R�����",
              submit: "�e�X�R��",
              confirm: {
                _: "�z�T�w�n�R���z�ҿ���� %d ����ƶܡH",
                1: "�z�T�w�n�R���z�ҿ���� 1 ����ƶܡH",
              },
            },
            error: {
              system: "�t�εo�Ϳ��~(��h��T)",
            },
            edit: {
              button: "�ק�",
              title: "�ק���",
              submit: "�e�X�ק�",
            },
            multi: {
              title: "�h����",
              info: "�z�ҿ�ܪ��h����Ƥ��A�����]�t�F���P���ȡC�Y�z�Q�n�N���̳��אּ�P�@�ӭȡA�i�H�b����J�A�n���M���̷|�O�d�U�ۭ쥻���ȡC",
              restore: "�_��",
              noMulti: "����J��ݳ�W��J�A���e�\�h����Ƥ@�_�ק�",
            },
          },
          autoFill: {
            cancel: "����",
          },
          buttons: {
            copySuccess: {
              _: "�ƻs�F %d �����",
              1: "�ƻs�F 1 �����",
            },
            copyTitle: "�w�g�ƻs��ŶKï",
            excel: "Excel",
            pdf: "PDF",
            print: "�C�L",
            copy: "�ƻs",
            colvis: "������",
            colvisRestore: "���m������",
            csv: "CSV",
            pageLength: {
              "-1": "��ܥ���",
              _: "��� %d ��",
            },
            createState: "�إߪ��A",
            removeAllStates: "�����Ҧ����A",
            removeState: "����",
            renameState: "���s�R�W",
            savedStates: "�x�s���A",
            stateRestore: "���A %d",
            updateState: "��s",
          },
          searchPanes: {
            collapse: {
              _: "�j�M���� (%d)",
              0: "�j�M����",
            },
            emptyPanes: "�S�j�M����",
            loadMessage: "���J�j�M������...",
            clearMessage: "�M��",
            count: "{total}",
            countFiltered: "{shown} ({total})",
            title: "�L�o���� - %d",
            showMessage: "��ܥ���",
            collapseMessage: "�P�|����",
          },
          stateRestore: {
            emptyError: "�W�٤���ťաC",
            creationModal: {
              button: "�إ�",
              columns: {
                search: "���j�M",
                visible: "������",
              },
              name: "�W�١G",
              order: "�Ƨ�",
              paging: "����",
              scroller: "���b��m",
              search: "�j�M",
              searchBuilder: "�ƦX�d��",
              select: "���",
              title: "�إ߷s���A",
              toggleLabel: "�]�t�G",
            },
            duplicateError: "�����A�W�٤w�g�s�b�C",
            emptyStates: "�W�٤��i�ťաC",
            removeConfirm: "�T�w�n���� %s �ܡH",
            removeError: "�������A���ѡC",
            removeJoiner: "�M",
            removeSubmit: "����",
            removeTitle: "�������A",
            renameButton: "���s�R�W",
            renameLabel: "%s ���s�W�١G",
            renameTitle: "���s�R�W���A",
          },
          select: {
            columns: {
              _: "��ܤF %d ����",
              1: "��ܤF 1 ����",
            },
            rows: {
              1: "��ܤF 1 �����",
              _: "��ܤF %d �����",
            },
            cells: {
              1: "��ܤF 1 ����",
              _: "��ܤF %d ����",
            },
          },
          zeroRecords: "�S���ŦX�����",
          aria: {
            sortAscending: "�G�ɾ��ƦC",
            sortDescending: "�G�����ƦC",
          },
          info: "��ܲ� _START_ �� _END_ �����G�A�@ _TOTAL_ ��",
          infoEmpty: "��ܲ� 0 �� 0 �����G�A�@ 0 ��",
          infoFiltered: "(�q _MAX_ �����G���L�o)",
          infoThousands: ",",
          lengthMenu: "��� _MENU_ �����G",
          search: "�j�M�G",
          searchPlaceholder: "�п�J����r",
          thousands: ",",
        },
      });
    });

    console.log({
      paging: true,
      ordering: false,
      info: false,
    });

    $("#example").DataTable({
      paging: true,
      ordering: false,
      info: false,
    });

    new DataTable("#myTable3", {
      scrollX: true,
    });
  </script>
  <!-- <script src="./vendor/jquery/jquery-3.7.1.min.js"></script>
    <script src="./database/datatables.min.js"></script> -->
  <!-- <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script> -->

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