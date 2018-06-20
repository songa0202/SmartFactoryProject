<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>GoodLux | Customizing order</title>
  <!-- CSS dependencies -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="css/wireframe.css">
  <!-- Bootstrap -->
  <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
  <!-- Custom Theme files -->
  <link href="css/style.css" rel="stylesheet" type="text/css" media="all">
  <link href="css/custom2.min.css" rel="stylesheet">
  <!--theme style-->
  <script src="js/jquery.min.js"></script>
  <!--//theme style-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta name="keywords" content="Wedding Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
  Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design">
  <script type="application/x-javascript">
    addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
  </script>
  <!-- start menu -->
  <script src="js/simpleCart.min.js">
  </script>
  <!-- start menu -->
  <link href="css/memenu.css" rel="stylesheet" type="text/css" media="all">
  <script type="text/javascript" src="js/memenu.js"></script>
  <script>
    $(document).ready(function(){$(".memenu").memenu();});
  </script>
  <!-- /start menu -->

  <!-- Font Awesome -->
  <link href="css/font-awesome/font-awesome.min.css" rel="stylesheet">
</head>

<body>
  <!--top menu-->
  <jsp:include page="/menu/top.jsp" flush='false' />

  <!--content-->

  <!-- title-->
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="text-center col-md-7 mx-auto">
          <i class="fa d-block fa-bullseye fa-5x mb-4 text-info"></i>
          <h2>
            <b>상품 구매내역</b>
          </h2>
        </div>
      </div>
    </div>
  </div>

  <!--content-->
  <div class="col-md-9 col-sm-9 col-xs-9">
    <div class="x_panel">
       
      <div class="x_content" >
        <div class="table-responsive">
          <table class="table table-striped jambo_table bulk_action">
            <thead>
              <tr class="headings">
                <th>
                  <input type="checkbox" id="check-all" class="flat">
                </th>
                <th class="column-title">영수증번호 </th>
                <th class="column-title">주문날짜 </th>
                <th class="column-title">주문번호 </th>
                <th class="column-title">주문자명 </th>
                <th class="column-title">상태 </th>
                <th class="column-title">가격 </th>
                <th class="column-title no-link last"><span class="nobr">주문목록</span>
                </th>
              </tr>
            </thead>

            <tbody>
              <tr class="even pointer">
                <td class="a-center ">
                  <input type="checkbox" class="flat" name="table_records">
                </td>
                <td class=" ">121000040</td>
                <td class=" ">May 23, 2014 11:47:56 PM </td>
                <td class=" ">121000210 <i class="success fa fa-long-arrow-up"></i></td>
                <td class=" ">John Blank L</td>
                <td class=" ">Paid</td>
                <td class="a-right a-right ">$7.45</td>
                <td class=" last"><a href="#">View</a>
                </td>
              </tr>
              <tr class="odd pointer">
                <td class="a-center ">
                  <input type="checkbox" class="flat" name="table_records">
                </td>
                <td class=" ">121000039</td>
                <td class=" ">May 23, 2014 11:30:12 PM</td>
                <td class=" ">121000208 <i class="success fa fa-long-arrow-up"></i>
                </td>
                <td class=" ">John Blank L</td>
                <td class=" ">Paid</td>
                <td class="a-right a-right ">$741.20</td>
                <td class=" last"><a href="#">View</a>
                </td>
              </tr>
              <tr class="even pointer">
                <td class="a-center ">
                  <input type="checkbox" class="flat" name="table_records">
                </td>
                <td class=" ">121000038</td>
                <td class=" ">May 24, 2014 10:55:33 PM</td>
                <td class=" ">121000203 <i class="success fa fa-long-arrow-up"></i>
                </td>
                <td class=" ">Mike Smith</td>
                <td class=" ">Paid</td>
                <td class="a-right a-right ">$432.26</td>
                <td class=" last"><a href="#">View</a>
                </td>
              </tr>
              <tr class="odd pointer">
                <td class="a-center ">
                  <input type="checkbox" class="flat" name="table_records">
                </td>
                <td class=" ">121000039</td>
                <td class=" ">May 28, 2014 11:30:12 PM</td>
                <td class=" ">121000208</td>
                <td class=" ">John Blank L</td>
                <td class=" ">Paid</td>
                <td class="a-right a-right ">$741.20</td>
                <td class=" last"><a href="#">View</a>
                </td>
              </tr>
            </tbody>
          </table>
        </div>


      </div>
      <!--button-->
      <hr class="mb-4">
        <button class="btn btn-primary" type="submit">주문 취소</button>
    </div>
  </div>


   <!--footer-->
  <jsp:include page="/menu/footer.jsp" flush='false' />

</body>

</html>