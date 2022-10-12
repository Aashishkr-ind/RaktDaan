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
<script src="SpryAssets/SpryValidationPassword.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<link href="SpryAssets/SpryValidationPassword.css" rel="stylesheet" type="text/css" />
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
</head>

<body>
<form id="form4" name="form4" method="post" action="process.jsp">
<%@include file="header.jsp" %>
 
 
   
    
<table  rules="none" width="90%" border="0" align="center" cellpadding="3" cellspacing="3">
        <tr>
          <td colspan="2" align="center" valign="top">&nbsp;</td>
        </tr>
        <tr>
          <td width="74%" align="center" valign="top"><p><img src="img/EoJ7QXlVoAIjJOB.jpg" width="550" height="333" />            </p></td>
          <td width="26%" valign="top"><br />
            <table width="451" height="322" border="1" align="center" cellpadding="4" cellspacing="4"   rules="rows">
            <tr>
              <td colspan="2"><h1><img width="376" height="118" src="login_clip_image001_0000.png" alt="Flowchart: Decision: Login" /></h1></td>
            </tr>
            <tr>
              <td width="90" valign="top"><span class="style1">User Name</span></td>
              <td width="320"><span id="sprytextfield1">
                <input name="t1" type="text" id="t1" size="33" />
                <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
            <tr>
              <td><span class="style1">Password</span></td>
              <td><span id="sprypassword1">
                <input name="t2" type="password" id="t2" size="33" />
                <span class="passwordRequiredMsg">A value is required.</span></span></td>
</tr>
            <tr>
              <td>Select</td>
              <td><select name="select" id="select">
                <option>User</option>
                <option>Hospital</option>
              </select></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><input type="submit" name="l1" value="Login" />
                <br /></td>
            </tr>
            <tr> </tr>
            <tr> </tr>
            <tr> </tr>
            <tr> </tr>
            <tr> </tr>
            <tr> </tr>
            <tr> </tr>
            <tr> </tr>
            <tr> </tr>
            <tr> </tr>
          </table>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p></td>
    </tr>
        <tr>
          <td colspan="2" valign="top" bgcolor="#8B0100"><img src="img/h1.jpg" width="566" height="89" /></td>
    </tr>
  </table>
</form>
<script type="text/javascript">
var sprypassword1 = new Spry.Widget.ValidationPassword("sprypassword1");
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
</script>
</body>
</html>
