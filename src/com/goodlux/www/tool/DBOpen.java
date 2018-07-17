package com.goodlux.www.tool;
 
import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class DBOpen {
  

  private Connection getSAPConnection() throws Exception {
    Context initCtx = new InitialContext();
    Context envCtx = (Context)initCtx.lookup("java:comp/env");
    DataSource ds = (DataSource)envCtx.lookup("jdbc/SAPABAP1");
    return ds.getConnection();
  }
  
  public Connection getConnection() throws Exception{
    return this.getSAPConnection();
  }
  
}