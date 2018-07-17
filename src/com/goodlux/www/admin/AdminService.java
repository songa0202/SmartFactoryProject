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
    return adminDAO.signUp(req);
  }

}
