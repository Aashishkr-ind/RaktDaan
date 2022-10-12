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
	background-color: #000;
}
#form1 table tr td table tr td h3 {
	color: #FFF;
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
</head>
<%@ include file="conn.jsp"%>
<body>

<form id="form1" name="form1" method="post" action="">

  <table width="90%" border="0" align="center" cellpadding="5" cellspacing="5">
    <tr>
      <td width="811" valign="top"><table  width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="87" valign="bottom" bgcolor="#FFFFFF"><img src="img/imag11es.jpg" width="174" height="155" /><img src="img/Header.jpg" width="707" height="150" /><br /></td>
          </tr>
      </table></td>
    </tr>
    <tr>
      <td bgcolor="#FFFFFF"><p><a href="welcome.jsp"><img src="img/hm.png" width="45" height="45" border="0" /></a></p>
        <table width="100%" border="1" align="center" cellpadding="5" cellspacing="6"  rules="rows">
        <tr>
          <td colspan="13" align="center" bgcolor="#1D3752"><h3><strong>BLOOD RECIPIENT LIST</strong></h3></td>
        </tr>
        <tr>
          <td>Id</td>
          <td>Hospital_nm</td>
          <td>location</td>
          <td>Name</td>
          <td>Phone</td>
          <td>Email</td>
          <td>Address</td>
          <td>Blood_Group</td>
          <td>Physical_Status</td>
          <td>Diabetic</td>
          <td>Blood_Pressure</td>
          <td>Weight</td>
          <td>Howmuch_unit</td>
        </tr>
        <%
					
String query="select * from receiver";
ResultSet rs=st.executeQuery(query);
				
            while(rs.next())
{
%>
        <tr>
          <td><span style="font-size:12px"><%=rs.getString(1)%></span></td>
          <td><span style="font-size:12px"><%=rs.getString(2)%></span></td>
          <td><span style="font-size:12px"><%=rs.getString(3)%></span></td>
          <td><span style="font-size:12px"><%=rs.getString(4)%></span></td>
          <td><span style="font-size:12px"><%=rs.getString(5)%></span></td>
          <td><span style="font-size:12px"><%=rs.getString(6)%></span></td>
          <td><span style="font-size:12px"><%=rs.getString(7)%></span></td>
          <td><span style="font-size:12px"><%=rs.getString(8)%></span></td>
          <td><span style="font-size:12px"><%=rs.getString(9)%></span></td>
          <td><span style="font-size:12px"><%=rs.getString(10)%></span></td>
          <td><span style="font-size:12px"><%=rs.getString(11)%></span></td>
          <td><span style="font-size:12px"><%=rs.getString(12)%></span></td>
          <td><span style="font-size:12px"><%=rs.getString(13)%></span></td>
       
          <%
}
%>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td bgcolor="#A32026"><img src="img/h1.jpg" width="985" height="112" /></td>
    </tr>
  </table>
</form>
</body>
</html>
