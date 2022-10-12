<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body,td,th {
	color: #FFF;
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
.style201 {font-size: 14px;
	font-weight: bold;
}
.style202 {font-size: 14px;
	font-weight: bold;
}
</style>
</head>
<body>
<%@ include file="conn.jsp"%>


  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td colspan="3" align="right" valign="top"><img src="img/Header.jpg" width="589" height="100" border="11" /></td>
    </tr>
    <tr>
      <td width="200" align="center" valign="top"><p><img src="img/00.jpg" width="200" height="315" /></p></td>
      <td width="323" align="center" valign="top" bgcolor="#000000"><form id="form1" name="form1" method="post" action="">
<p><a href="donar.jsp"><img src="img/BACK.png" width="145" height="46" /></a></p>
<table width="323" height="60" border="1" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="63" height="26" align="right"><select name="select3" id="select3">
              <option>Location</option>
              <%

ResultSet rs1=st.executeQuery("SELECT DISTINCT (Location) FROM hospital_reg");
			
         int fl=0;  
		  while(rs1.next())
		   
{
	fl++;
	
%>
              <option><%=rs1.getString(1)%></option>
              <%
}



%>
            </select></td>
          </tr>
          <tr>
            <td align="right"><input type="submit" name="button" id="button" value="Show Hospital" /></td>
          </tr>
        </table>
      </form></td>
      <td width="472" valign="top" bgcolor="#000000"><p>&nbsp;</p>
        <table  width="100%" border="1" align="center" cellpadding="5" cellspacing="6">
        <tr>
          <td width="234"><p><strong>HOSPITAL</strong></p></td>
          <td width="220"><p class="style201">MOBILE NUMBER</p></td>
        </tr>
        <%
					
String loc=request.getParameter("select3");
ResultSet rss=st.executeQuery("SELECT * FROM hospital_reg where Location='"+loc+"'" );
				
            while(rss.next())
{
%>
        <tr>
          <td><span style="font-size:12px"><%=rss.getString(3)%></span></td>
          <td><span style="font-size:12px"><%=rss.getString(5)%></span></td>
          <%
}
%>
        </tr>
      </table></td>
    </tr>
  </table>

</body>
</html>
