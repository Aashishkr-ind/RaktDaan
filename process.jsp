<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@ page  import="java.sql.*" %>


<%@ page  import="java.sql.*"  %>

<%@ page import="java.io.*"  %>
<%@ page language="java" import="java.io.UnsupportedEncodingException"%>
<%@ page language="java" import ="java.security.InvalidAlgorithmParameterException"%>
<%@ page language="java" import ="java.security.InvalidKeyException"%>
<%@ page language="java" import ="java.security.NoSuchAlgorithmException"%>

<%@ page language="java" import ="javax.crypto.Cipher"%>
<%@ page language="java" import ="javax.crypto.NoSuchPaddingException"%>
<%@ page language="java" import ="javax.crypto.spec.IvParameterSpec"%>
<%@ page language="java" import ="javax.crypto.spec.SecretKeySpec"%>
<%@ page language="java" import ="sun.misc.BASE64Encoder"%>	
<%@ page language="java" import ="sun.misc.BASE64Decoder"%>	
<%@ page language="java" import="java.util.*"%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<%@ include file="conn.jsp"%>
<body>
					 
<%

 String a=request.getParameter("t1");
 String b=request.getParameter("t2");
 String ad=request.getParameter("select");

session.setAttribute("un",a);



//=================================================================================================================

//=============================================================================================================

 if(ad.equals("Hospital"))
 {
	 try
	 {
 ResultSet rs=st.executeQuery("select * from hospital_reg where HID='"+a+"' and Password='"+b+"'");
 
int i1=0;
	 while(rs.next())
	 { 
	i1++;
	 }
if(i1!=0)
response.sendRedirect("hospital_Panel.jsp");
else
response.sendRedirect("login.jsp");
 
 }
 catch(Exception et)
 {
	 out.print(et);
 }
 
 }

//---------------------------------------------------------------------------------------------------------------
else  if(ad.equals("User"))
 {
 
String u1,u=null,ivx="1111111111111111";
byte[] userBytes=null;
byte[] raw = null;
 //----------------------------------------------------------------------------------------------------------------------
try
{


PreparedStatement ps=con.prepareStatement("select * from  login  where Username='"+a+"'");
ResultSet rs=ps.executeQuery();

while(rs.next())
{
	u=rs.getString(2);
	
}
//---------------------------------------------------------------------------------------------------
SecretKeySpec keySpec = new SecretKeySpec(ivx.getBytes(), "AES");
		IvParameterSpec ivSpec = new IvParameterSpec(ivx.getBytes());
		Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
		cipher.init(Cipher.DECRYPT_MODE, keySpec, ivSpec);
		
		BASE64Decoder decoder = new BASE64Decoder();
        	raw = decoder.decodeBuffer(u);
		userBytes = cipher.doFinal(raw);
	  u1= new String(userBytes, "UTF8");
          
 //-----------------------------------------------------------------------------------------------------

if(u1.equals(b))
{


response.sendRedirect("welcome.jsp");
}
else
{
out.println("enter correct user name and password");
}
}
catch(Exception e)
{
out.println(e.getMessage());
}




 




 }
 
%>
</body>
</html>
