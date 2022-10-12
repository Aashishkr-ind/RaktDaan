<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Doctor Details</title>
</head>
	<%@ include file="conn.jsp"%>
<body>
<%
String a=request.getParameter("t1");
String b=request.getParameter("t2");
String c=request.getParameter("t3");	
String d=request.getParameter("t4");
String e=request.getParameter("t5");
String f=request.getParameter("t6");
String g=request.getParameter("t7");
String h=request.getParameter("t8");
String i=request.getParameter("t9");
String j=request.getParameter("t10");
String k=request.getParameter("t11");
String l=request.getParameter("t12");
int  m=Integer.parseInt(request.getParameter("t13"));
String n=request.getParameter("t14");



try
{ 
st.executeUpdate("Insert into donar values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"','"+l+"',"+m+",'"+n+"')");

//------------------------------------------------------------------------------------------------------------------


String hid="";
ResultSet rs=st.executeQuery("SELECT  HID FROM `hospital_reg` WHERE   Location='"+b+"' AND Hospital_Name='"+c+"'");
				
            while(rs.next())
			{
				
			hid=rs.getString(1);
				
			}
			
			
	out.print(hid);


st.executeUpdate("UPDATE `blood_stockofhospital` SET Qty_available=(Qty_available-'"+m+"')  WHERE Blood_group='"+h+"' AND BHID='"+hid+"'");
	
//----------------------------------------------------------------------------------------------------------


session.setAttribute("mg","Sucessfuly Insert Receiver Form");
response.sendRedirect("Receiver.jsp");
}
catch(Exception ee)
{
	out.print(ee);
}
%>
</body>
</html>
