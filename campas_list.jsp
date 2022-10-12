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
</style>
</head>
<%@ include file="conn.jsp"%>
<body>

<form id="form1" name="form1" method="post" action="feedback_code.jsp">

  <table width="90%" border="0" align="center" cellpadding="5" cellspacing="5">
    <tr>
      <td valign="top"><table  width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="186" height="87" align="center" valign="bottom" bgcolor="#1D3752"><p><img src="img/blood.gif" width="150" height="150" /></p>
            <p><a href="welcome.jsp"><img src="img/hm.png" width="45" height="45" border="0" /></a><br />
            </p></td>
          <td width="825" height="87" align="center" valign="top" bgcolor="#1D3752"><br />            <img src="img/Header.jpg" width="700" height="100" border="11" /></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td width="811" align="center" valign="top"><p align="justify" class="style17">&nbsp;</p>
        <p>
          <% 

String query="select * from camps_table";
ResultSet rs=st.executeQuery(query);
%>
        <img width="455" height="72" src="campas_list_clip_image002_0000.png" alt="Rounded Rectangle: CAMP SCHEDULE" />        </p>
        <p>&nbsp;        </p>
        <table width="100%">
          <tr>
            <td width="91" align="center" bgcolor="" style="font-size:20px"><strong><span class="style15">Camp No</span></strong></td>
            <td width="74" align="center" style="font-size:20px"><strong><span class="style15">Date</span></strong></td>
            <td width="112" align="center" bgcolor="" style="font-size:20px"><strong><span class="style15">Camp Name</span></strong></td>
            <td width="90" align="center" bgcolor="" style="font-size:20px"><strong><span class="style15">Address</span></strong></td>
            <td width="104" align="center" bgcolor="" style="font-size:20px"><strong><span class="style15">State</span></strong></td>
            <td width="128" align="center" bgcolor="" style="font-size:20px"><strong>District</strong></td>
            <td width="117" align="center" bgcolor="" style="font-size:20px"><strong>Contact</strong></td>
            <td width="168" align="center" bgcolor="" style="font-size:20px"><strong>Conducted_By</strong></td>
            <td width="162" align="center" bgcolor="" style="font-size:20px"><strong><span class="style15">Organized_by</span></strong></td>
          </tr>
          <tr>
            <td colspan="9"><hr /></td>
          </tr>
          <%
while(rs.next())
{
%>
          <tr>
            <td align="center"><%=rs.getString(1)%></td>
            <td align="center"><%=rs.getString(2)%></td>
            <td align="center"><%=rs.getString(3)%></td>
            <td align="center"><%=rs.getString(4)%></td>
            <td align="center"><%=rs.getString(5)%></td>
            <td align="center"><%=rs.getString(5)%></td>
            <td align="center"><%=rs.getString(5)%></td>
            <td align="center"><%=rs.getString(5)%></td>
            <td align="center"><%=rs.getString(6)%></td>
            <%

}
%>
          </tr>
        </table>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p></p>        
      <br /></td>
    </tr>
    <tr>
      <td bgcolor="#A32026"><img src="img/h1.jpg" width="566" height="89" /></td>
    </tr>
  </table>
</form>
</body>
</html>
