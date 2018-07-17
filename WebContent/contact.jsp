<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>GoodLux | Contact</title>
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
  <!--top menu-->
  <jsp:include page="/menu/top.jsp" flush='false' />

<!--Contact-->
<div class="contact">
  <div class="container">
    <ol class="breadcrumb">
      <li>
        <a href="index.jsp">Home</a>
      </li>
      <li class="active">Contact</li>
    </ol>

    <!--start contact-->
    <h3>Contact Us</h3>
    <div class="section group">
      <div class="col-md-6 span_1_of_3">
        <div class="contact_info">
          <h4>Find Us Here</h4>
          <!--Map-->
          <div class="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1524.7080399250844!2d8.280408491951427!3d50.0067995263568!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47bd97a6254ca4f7%3A0xbb35d7068c2e85!2sIT+for+You+GmbH!5e0!3m2!1sko!2skr!4v1528767329245" output=embed></iframe>
          </div>

          <!--address-->
          <div class="company_address">
            <h4>Company Information :</h4>
            <p>Rheinufer 11, 55252 Wiesbaden</p>
            <p>독일</p>
            <p>Phone:(00) 222 666 444</p>
            <p>Fax: (000) 000 00 00 0</p>
            <p>Email:
              <a href="mailto:info@example.com">info@goodlux.com</a>
            </p>
            <p>Follow on:
              <a href="#">Facebook</a>,
              <a href="#">Twitter</a>,
              <a href="#">Instagram</a>
            </p>
          </div>
        </div>
      </div>

      <div class="col-md-6 span_2_of_3">
        <div class="contact-form">
          <form>
            <div>
              <span>
                <label>NAME</label>
              </span>
              <span>
                <input name="userName" type="text" class="textbox"> 
              </span>
            </div>
            <div>
              <span>
                <label>E-MAIL</label>
              </span>
              <span>
                <input name="userEmail" type="text" class="textbox"> 
              </span>
            </div>
            <div>
              <span>
                <label>MOBILE</label>
              </span>
              <span>
                <input name="userPhone" type="text" class="textbox"> 
              </span>
            </div>
            <div>
              <span>
                <label>SUBJECT</label>
              </span>
              <span>
                <textarea name="userMsg"> </textarea>
              </span>
            </div>
            <div>
              <span>
                <input type="submit" class="mybutton" value="Submit"> 
              </span>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

 <!--footer-->
  <jsp:include page="/menu/footer.jsp" flush='false' />
</body>

</html>