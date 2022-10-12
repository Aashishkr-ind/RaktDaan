<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body,td,th {
}
.style1 {
	color: #460A0A
}
#Layer1 {
	position:absolute;
	left:428px;
	top:211px;
	width:492px;
	height:228px;
	z-index:1;
}
.style13 {font-size: 24px}
body {
	background-image: url();
}
#form4 td table tr td table tr td h1 {
	text-align: center;
	color: #55080E;
}
#form4 td table tr td .style1 {
	color: #400809;
}
#form4 table tr td table tr td h1 {
	text-align: center;
}
#form4 table tr td table tr td {
	color: #400809;
}
#form4 table tr td table tr td a {
	font-size: 12px;
}
-->
</style>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.style20 {font-size: 14px}
</style>
</head>
<script>
var image_tracker='i';
function first()
{
var image=document.getElementById('id1');
if(image_tracker=='i')
{
image.src="FirstImage/1.png";
image_tracker='a';	
}
else if(image_tracker=='a')
{
image.src="FirstImage/2.png";
image_tracker='d';
}
else if(image_tracker=='d')
{
image.src="FirstImage/3.png";
image_tracker='d1';
}
else if(image_tracker=='d1')
{
image.src="FirstImage/4.jpg";
image_tracker='d2';
}
else if(image_tracker=='d2')
{
image.src="FirstImage/5.jpg";
image_tracker='d3';
}
else if(image_tracker=='d3')
{
image.src="FirstImage/6.jpg";
image_tracker='d4';
}
else if(image_tracker=='d4')
{
image.src="FirstImage/7.jpg";
image_tracker='i';
}

}
setInterval('first()',1000);
</script>
<body>
<%@ include file="conn.jsp"%>
<form id="form4" name="form4" method="post" action="process.jsp">
<%@include file="header.jsp" %>
 
 
    <%
	session.setAttribute("mg",".");
	
	%>
    
    
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td valign="top"><table rules="rows" width="100%" cellpadding="7" cellspacing="7">
            <tr>
              <td width="103" align="center"><h3><strong>Name</strong></h3></td>
              <td width="88" align="center"><h3><strong>Email Id</strong></h3></td>
              <td width="115" align="center"><h3><strong>Phone</strong></h3></td>
              <td width="105" align="center"><h3><strong>Gender</strong></h3></td>
              <td width="77" align="center"><h3><strong>Qualification</strong></h3></td>
              <td width="138" align="center"><h3><strong>Experience</strong></h3></td>
              <td width="143" align="center"><h3><strong>Age</strong></h3></td>
              <td width="168" align="center"><h3><strong>Specialists</strong></h3></td>
              <td width="187" align="center"><span class="style20">Other Details</span></td>
            </tr>
            <%
					
String query="select * from doctor";
ResultSet rs=st.executeQuery(query);
				
            while(rs.next())
{
%>
            <tr>
              <td align="center"><span style="font-size:12px"><%=rs.getString(1)%></span></td>
              <td align="center"><span style="font-size:12px"><%=rs.getString(4)%></span></td>
              <td align="center"><span style="font-size:12px"><%=rs.getString(5)%></span></td>
              <td align="center"><span style="font-size:12px"><%=rs.getString(6)%></span></td>
              <td align="center"><span style="font-size:12px"><%=rs.getString(7)%></span></td>
              <td align="center"><span style="font-size:12px"><%=rs.getString(8)%></span></td>
              <td align="center"><span style="font-size:12px"><%=rs.getString(9)%></span></td>
              <td align="center"><span style="font-size:12px"><%=rs.getString(10)%></span></td>
              <td align="center"><span style="font-size:12px"><%=rs.getString(11)%></span></td>
              <%
}
%>
            </tr>
          </table></td>
    </tr>
        <tr>
          <td valign="top" bgcolor="#930303"><img src="img/h1.jpg" width="566" height="89" /></td>
    </tr>
  </table>
</form>
</body>
</html>
