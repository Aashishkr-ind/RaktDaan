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
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
</head>

<body>
<form id="form4" name="form4" method="post" action="hospital_reg_code.jsp">

<%@include file="header.jsp" %>
 
 
   
    
<table  rules="none" width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td align="center" valign="top">&nbsp;</td>
        </tr>
        <tr>
          <td valign="top"><table width="818" height="560" border="1" align="center" cellpadding="5" cellspacing="5"  rules="rows">
            <tr>
              <td height="47" colspan="2" valign="middle"><span class="style13">New Hospital Sign Up</span><br />
                It's free, and always will be.
                <div></div></td>
            </tr>
            <tr>
              <td width="188">HID</td>
              <td width="545"><span id="sprytextfield2">
                <input name="text1" type="text" id="text1" size="44" />
                <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
            <tr>
              <td>Password</td>
              <td><span id="sprytextfield3">
                <input name="text2" type="password" id="text2" size="44" />
                <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
            <tr>
              <td>Hospital Name</td>
              <td><span id="sprytextfield4">
                <input name="text3" type="text" id="text3" size="44" />
                <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
            <tr>
              <td>Location</td>
              <td><select name="select" id="select">
                <option>NOIDA</option>
                <option>GHAZIABAD</option>
                <option>GURGAON</option>
                <option>NEW DELHI</option>
                <option>BANGLORE</option>
              </select></td>
            </tr>
            <tr>
              <td>Mobile</td>
              <td><span id="sprytextfield">
                <input name="text4" type="text" id="text4" size="44" />
                <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
            <tr>
              <td>Full Address</td>
              <td><span id="sprytextfield5">
                <textarea name="text5" cols="88" rows="11" id="text5"></textarea>
                <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
            <tr>
              <td>&nbsp;</td>
              <td><input type="submit" name="s1" value="Sign Up" />
              <%=session.getAttribute("mg")%></td>
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
            <tr> </tr>
            <tr> </tr>
          </table>
          <br /></td>
    </tr>
        <tr>
          <td valign="top" bgcolor="#A5272B"><img src="img/h1.jpg" width="566" height="89" /></td>
    </tr>
  </table>
</form>
<script type="text/javascript">
var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5");
var sprytextfield = new Spry.Widget.ValidationTextField("sprytextfield");
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4");
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3");
</script>
</body>
</html>
