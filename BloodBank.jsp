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
</style>
</head>

<body>

<form id="form1" name="form1" method="post" action="">

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
      <td width="149" align="center" valign="top" bgcolor="#EEEEEE"><a href="welcome.jsp"><img src="img/hm.png" width="45" height="45" border="0" /></a>
      <p><img src="img/blood-for-life.jpg" width="174" height="217" /></p></td>
      <td width="811" valign="top"><%@ include file="blood_1.jsp" %>        <br /></td>
    </tr>
<tr>
      <td colspan="2" bgcolor="#A32026"><img src="img/h1.jpg" width="566" height="89" /></td>
    </tr>
  </table>
</form>
</body>
</html>
