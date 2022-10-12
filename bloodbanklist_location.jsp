<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title></title>
</head>
	<%@ include file="conn.jsp"%>
<body>
<% 
String mg=request.getParameter("q");

String query="select  * from hospital_reg where Location='"+mg+"'";
ResultSet rs=st.executeQuery(query);
%>

<table border="0" width="970">
<tr> 

<td  bgcolor="#999999" style="font-size:18px" align="center"><b>Hospital Name</b></td>
<td   bgcolor="#999999" style="font-size:18px" align="center"><b>Mobile</b></td>
<td   bgcolor="#999999" style="font-size:18px" align="center"><b>Location</b></td>

<%
while(rs.next())
{
%>
<tr> 
<td align="center"><%=rs.getString(3)%></td>
<td align="center"><%=rs.getString(5)%></td>
<td align="center"><%=rs.getString(6)%></td>


<%
}
%>

</body>
</html>
