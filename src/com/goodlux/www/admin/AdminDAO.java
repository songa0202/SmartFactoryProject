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
      sql.append(" WHERE MEM_ID=? AND MEM_PW=?");
      
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

  public Boolean createUser(AdminDTO adminDTO) {
    //리턴값
    Boolean result=false;  
    int count = 0;
    
    try {
      
      con = dbopen.getConnection();
      sql = new StringBuffer();
      sql.append(" INSERT INTO ZSM01_MEMBERSHIP("
          + "MEM_ID,"
          + "MEM_PW,"
          + "CARTY,"
          + "AGE,"
          + "POSTNO,"
          + "ADDRE,"
          + "MEM_NAME,"
          + "TEL,"
          + "EMAIL"
          + "MANDT, "
          + "ERDAT, "
          + "ERNAM, "
          + "ERZET, "
          + "AEDAT, "
          + "AENAM, "
          + "AEZET)");
      sql.append(" VALUES(?,?,?,?,?,?,?,?,?,"
          + "'800',"
          + "CURRENT_DATE,"
          + "?,"
          + "CURRENT_TIME,"
          + "CURRENT_DATE,"
          + "?,"
          + "CURRENT_TIME )");
      
      pstmt = con.prepareStatement(sql.toString());
      
      pstmt.setString(1, adminDTO.getMem_id()); 
      pstmt.setString(2, adminDTO.getMem_pw());
      pstmt.setString(3, adminDTO.getCarty()); 
      pstmt.setInt(4, adminDTO.getAge()); 
      pstmt.setString(5, adminDTO.getPostno());
      pstmt.setString(6, adminDTO.getAddre());
      pstmt.setString(7, adminDTO.getMem_name());
      pstmt.setString(8, adminDTO.getTel());
      pstmt.setString(9, adminDTO.getEmail());
      pstmt.setString(10, adminDTO.getErnam());
      pstmt.setString(11, adminDTO.getAenam());
      
      count = pstmt.executeUpdate();
      if(count !=0){
        return true;
      }
    } catch (Exception e) {
      e.printStackTrace();
    }finally{
      dbclose.close(con, pstmt);
    }

    return result;
     
  }
}
