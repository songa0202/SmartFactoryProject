<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>GoodLux | Account</title>
  <!-- CSS dependencies -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="css/wireframe.css">
  <!-- Bootstrap -->
  <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
  <!-- Custom Theme files -->
  <link href="css/style.css" rel="stylesheet" type="text/css" media="all">
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
</head>

<body>
 <!--top menu-->
  <jsp:include page="/menu/top.jsp" flush='false' />
  
  <!--container-->
  <div class="container">
    <ol class="breadcrumb">
      <li>
        <a href="index.html">Home</a>
      </li>
      <li class="active">Account</li>
    </ol>
    <div class="registration">
      <div class="registration_left">
        <h2>new user?
          <span> create an account </span>
        </h2>
        <!-- [if IE] 
				< link rel='stylesheet' type='text/css' href='ie.css'/>  
			 [endif] -->
        <!-- [if lt IE 7]>  
				< link rel='stylesheet' type='text/css' href='ie6.css'/>  
			 <! [endif] -->
        <script>
          (function() {
          			
          				// Create input element for testing
          				var inputs = document.createElement('input');
          				
          				// Create the supports object
          				var supports = {};
          				
          				supports.autofocus   = 'autofocus' in inputs;
          				supports.required    = 'required' in inputs;
          				supports.placeholder = 'placeholder' in inputs;
          			
          				// Fallback for autofocus attribute
          				if(!supports.autofocus) {
          					
          				}
          				
          				// Fallback for required attribute
          				if(!supports.required) {
          					
          				}
          			
          				// Fallback for placeholder attribute
          				if(!supports.placeholder) {
          					
          				}
          				
          				// Change text inside send button on submit
          				var send = document.getElementById('register-submit');
          				if(send) {
          					send.onclick = function () {
          						this.innerHTML = '...Sending';
          					}
          				}
          			
          			 })();
        </script>
        <div class="registration_form">
          <!-- Form -->
          <form>
            <div>
              <label>
                <input type="text" placeholder="first name" tabindex="1"> </label>
            </div>
            <div>
              <label>
                <input placeholder="last name" type="text" tabindex="2"> </label>
            </div>
            <div>
              <label>
                <input placeholder="email address" type="email" tabindex="3"> </label>
            </div>
            <div>
              <label>
                <input placeholder="Mobile" type="email" tabindex="3"> </label>
            </div>
            <div class="sky_form1">
              <ul>
                <li>
                  <label class="radio left">
                    <input type="radio" name="radio" checked="" value="on">
                    <i></i>Male</label>
                </li>
                <li>
                  <label class="radio">
                    <input type="radio" name="radio" value="on">
                    <i></i>Female</label>
                </li>
              </ul>
              <div class="clearfix"></div>
            </div>
            <div>
              <label>
                <input placeholder="password" type="password" tabindex="4"> </label>
            </div>
            <div>
              <label>
                <input placeholder="retype password" type="password" tabindex="4"> </label>
            </div>
            <div>
              <input type="submit" value="create an account" id="register-submit"> </div>
            <div class="sky-form">
              <label class="checkbox">
                <input type="checkbox" name="checkbox" value="on">
                <i></i>i agree Terms &amp; conditions &nbsp;
                <a class="terms" href="#"> terms of service</a>
              </label>
            </div>
          </form>
          <!-- /Form -->
        </div>
      </div>
      <div class="registration_left">
        <h2>existing user</h2>
        <div class="registration_form">
          <!-- Form -->
          <form>
            <div>
              <label>
                <input placeholder="email" type="email" tabindex="3" required=""> </label>
            </div>
            <div>
              <label>
                <input placeholder="password" type="password" tabindex="4" required=""> </label>
            </div>
            <div>
              <input type="submit" value="sign in"> </div>
            <div class="forget">
              <a href="#">forgot your password</a>
            </div>
          </form>
          <!-- /Form -->
        </div>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
  
 <!--footer-->
  <jsp:include page="/menu/footer.jsp" flush='false' />
  
</body>

</html>