<%@ page contentType="text.jsp; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>  
  
  <!--top menu-->

  <!--LOGO-->
  <div class="header-top">
    <div class="header-bottom">
      <div class="logo">
        <h1>
          <a href="index.jsp">GoodLux</a>
        </h1>
      </div>

      <!--MENU-->
      <div class="top-nav">
        <ul class="memenu skyblue">
          <li class="active">
            <a href="index.jsp">Home</a>
          </li>
          <li class="grid">
            <a href="who.jsp">who</a>
          </li>
          <li class="grid">
            <a href="#">Products</a>
            <div class="mepanel">
              <div class="row">
                <div class="col1 me-one">
                  <h4>Shop</h4>
                  <ul>
                    <li>
                      <a href="product.jsp">New Arrivals</a>
                    </li>
                    <li>
                      <a href="product.jsp">Home</a>
                    </li>
                    <li>
                      <a href="product.jsp">Decorates</a>
                    </li>
                    <li>
                      <a href="product.jsp">Accessories</a>
                    </li>
                    <li>
                      <a href="product.jsp">Kids</a>
                    </li>
                    <li>
                      <a href="product.jsp">Login</a>
                    </li>
                    <li>
                      <a href="product.jsp">Brands</a>
                    </li>
                    <li>
                      <a href="product.jsp">My Shopping Bag</a>
                    </li>
                  </ul>
                </div>
                <div class="col1 me-one">
                  <h4>Type</h4>
                  <ul>
                    <li>
                      <a href="product.jsp">Diwali Lights</a>
                    </li>
                    <li>
                      <a href="product.jsp">Tube Lights</a>
                    </li>
                    <li>
                      <a href="product.jsp">Bulbs</a>
                    </li>
                    <li>
                      <a href="product.jsp">Ceiling Lights</a>
                    </li>
                    <li>
                      <a href="product.jsp">Accessories</a>
                    </li>
                    <li>
                      <a href="product.jsp">Lanterns</a>
                    </li>
                  </ul>
                </div>
                <div class="col1 me-one">
                  <h4>Popular Brands</h4>
                  <ul>
                    <li>
                      <a href="product.jsp">Everyday</a>
                    </li>
                    <li>
                      <a href="product.jsp">Philips</a>
                    </li>
                    <li>
                      <a href="product.jsp">Havells</a>
                    </li>
                    <li>
                      <a href="product.jsp">Wipro</a>
                    </li>
                    <li>
                      <a href="product.jsp">Jaguar</a>
                    </li>
                    <li>
                      <a href="product.jsp">Ave</a>
                    </li>
                    <li>
                      <a href="product.jsp">Gold Medal</a>
                    </li>
                    <li>
                      <a href="product.jsp">Anchor</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </li>

          <li class="grid">
            <a href="contact.jsp">Contact</a>
          </li>
        </ul>
      </div>

      <!--LOGIN-->
      <div class="cart box_1">
        <li class="grid">
          <%
            if(session.getAttribute("id")!=null){
              
%>
            
             
            <a href="#"><%= session.getAttribute("userId") %></a> 님 반갑습니다. 
            <button onclick="location.href='logout.jsp'">로그아웃</button>
<%        }else{
%>
            <a href="Login.jsp">Login</a>
<%
            }
            %>
          
        </li>
      </div>
      <div class="clearfix"> </div>
      <!---->
    </div>
    <div class="clearfix"> </div>
  </div>
