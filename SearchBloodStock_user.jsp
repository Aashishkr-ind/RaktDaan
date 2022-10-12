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
      <td colspan="3" valign="top"><table  width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="179" align="center" valign="top" bgcolor="#000000"><br />          <img src="img/Header.jpg" width="725" height="100" border="11" /></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td align="center" valign="top">&nbsp;</td>
      <td align="center" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
      <td valign="top" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td width="138" align="center" valign="top"><p><a href="welcome.jsp"><img src="img/hm.png" width="45" height="45" border="5" /></a></p>
      <p><img src="img/00.jpg" width="200" height="315" /></p></td>
      <td width="447" align="center" valign="top" bgcolor="#000000"><form id="form1" name="form1" method="post" action="">
<p>&nbsp;</p>
<table width="421" height="286" border="1">
          <tr>
            <td width="63" align="center" bgcolor="#F2F2F2"><img src="img/POP.png" width="238" height="220" /></td>
          </tr>
          <tr>
            <td><select name="select3" id="select3">
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
            <td bgcolor="#EFEFEF"><input type="submit" name="button" id="button" value="Show Hospital" /></td>
          </tr>
        </table>
      </form>
        <form id="form2" name="form2" method="post" action="">
          <table width="418" height="60" border="1">
            <tr>
              <td><select name="select" id="select">
                <option>Hospital Name</option>
                <%
				
String loc=request.getParameter("select3");


ResultSet rs=st.executeQuery("SELECT Hospital_Name FROM hospital_reg where Location='"+loc+"' ");
			
           
		  while(rs.next())
		   
{
	
	
%>
                <option><%=rs.getString(1)%></option>
                <%
}



%>
              </select></td>
            </tr>
            <tr>
              <td bgcolor="#EFEFEF"><input type="submit" name="button2" id="button2" value="Search Blood Stock" /></td>
            </tr>
          </table>
          <p>&nbsp;</p>
        </form></td>
      <td width="448" valign="top" bgcolor="#000000"><p>&nbsp;</p>
        <table  width="100%" border="1" align="center" cellpadding="5" cellspacing="6">
        <tr>
          <td width="234"><p><strong>BLOOD GROUPS</strong></p></td>
          <td width="220"><p class="style201">QTY_AVAILABLE(UNIT)</p></td>
        </tr>
        <%
					
String hnm=request.getParameter("select");
ResultSet rss=st.executeQuery("SELECT Blood_group,Qty_available FROM `hospital_reg` h,`blood_stockofhospital` b WHERE h.HID=b.BHID AND h.Hospital_Name='"+hnm+"'");
				
            while(rss.next())
{
%>
        <tr>
          <td><span style="font-size:12px"><%=rss.getString(1)%></span></td>
          <td><span style="font-size:12px"><%=rss.getString(2)%></span></td>
          <%
}
%>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td colspan="3" bgcolor="#A32026"><img src="img/h1.jpg" width="566" height="89" /></td>
    </tr>
  </table>

</body>
</html>
