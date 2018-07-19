<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>GoodLux | Login</title>
  <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
  <!-- Custom Theme files -->
  <!--theme style-->
  <link href="../css/style.css" rel="stylesheet" type="text/css" media="all">
  <script src="../js/jquery.min.js"></script>
  <!--//theme style-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta name="keywords" content="Wedding Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design">
  <script type="application/x-javascript">
    addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }

  </script>
  <!-- start menu -->
  <script src="../js/simpleCart.min.js">
  </script>
  <!-- start menu -->
  <link href="../css/memenu.css" rel="stylesheet" type="text/css" media="all">
  <script type="text/javascript" src="../js/memenu.js"></script>
  <script>
    $(document).ready(function(){$(".memenu").memenu();});
    
    //폼 체크
    function checkLoginForm(fo){
      // 체크 패턴 
         //var pattern = /^[a-z]+[a-z0-9_]*$/; 
        // var num = /[0-9]/; 
         // 아이디 체크 
         var id = $.trim($('#id').val());
         if(id=="") { 
            alert("아이디를 입력하세요!"); 
            $('#id').focus(); 
            return false; 
         } 
         /* else { 
            if(!pattern.test(id)) { 
               alert("아이디는 영문소문자로 시작하고\r\n영문소문자, 숫자, 언더바(_)만 사용하실 수 있습니다! "); 
               $('#id').select(); 
               return false; 
            } 
         }  */
         // 비밀번호 체크 
         var pss = $.trim($('#passwd').val());//jQuery를 이용하여 앞뒤 공백 제거 
         if(pss=="") { 
            alert("비밀번호를 입력하세요!"); 
            $('#pss').focus(); 
            return false; 
         } 
         /* else { 
            if(!num.test(pss)) { 
               alert("비밀번호는 숫자만 가능합니다!"); 
               $('#pss').select(); 
               return false; 
            } 
         }  */
         $('#login_form').submit();
       }
  </script>
  <!-- /start menu -->
</head>
<body>

    <!--top menu-->
 <jsp:include page="../menu/top.jsp" flush='false' />

  <!--content-->
  <div class="login_sec">
    <div class="container">
      <ol class="breadcrumb">
        <li>
          <a href="index.jsp">Home</a>
        </li>
        <li class="active">Login</li>
      </ol>
      <h2>Login</h2>
      <div class="col-md-6 log">
        <p>Welcome, please enter the folling to continue.</p>
        <p>If you have previously Login with us,
          <span>click here</span>
        </p>
        <form name='login_form'  id='login_form'  method='POST'  action="/SmartFactoryProject1/Controller" >
          <h5>User id</h5>
          <input type="text"  id="id" name="id" value="">
          <h5>Password</h5>
          <input type="password" id="passwd" name="passwd" value="">
          <input type="hidden" name="reqName" value="login">
          <a class="acount-btn" onClick="checkLoginForm();">Log in</a>
          <a class="acount-btn" href="account.jsp" >Create an Account</a>
        </form>
        <a href="#">Forgot Password ?</a>
      </div>
      <div class="clearfix"></div>
    </div>
    
  </div>
  
 <!--footer-->
  <jsp:include page="../menu/footer.jsp" flush='false' />
  
</body>

</html>