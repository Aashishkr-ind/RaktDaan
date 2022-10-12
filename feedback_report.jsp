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
.style1 {color: #FFFFFF}
.style2 {color: #00FFFF}
.style10 {font-size: 12px}
.style12 {color: #990000}
.style16 {color: #FF0000}
.style17 {font-size: 14px}
.style18 {font-size: 14}
.style19 {color: #FFFFFF; font-size: 12px; }
-->
</style>
<style type="text/css">
body {
	background-image: url();
}
#form1 table tr td table tr td h3 {
}
#form1 table tr td table tr td h1 {
	color: #FFF;
}
.style13 {font-size: 24px}
.style14 {font-size: 12px}
.style161 {font-size: 10px}
.style15 {font-size: 16px;
	font-weight: bold;
}
.style151 {
	color: #FFF;
}
</style>
<style type="text/css">
.style20 {font-size: 14px}
#form1 table tr td table tr td {
}
#form1 table tr td table {
}
tr {
}
tr {
}
tr {
}
.style131 {font-size: 24px;
	text-align: center;
}
.style1311 {font-size: 24px}
.style201 {font-size: 14px;
	font-weight: bold;
}
.style202 {font-size: 14px;
	font-weight: bold;
}
</style>
</head>
<%@ include file="conn.jsp"%>
<body>

<form id="form1" name="form1" method="post" action="campas_list_input_code.jsp">

  <table width="90%" border="0" align="center" cellpadding="5" cellspacing="5">
    <tr>
      <td colspan="2" valign="top"><table  width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="186" height="87" align="center" valign="bottom" bgcolor="#1D3752"><img src="img/blood.gif" width="150" height="150" /></td>
          <td width="825" height="87" align="center" valign="top" bgcolor="#1D3752"><br />            <img src="img/Header.jpg" width="700" height="100" border="11" /></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td width="149" align="center" valign="top"><p><a href="hospital_Panel.jsp"><img src="img/hm.png" width="45" height="45" border="0" /></a></p>
      <p><img src="img/aaa.png" width="355" height="142" /></p></td>
      <td width="811" align="center" valign="top"><p align="justify" class="style17">&nbsp;</p>
        <table rules="none" width="100%" border="1" align="center" cellpadding="3" cellspacing="3">
          <tr>
            <td width="125"><span class="style201"> Name</span></td>
            <td width="125"><span class="style201">Phone</span></td>
            <td width="125"><span class="style201">Email</span></td>
            <td width="125"><span class="style202">Suggestions Feedback</span></td>
          </tr>
          <%
					
String query="select * from feedback";
ResultSet rs=st.executeQuery(query);
				
            while(rs.next())
{
%>
          <tr>
            <td><span style="font-size:12px"><%=rs.getString(1)%></span></td>
            <td><span style="font-size:12px"><%=rs.getString(2)%></span></td>
            <td><span style="font-size:12px"><%=rs.getString(3)%></span></td>
            <td><span style="font-size:12px"><%=rs.getString(4)%></span></td>
            <%
}
%>
          </tr>
        </table>
      <br /></td>
    </tr>
    <tr>
      <td colspan="2" bgcolor="#A32026"><img src="img/h1.jpg" width="566" height="89" /></td>
    </tr>
  </table>
</form>
</body>
</html>
