<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>GoodLux</title>

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
</head>

<body>
	<!--header-->
	<!--slider event script-->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		$(function () {
			$("#slider").responsiveSlides({
				auto: true,
				nav: true,
				speed: 500,
				namespace: "callbacks",
				pager: false,
			});
		});
	</script>

 	<!--top menu-->
 <jsp:include page="/menu/top.jsp" flush='false' />
 
	<!--SLIDER-->
	<div class="slider">
		<div class="callbacks_container">
			<ul class="rslides" id="slider">
				<li>
					<div class="banner1">
						<div class="banner-info">
							<h3>GoodLux 제품 1</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. consectetur adipiscing elit. consectetur adipiscing elit.</p>
						</div>
					</div>
				</li>
				<li>
					<div class="banner2">
						<div class="banner-info">
							<h3>GoodLux 제품 2</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. consectetur adipiscing elit. consectetur adipiscing elit.</p>
						</div>
					</div>
				</li>
				<li>
					<div class="banner3">
						<div class="banner-info">
							<h3>GoodLux 제품 3</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. consectetur adipiscing elit. consectetur adipiscing elit.</p>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>

	<!--이건 뭐지-->
	<script src="js/bootstrap.js">
	</script>

	<!--하단 추천/커스터마이징 이동 부분-->
	<div class="offers">
		<div class="container">
			<div class="offer-grids">
				<!--추천-->
				<div class="col-md-6 grid-left">
					<div class="offer-grid1">
						<div class="ofr-pic">
							<img src="images/ofr2.jpeg" class="img-responsive" alt=""> 
						</div>
						<div class="ofr-pic-info">
							<h4>나에게 맞는 조명 추천 받기</h4>
							<span>Recommend your lights.</span>
							<a href="recommend.html" style="color: white;"><p>Go</p></a>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>

				<!--커스터마이징-->
				<div class="col-md-6 grid-right">
					<div class="offer-grid2">
						<div class="ofr-pic-info2">
							<h4>내가 원하는 조명 만들기</h4>
							<span>Customizing Your lights now.</span>
							<a href="customizing.html" style="color: white;"><p>Go</p></a>
						</div>
						<div class="ofr-pic">
							<img src="images/ofr3.jpg" class="img-responsive" alt=""> 
						</div>

						<div class="clearfix"></div>
					</div>

				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

	 <!--footer-->
  <jsp:include page="/menu/footer.jsp" flush='false' />
</body>
</html>