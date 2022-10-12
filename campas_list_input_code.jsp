<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
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



st.executeUpdate("Insert into camps_table  values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"')");

session.setAttribute("mg","Camp  Schedule Sucessfuly");
response.sendRedirect("campas_list_input.jsp");

%>

</body>
</html>
