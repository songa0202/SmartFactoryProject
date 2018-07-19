package com.goodlux.www.tool;
 
import java.sql.Connection;
import java.sql.DriverManager;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class DBOpen {
  private static String user = "SMARTF_01";
  private static String pwd = "Inno1234";
  

  private Connection getSAPConnection() throws Exception {
//    Context initCtx = new InitialContext();
//    Context envCtx = (Context)initCtx.lookup("java:comp/env");
//    DataSource ds = (DataSource)envCtx.lookup("jdbc/SMARTF_01");
//    return ds.getConnection();
    Connection conn = null;
    conn = DriverManager.getConnection("jdbc:sap://ehp8.innoever.net:30215", user, pwd);
    return conn;
  }
  
  public Connection getConnection() throws Exception{
    return this.getSAPConnection();
  }
  
}