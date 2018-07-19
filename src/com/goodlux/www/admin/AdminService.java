package com.goodlux.www.admin;

import javax.servlet.http.HttpServletRequest;

public class AdminService {
  public AdminDAO adminDAO;

  public AdminService() {
    adminDAO = new AdminDAO();
  }

  public Boolean login(HttpServletRequest req) {
        String id = req.getParameter("id");
        String passwd = req.getParameter("passwd");
        return adminDAO.login(id, passwd);

  }

  public Boolean signUp(HttpServletRequest req) {

    String mem_id = req.getParameter("id"); //회원 ID
    String mem_pw = req.getParameter("passwd"); //회원 PW
    String carty = req.getParameter("carType"); //차종
    int age = Integer.parseInt(req.getParameter("age")); //나이
    String postno = req.getParameter("postNo"); // 우편번호
    String address = req.getParameter("address"); //주소
    String mem_name = req.getParameter("name"); //이름
    String tel = req.getParameter("tel");; //전화번호
    String email = req.getParameter("email"); //이메일
   
    //int mandt ; //클라이언트번호
    //String erdat ; //최초생성일
    String ernam = "STU05"; //최초생성자
   // String erzet; //entry time
   // String aedat; //최근수정일
    String aenam = "STU05"; //최근수정자
    //String aezet; //마지막변경시간 
    
    AdminDTO adminDTO = new AdminDTO(mem_id, mem_pw, carty, age, postno, 
        address, mem_name, tel, email, ernam, aenam);
    
    return adminDAO.createUser(adminDTO);
  }

}
