package com.goodlux.www.tool;

//version 1.2 2017-10-18

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.awt.image.PixelGrabber;
import java.io.File;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Tool {
public static synchronized String comma(long no) {
 String str = "";
 DecimalFormat df = new DecimalFormat("#,###,###");
 str = df.format(no);
 
 return  str;
}

/**
* 201710 ������ ��¥�� �����մϴ�.
* @return 201710 ������ ���ڿ� ����
*/
public static synchronized String getDate1(){
   SimpleDateFormat sd = new SimpleDateFormat("yyyyMM");
   
   String date = sd.format(new Date());

   // System.out.println(date);        
   return date;
}

/**
* ������ �������� �˻��մϴ�.
* @param request
* @return true: ������
*/
public static synchronized boolean isAdmin(HttpServletRequest request){
 boolean sw = false;
 
 HttpSession session = request.getSession(); // java class���� session ��ü ����
 String act = (String)session.getAttribute("act"); // ���� ����
 
 if (act != null){
   if (act.equals("M") || act.equals("Y")){ // �α��� ����
     sw = true;
   }
 }
 return sw;
}

/**
* ������ �������� �˻��մϴ�.
* @param request
* @return true: ������ ����
*/
public static synchronized boolean isMaster(HttpServletRequest request){
 boolean sw = false;
 
 HttpSession session = request.getSession();
 String act = (String)session.getAttribute("act"); // ��Ȱ
 // System.out.println("--> Tool.java act: " + act);
 
 if (act != null){
   if (act.equals("M")){ // ���������� �˻�
     sw = true;
   }
 }
 return sw;
}

/**
* response.sendRedirect("")������ �ѱ� ���޽� ��ȯ
* 
* @param str ��ȯ�� ���ڿ�
* @return ��ȯ�� ���ڿ�
*/
public static synchronized String toKorea(String str) {
 try {
   if (str == null) {
     str = "";
   } else {
     str = URLEncoder.encode(str, "utf-8");
     // System.out.println("Tool.java: " + str);
   }
 } catch (Exception e) {
 }
 return str;
} 

/**
* �ѱ� ��ȯ �ڵ带 ã�� ����� ����
* 
* @param s
*/
public static synchronized void charsetTest(String s) {
 try {
   String[] charset = { "EUC-KR", "KSC5601", "ISO-8859-1", "8859_1",
       "ASCII", "UTF-8" };
   for (int i = 0; i < charset.length; i++) {
     for (int j = 0; j < charset.length; j++) {
       if (i == j)
         continue;
       System.out.print(charset[i] + " -> " + charset[j] + " : ");
       System.out.println(new String(s.getBytes(charset[i]), charset[j]));
     }
   }
 } catch (Exception e) {
   e.printStackTrace();
 }
}

/**
* Ajax �ѱ� ��ȯ
* 
* @param ko
* @return
*/
public static synchronized String koAjax(String ko) {
 String corean = null;
 try {
   // corean= new String(ko.getBytes("ISO-8859-1"), "UTF-8");
   corean = new String(ko.getBytes("KSC5601"), "EUC-KR");
 } catch (Exception e) {
   return corean;
 }
 return corean;
}


/**
* �ڹٽ�ũ��Ʈ Ư������, �ٹٲ� ���� ��ȯ
* 
* @param str
* @return
*/
public static synchronized String toJS(String str) {
 if (str != null) {
   return str.replace("\\", "\\\\").replace("\'", "\\\'")
       .replace("\"", "\\\"").replace("\r\n", "\\n").replace("\n", "\\n");

 } else {
   return "";
 }
}


/**
* Android �ѱ� ��ȯ
* 
* @param ko
* @return
*/
public static synchronized String koAndroid(String ko) {
 String corean = null;
 try {
   // corean= new String(ko.getBytes("UTF-8"), "EUC-KR");
   // corean= new String(ko.getBytes("ISO-8859-1"), "UTF-8");
   // corean= new String(ko.getBytes("KSC5601"), "EUC-KR");
   corean = new String(ko.getBytes("8859_1"), "UTF-8");
 } catch (Exception e) {
   return corean;
 }
 return corean;
}


/**
* ���ڿ��� ���̰� length ���� ũ�� "..." �� ǥ���ϴ� �޼ҵ�
* 
* @param str ���ڿ�
* @param length ������ ���ڿ� ����
* @return
*/
public static synchronized String textLength(String str, int length) {

 if (str != null) {
   if (str.length() > length) {
     str = str.substring(0, length) + "..."; // ����: 0 ~ length - 1 ����
   }
 } else {
   str = "";
 }

 return str;
}

/**
* null Ư�� ���ڳ� "null" ���ڿ��� ���� ""���� �����մϴ�.
* @param str ���� ���ڿ�
* @return ����� ���ڿ�
*/
public static synchronized String checkNull(String str) {
 if (str == null) {
   return "";
 } else if (str.equals("null")) {
   return "";
 } else {
   return str;  
 }
}

/**
* HTML Ư�� ������ ����
* @param str
* @return
*/
public static synchronized String convertChar(String str) {
 str = str.replaceAll("<", "&lt;");
 str = str.replaceAll(">", "&gt;");
 str = str.replaceAll("'", "&#39;");
 str = str.replaceAll("\"", "&quot;");
 str = str.replaceAll("\r\n", "<BR>");
 
 return str;
}

/**
* HTML Ư�� ������ ����, ���� �и����� ����.
* @param str
* @return
*/
public static synchronized String convertChar2(String str) {
 str = str.replaceAll("<", "&lt;");
 str = str.replaceAll(">", "&gt;");
 str = str.replaceAll("'", "&#39;");
 str = str.replaceAll("\"", "&quot;");
 
 return str;
}

/**
* �̹��� ����� �����Ͽ� ���ο� Preview �̹����� �����մϴ�.
<pre>
��뿹): Too.preview(folder ��, ���� ���ϸ�, 200, 150)
</pre>
* @param upDir ���� �̹��� ����
* @param _src ���� ���ϸ�
* @param width ������ �̹��� �ʺ�
* @param height  ������ �̹��� ����, ImageUtil.RATIO�� �ڵ� ��� ����
* @return src.jpg ������ �̿��Ͽ� src_t.jpg ������ �����Ͽ� ���ϸ� ����
*/
public static synchronized String preview(String upDir, String _src, int width,
   int height) {
 int RATIO = 0;
 int SAME = -1;

 File src = new File(upDir + "/" + _src); // ���� ���� ��ü ����
 String srcname = src.getName(); // ���� ���ϸ� ����

 // ���� ���ϸ� ����, mt.jpg -> mt �� ����
 String _dest = srcname.substring(0, srcname.indexOf("."));

 // ��� �̹��� ���� /upDir/mt_t.jpg
 File dest = new File(upDir + "/" + _dest + "_t.jpg");

 Image srcImg = null;
 // ������ Ȯ���� ����
 String name = src.getName().toLowerCase(); // ���ϸ� ����
 // �̹��� �������� �˻�
 if (name.endsWith("jpg") || name.endsWith("bmp") || name.endsWith("png")
     || name.endsWith("gif")) {
   try {
     srcImg = ImageIO.read(src); // �޸𸮿� ���� �̹��� ����
     int srcWidth = srcImg.getWidth(null); // ���� �̹��� �ʺ� ����
     int srcHeight = srcImg.getHeight(null); // ���� �̹��� ���� ����
     int destWidth = -1, destHeight = -1; // ��� �̹��� ũ�� �ʱ�ȭ

     if (width == SAME) { // width�� ���� ���
       destWidth = srcWidth;
     } else if (width > 0) {
       destWidth = width; // ���ο� width�� �Ҵ�
     }

     if (height == SAME) { // ���̰� ���� ���
       destHeight = srcHeight;
     } else if (height > 0) {
       destHeight = height; // ���ο� ���̷� �Ҵ�
     }

     // ������ ���� ũ�� ���
     if (width == RATIO && height == RATIO) {
       destWidth = srcWidth;
       destHeight = srcHeight;
     } else if (width == RATIO) {
       double ratio = ((double) destHeight) / ((double) srcHeight);
       destWidth = (int) ((double) srcWidth * ratio);
     } else if (height == RATIO) {
       double ratio = ((double) destWidth) / ((double) srcWidth);
       destHeight = (int) ((double) srcHeight * ratio);
     }

     // �޸𸮿� ��� �̹��� ����
     Image imgTarget = srcImg.getScaledInstance(destWidth, destHeight,
         Image.SCALE_SMOOTH);
     int pixels[] = new int[destWidth * destHeight];
     PixelGrabber pg = new PixelGrabber(imgTarget, 0, 0, destWidth,
         destHeight, pixels, 0, destWidth);

     pg.grabPixels();

     BufferedImage destImg = new BufferedImage(destWidth, destHeight,
         BufferedImage.TYPE_INT_RGB);
     destImg.setRGB(0, 0, destWidth, destHeight, pixels, 0, destWidth);

     // ���Ͽ� ���
     ImageIO.write(destImg, "jpg", dest);

     System.out.println(dest.getName() + " �̹����� �����߽��ϴ�.");
   } catch (Exception e) {
     e.printStackTrace();
   }
 }

 return dest.getName();
}

/**
* �̹������� �˻�
* @param file
* @return
*/
public static synchronized boolean isImage(String file) {
 boolean sw = false;

 if (file != null) {
   file = file.toLowerCase(); // �ҹ���
   if (file.endsWith(".jpg") || file.endsWith(".jpeg")
       || file.endsWith(".png") || file.endsWith(".gif")) {
     sw = true;
   }
 }
 return sw;
}

/**
* ���� ���޹޾� �ڷ��� ������ �����մϴ�.
* @param size
* @return 1000 > 1000 Byte
*/
public static  synchronized String unit(long size){
 String str = "";
 
 if (size < 1024){ // 1 KB ����
   str = size + " Byte";
 }else if (size < 1024 * 1024){ // 1 MB ����
   str = (int)(Math.ceil(size/1024.0)) + " KB"; // 1048576 ���� ������ KB
 }else if (size < 1024 * 1024 * 1024){ // 1 GB ����
   str = (int)(Math.ceil(size/1024.0/1024.0)) + " MB";
 }else if (size < 1024L * 1024 * 1024 * 1024){ // 1 TB ����
   str = (int)(Math.ceil(size/1024.0/1024.0/1024.0)) + " GB";
 }else if (size < 1024L * 1024 * 1024 * 1024 * 1024){ // 1 PT ����
   str = (int)(Math.ceil(size/1024.0/1024.0/1024.0/1024.0)) + " TB";
 }else if (size < 1024L * 1024 * 1024 * 1024 * 1024 * 1024){ // 1 EX ����
   str = (int)(Math.ceil(size/1024.0/1024.0/1024.0/1024.0/1024.0)) + " PT";
 }
 
 return str;
}

/**
* ������ �����մϴ�.
*/
public static synchronized boolean deleteFile(String folder, String fileName) {
 boolean ret = false;

 try {
   if (fileName != null) { // ������ ������ �����ϴ� ��� ����
     File file = new File(folder + "/" + fileName);
     if (file.exists() && file.isFile()) { // �����ϴ� �������� �˻�
       ret = file.delete();
     }
   }
 } catch (Exception e) {
   e.printStackTrace();
 }

 return ret;
}

public static void main(String[] args) {
 System.out.println(Tool.convertChar("�±� <TABLE><TH><TD> �ǽ� "));
 // �±� &lt;TABLE&gt;&lt;TH&gt;&lt;TD&gt; �ǽ� 
}

}