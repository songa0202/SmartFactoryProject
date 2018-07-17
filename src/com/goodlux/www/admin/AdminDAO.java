package com.goodlux.www.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import com.goodlux.www.tool.DBClose;
import com.goodlux.www.tool.DBOpen;

public class AdminDAO {
   private DBOpen dbopen;
   private DBClose dbclose;
   
   private Connection con = null;              // DBMS ����   
   private PreparedStatement pstmt = null; // SQL ����
   private ResultSet rs = null;                   // SELECT ����� ����
   private StringBuffer sql = null;  
   
   

  public AdminDAO() {
    dbopen = new DBOpen();
    dbclose = new DBClose();
  }

  public Boolean login(String id, String passwd) {
    int count = 0;
    Boolean result = false;
    
    try {
      con = dbopen.getConnection();
      
      sql = new StringBuffer();
      sql.append(" SELECT COUNT(*) as cnt ");
      sql.append(" FROM ZSM01_MEMBERSHIP ");
      sql.append(" WHERE email=? AND passwd=?");
      
      pstmt = con.prepareStatement(sql.toString());
      pstmt.setString(1, id);
      pstmt.setString(2, passwd);
      
      rs= pstmt.executeQuery();  // SELECT
      rs.next();  
      count = rs.getInt("cnt");
      
      if(count !=0){
        result = true;
      }
      
    } catch (Exception e) {
      e.printStackTrace();
    }finally{
      dbclose.close(con, pstmt, rs);
    }
    
    return result;
  }

  public Boolean signUp(HttpServletRequest req) {
    Boolean result=false; 
    AdminDTO dto = new AdminDTO();
    String mem_id = req.getParameter("id"); //회원 ID
    String mem_pw = req.getParameter("passwd"); //회원 PW
    String carty = req.getParameter("carType"); //차종
    int age = Integer.parseInt(req.getParameter("age")); //나이
    String postno = req.getParameter("postNo"); // 우편번호
    String addre = req.getParameter("address"); //주소
    String mem_name = req.getParameter("name"); //이름
    String tel = req.getParameter("tel");; //전화번호
    String email = req.getParameter("email"); //이메일
   
    int mandt; //클라이언트번호
    String erdat; //최초생성일
    String ernam; //최초생성자
    String erzet; //entry time
    String aedat; //최근수정일
    String aenam; //최근수정자
    String aezet; //마지막변경시간 
    
    return result;
     
  }
}
