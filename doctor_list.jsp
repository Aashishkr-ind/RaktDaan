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
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.style20 {font-size: 14px}
#form1 table tr td table tr td {
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
        <li><a href="Bloodbanklist.jsp">Blood Bank List Report</a></li>
        <li><a href="bloodreceiverlist.jsp">Blood Receiver Report</a></li>
        <li><a href="view_Donar_list.jsp">Donar Report</a></li>
        <li><a href="doctor_list.jsp">Doctor List Report</a></li>
        <li><a href="nodalhoslist.jsp">Hospital Report</a></li>
        <li><a href="Blood_bank_stock_input.jsp">Blood Bank Stock</a></li>
        <li><a href="campas_list_input.jsp">Camps Details</a></li>
        <li><a href="viewuserlist.jsp">User List Report</a></li>
        <li><a href="feedback_report.jsp">Feed Back Report</a></li>
        <li><a href="logout.jsp">Logout</a></li>
      </ul>        <img src="img/blood-for-life.jpg" width="174" height="217" /></td>
      <td width="811" align="center" valign="top"><p align="justify" class="style17">&nbsp;</p>
        <table rules="rows" width="1086" border="1" align="center" cellpadding="2" cellspacing="2">
          <tr>
            <td bgcolor="#1D3752"><h3><span class="style20">Doctor Id</span></h3></td>
            <td bgcolor="#1D3752"><h3>Name</h3></td>
            <td bgcolor="#1D3752"><h3>Address</h3></td>
            <td bgcolor="#1D3752"><h3><span class="style20">Email</span></h3></td>
            <td bgcolor="#1D3752"><h3><span class="style20">Phone</span></h3></td>
            <td bgcolor="#1D3752"><h3><span class="style20">Gender</span></h3></td>
            <td bgcolor="#1D3752"><h3><span class="style20">Qualification</span></h3></td>
            <td bgcolor="#1D3752"><h3><span class="style20">Experience</span></h3></td>
            <td bgcolor="#1D3752"><h3><span class="style20">Age</span></h3></td>
            <td bgcolor="#1D3752"><h3><span class="style20">Practising At</span></h3></td>
            <td bgcolor="#1D3752"><h3><span class="style20">Other Details</span></h3></td>
          </tr>
          <%
					
String query="select * from doctor";
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
            <%
}
%>
          </tr>
        </table>
        <p>&nbsp;</p>
        <p></p>        
      <br /></td>
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
