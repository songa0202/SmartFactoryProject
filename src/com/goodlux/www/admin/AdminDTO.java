package com.goodlux.www.admin;

public class AdminDTO {
  private String mem_id; //회원ID
  private String mem_pw; //회원 PW
  private String carty; //차종
  private int age; //나이
  private String postno; // 우편번호
  private String addre; //주소
  private String mem_name; //이름
  private String tel; //전화번호
  private String email; //이메일
 
  private int mandt; //클라이언트번호
  private String erdat; //최초생성일
  private String ernam; //최초생성자
  private String erzet; //entry time
  private String aedat; //최근수정일
  private String aenam; //최근수정자
  private String aezet; //마지막변경시간
  private String getMem_id() {
    return mem_id;
  }
  public void setMem_id(String mem_id) {
    this.mem_id = mem_id;
  }
  public String getMem_pw() {
    return mem_pw;
  }
  public void setMem_pw(String mem_pw) {
    this.mem_pw = mem_pw;
  }
  public String getCarty() {
    return carty;
  }
  public void setCarty(String carty) {
    this.carty = carty;
  }
  public int getAge() {
    return age;
  }
  public void setAge(int age) {
    this.age = age;
  }
  public String getPostno() {
    return postno;
  }
  public void setPostno(String postno) {
    this.postno = postno;
  }
  public String getAddre() {
    return addre;
  }
  public void setAddre(String addre) {
    this.addre = addre;
  }
  public String getMem_name() {
    return mem_name;
  }
  public void setMem_name(String mem_name) {
    this.mem_name = mem_name;
  }
  public String getTel() {
    return tel;
  }
  public void setTel(String tel) {
    this.tel = tel;
  }
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  public int getMandt() {
    return mandt;
  }
  public void setMandt(int mandt) {
    this.mandt = mandt;
  }
  public String getErdat() {
    return erdat;
  }
  public void setErdat(String erdat) {
    this.erdat = erdat;
  }
  public String getErnam() {
    return ernam;
  }
  public void setErnam(String ernam) {
    this.ernam = ernam;
  }
  public String getErzet() {
    return erzet;
  }
  public void setErzet(String erzet) {
    this.erzet = erzet;
  }
  public String getAedat() {
    return aedat;
  }
  public void setAedat(String aedat) {
    this.aedat = aedat;
  }
  public String getAenam() {
    return aenam;
  }
  public void setAenam(String aenam) {
    this.aenam = aenam;
  }
  public String getAezet() {
    return aezet;
  }
  public void setAezet(String aezet) {
    this.aezet = aezet;
  }
  
  
}
