<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>GoodLux | who</title>
  <!-- CSS dependencies -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="css/colorful.css">
  <!-- bootstrap.css -->
  <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">

  <!-- Custom Theme files -->
  <link href="css/style.css" rel="stylesheet" type="text/css" media="all">

  <!--theme style-->
  <script src="js/jquery.min.js"></script>
  <!--//theme style-->

  <!--meta data(웹 관리상 필요한 데이터 등록)-->
  <!--웹 띄우는 디바이스 정보-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--언어 정보-->
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <!--Keywords-->
  <meta name="keywords" content="Wedding Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
  Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design">
  <!--화면 load시에 위치 지정(0,1) -->
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

  <!-- Script: Navbar on-top -->
  <script src="js/navbar-ontop.js"></script>
</head>

<body>
   <!--top menu-->
  <jsp:include page="/menu/top.jsp" flush='false' />
  
  <!-- content-->
  <!-- What do we do -->
  <div class="py-5 bg-light" id="what">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-10 mx-auto px-4">
          <h2 class="text-muted mb-4">What do we do</h2>
          <div class="row text-left">
            <div class="p-3 col-lg-4 col-md-6">
              <div class="row mb-3">
                <div class="text-center col-3"><i class="d-block mx-auto fa text-muted fa-4x fa-flask"></i></div>
                <div class="align-self-center d-flex align-items-center px-0 px-md-2 col-9">
                  <h5 class="mb-0"><b>&nbsp; &nbsp;Test</b></h5>
                </div>
              </div>
              <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod.</p>
            </div>
            <div class="p-3 col-lg-4 col-md-6">
              <div class="row mb-3">
                <div class="text-center col-3"><i class="d-block mx-auto fa text-muted fa-4x fa-fire"></i></div>
                <div class="align-self-center d-flex align-items-center px-0 px-md-2 col-9">
                  <h5 class="mb-0"><b>&nbsp; Light up</b></h5>
                </div>
              </div>
              <p class="text-muted">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid.</p>
            </div>
            <div class="p-3 col-lg-4">
              <div class="row mb-3">
                <div class="text-center col-3"><i class="d-block mx-auto fa text-muted fa-4x fa-fighter-jet"></i></div>
                <div class="align-self-center d-flex align-items-center px-0 px-md-2 col-9">
                  <h5 class="mb-0"><b>&nbsp; Rock it</b></h5>
                </div>
              </div>
              <p class="text-muted">Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!--Team Introduce-->
  <div class="py-5 text-center" id="who">
    <div class="container">
      <div class="row">
        <div class="col-md-12"> </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <h2 class="mb-4">GoodLux team</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4 px-4 mb-4 col-6 px-lg-5">
          <a data-toggle="modal" data-target=".yellow" href="">
            <div class="card project">
              <img class="card-img rounded-circle" src="assets/team/yellow.jpg" alt="Card image">
              <div class="card-body p-0">
                <p class="mt-3 mb-1">
                  <b>Yellow</b>
                </p>
                <p class="text-muted m-0">
                  <small>CEO</small>
                </p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-md-4 px-4 mb-4 col-6 px-lg-5">
          <a data-toggle="modal" data-target=".cyan" href="">
            <div class="card project">
              <img class="card-img rounded-circle" src="assets/team/cyan.jpg" alt="Card image">
              <div class="card-body p-0">
                <p class="mt-3 mb-1">
                  <b>Cyan</b>
                </p>
                <p class="text-muted m-0">
                  <small>Managing Partner</small>
                </p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-md-4 px-4 mb-4 col-6 px-lg-5">
          <a data-toggle="modal" data-target=".red" href="">
            <div class="card project">
              <img class="card-img rounded-circle" src="assets/team/red.jpg" alt="Card image">
              <div class="card-body p-0">
                <p class="mt-3 mb-1">
                  <b>Red</b>
                </p>
                <p class="text-muted m-0">
                  <small>VP</small>
                </p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-md-4 px-4 mb-4 col-6 px-lg-5">
          <a data-toggle="modal" data-target=".purple" href="">
            <div class="card project">
              <img class="card-img rounded-circle" src="assets/team/purple.jpg" alt="Card image">
              <div class="card-body p-0">
                <p class="mt-3 mb-1">
                  <b>Purple</b>
                </p>
                <p class="text-muted m-0">
                  <small>CFO</small>
                </p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-md-4 px-4 mb-4 col-6 px-lg-5">
          <a data-toggle="modal" data-target=".white" href="">
            <div class="card project">
              <img class="card-img rounded-circle" src="assets/team/white.jpg" alt="Card image">
              <div class="card-body p-0">
                <p class="mt-3 mb-1">
                  <b>White</b>
                </p>
                <p class="text-muted m-0">
                  <small>Consultant</small>
                </p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-md-4 px-4 mb-4 col-6 px-lg-5">
          <a data-toggle="modal" data-target=".blue" href="">
            <div class="card project">
              <img class="card-img rounded-circle" src="assets/team/blue.jpg" alt="Card image">
              <div class="card-body p-0">
                <p class="mt-3 mb-1">
                  <b>Blue</b>
                </p>
                <p class="text-muted m-0">
                  <small>Field Researcher</small>
                </p>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
  </div>

  <div class="clearfix"></div>

   <!--footer-->
  <jsp:include page="/menu/footer.jsp" flush='false' />

  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <!-- Script: Smooth scrolling between anchors in the same page -->
  <script src="js/smooth-scroll.js"></script>
</body>

</html>