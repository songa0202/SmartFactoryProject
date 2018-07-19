<%@ page contentType="text.jsp; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>  
<%
  String root = request.getContextPath();
  // out.println("root: " + root);
%>
  
  <!--top menu-->

  <!--LOGO-->
  <div class="header-top">
    <div class="header-bottom">
      <div class="logo">
        <h1>
          <a href="<%=root%>/index.jsp">GoodLux</a>
        </h1>
      </div>

      <!--MENU-->
      <div class="top-nav">
        <ul class="memenu skyblue">
          <li class="active">
            <a href="<%=root%>/index.jsp">Home</a>
          </li>
          <li class="grid">
            <a href="<%=root%>/who.jsp">who</a>
          </li>
          <li class="grid">
            <a href="#">Products</a>
            <div class="mepanel">
              <div class="row">
                <div class="col1 me-one">
                  <h4>Shop</h4>
                  <ul>
                    <li>
                      <a href="<%=root%>/product.jsp">New Arrivals</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">Home</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">Decorates</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">Accessories</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">Kids</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">Login</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">Brands</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">My Shopping Bag</a>
                    </li>
                  </ul>
                </div>
                <div class="col1 me-one">
                  <h4>Type</h4>
                  <ul>
                    <li>
                      <a href="<%=root%>/product.jsp">Diwali Lights</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">Tube Lights</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">Bulbs</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">Ceiling Lights</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">Accessories</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">Lanterns</a>
                    </li>
                  </ul>
                </div>
                <div class="col1 me-one">
                  <h4>Popular Brands</h4>
                  <ul>
                    <li>
                      <a href="<%=root%>/product.jsp">Everyday</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">Philips</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">Havells</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">Wipro</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">Jaguar</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">Ave</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">Gold Medal</a>
                    </li>
                    <li>
                      <a href="<%=root%>/product.jsp">Anchor</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </li>

          <li class="grid">
            <a href="<%=root%>/contact.jsp">Contact</a>
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
            <button onclick="location.href='<%=root%>/logout.jsp'">로그아웃</button>
<%        }else{
%>
            <a href="<%=root%>/login/login.jsp">Login</a>
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
