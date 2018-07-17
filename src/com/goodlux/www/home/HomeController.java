package com.goodlux.www.home;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodlux.www.admin.AdminService;

@WebServlet("/Controller") 
public class HomeController extends HttpServlet {
  private AdminService adminService; // login 관련
  private static final long serialVersionUID = -4715743931338298278L;

  
  
  public HomeController() {
    this.adminService = new AdminService();
  }

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    req.setCharacterEncoding("UTF-8");
    resp.setContentType("application/x-json; charset=UTF-8"); //JSON형식으로 response 타입지정
    
    //요청이 온 파일명을 불러온다.
    String requestName = (String)req.getAttribute("reqName");
    
    //login
    if(requestName.equals("login")){
      Boolean loginResult = adminService.login(req);
      if(loginResult){
        resp.sendRedirect("");
      }else{
        
      }
    }
    //회원가입
    else if(requestName.equals("signUp")){
      Boolean signUpResult = adminService.signUp(req);
      if(signUpResult){
        
        resp.sendRedirect("");
      }else{
        
      }
      
    }
    return;
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
    this.doGet(req, resp);
  }


  

}
