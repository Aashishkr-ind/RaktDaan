
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*"  errorPage="" %>


<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@ page  import="java.sql.*" %>


<%@ page language="java" import="java.io.UnsupportedEncodingException"%>
<%@ page language="java" import ="java.security.InvalidAlgorithmParameterException"%>
<%@ page language="java" import ="java.security.InvalidKeyException"%>
<%@ page language="java" import ="java.security.NoSuchAlgorithmException"%>

<%@ page language="java" import ="javax.crypto.Cipher"%>
<%@ page language="java" import ="javax.crypto.NoSuchPaddingException"%>
<%@ page language="java" import ="javax.crypto.spec.IvParameterSpec"%>
<%@ page language="java" import ="javax.crypto.spec.SecretKeySpec"%>
<%@ page language="java" import ="sun.misc.BASE64Encoder"%>	
<%@ page language="java" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<%@ include file="conn.jsp"%>
<body>
						 
<%
String a=request.getParameter("text1");
String b=request.getParameter("text2");
String c=request.getParameter("text3");
String d=request.getParameter("text4");
String e=request.getParameter("text5");
  
  
  
   String u;
byte[] userBytes=null;
byte[] raw = null;
u=b;
  String key="1111111111111111";
     try
     {

SecretKeySpec keySpec = new SecretKeySpec(key.getBytes(), "AES");
IvParameterSpec ivSpec = new IvParameterSpec(key.getBytes());
Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
cipher.init(Cipher.ENCRYPT_MODE, keySpec, ivSpec);
userBytes = u.getBytes("UTF8");
raw = cipher.doFinal(userBytes);
} 
catch (Exception e1)
{
	e1.printStackTrace();
}

BASE64Encoder encoder = new BASE64Encoder();
String base64u = encoder.encode(raw);


try
{
String query="insert into login values('"+a+"','"+base64u+"','"+c+"','"+d+"','"+e+"')";
int in=st.executeUpdate(query);



if(in==1)
{
	session.setAttribute("mg","Register Sucessfuly");
	
response.sendRedirect("newuser.jsp");
}
}
catch(Exception ee)
{
out.print(ee);
}

%>
</body>
</html>
