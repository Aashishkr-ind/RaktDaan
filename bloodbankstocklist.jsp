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
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background-image: url();
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
</style>
</head>
<%@ include file="conn.jsp"%>
<body>

<form id="form1" name="form1" method="post" action="feedback_code.jsp">

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
      <td width="149" valign="top" bgcolor="#EEEEEE"><ul id="MenuBar1" class="MenuBarVertical">
        <li><a href="welcome.jsp">Home</a></li>
        <li><a href="donar.jsp">Donar</a></li>
        <li><a href="Receiver.jsp">Receiver</a></li>
<li><a href="hospital.jsp">Hospital</a></li>
<li><a href="Doctor_insert.jsp">Doctor</a></li>
        <li><a href="BloodBank.jsp">Blood Bank</a></li>
        <li><a href="feedback.jsp">Feed Back</a></li>
        <li><a href="bloodbankstocklist.jsp">Blood Bank Stock</a></li>
        <li><a href="campas_list.jsp">Camps Details</a></li>
        <li><a href="connus.jsp">Contact Us</a></li>
        <li><a href="logout.jsp">Logout</a></li>
      </ul>
      <img src="img/blood-for-life.jpg" width="174" height="217" /></td>
      <td width="811" align="center" valign="top"><p align="justify" class="style17">
        <% 

String query="select * from blood_bank_stock";
ResultSet rs=st.executeQuery(query);
%>
      </p>
        <p>&nbsp;</p>
        <table width="80%">
          <tr>
            <td width="116" align="center" bgcolor="" style="font-size:20px"><span class="style15">Bank Group</span></td>
            <td width="75" align="center" style="font-size:20px"><span class="style15">Qty Available</span></td>
            <td width="130" align="center" bgcolor="" style="font-size:20px"><span class="style15">Qty Required</span></td>
          </tr>
          <tr>
            <td colspan="3"><hr /></td>
          </tr>
          <%
while(rs.next())
{
%>
          <tr>
            <td align="center"><%=rs.getString(1)%></td>
            <td align="center"><%=rs.getString(2)%></td>
            <td align="center"><%=rs.getString(3)%></td>
            <%

}
%>
          </tr>
        </table>
      <p></p>        <br /></td>
    </tr>
    <tr>
      <td colspan="2" bgcolor="#A32026"><img src="img/h1.jpg" width="566" height="89" /></td>
    </tr>
  </table>
</form>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>
