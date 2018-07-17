package com.goodlux.www.tool;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
 
public class DBClose {
  // INSERT, UPDATE, DELETE
  public void close(Connection con, PreparedStatement pstmt) {
    try {
      pstmt.close();
    } catch (Exception e) { // �ϳ��� ������ ���� �� �ϳ��� ������ ��´� ��.
    }
 
    try {
      con.close();
    } catch (Exception e) {
    }
  }
  
  // SELECT
  public void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
    try {
      rs.close();
    } catch (Exception e) { // �ϳ��� ������ ���� �� �ϳ��� ������ ��´� ��.
    }
    
    try {
      pstmt.close();
    } catch (Exception e) { // �ϳ��� ������ ���� �� �ϳ��� ������ ��´� ��.
    }
 
    try {
      con.close();
    } catch (Exception e) {
    }
  }
  
}