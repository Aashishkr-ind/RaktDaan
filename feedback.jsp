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
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
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
</style>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
</head>

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
      <td width="149" align="center" valign="top" bgcolor="#1D3752"><p><a href="welcome.jsp"><img src="img/hm.png" width="45" height="45" border="0" /></a></p>
      <p><img src="img/images (1).jpg" width="209" height="222" /></p></td>
      <td width="811" align="center"><table rules="none" width="501" height="560" border="1" align="center" cellpadding="5" cellspacing="5">
        <tr>
          <td width="421" height="36" valign="top" bgcolor="#1D3752"><h1 class="style13">Feedback</h1></td>
        </tr>
        <tr>
          <td height="46" valign="top"><p class="style14">Do you have any questions, comments or suggestions? We would be glad to hear   it from you. Your feedback is important and valuable to us. </p></td>
        </tr>
        <tr>
          <td>Name:</td>
        </tr>
        <tr>
          <td><span id="sprytextfield1">
            <input name="t1" type="text" id="t1" size="55" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
        <tr>
          <td>Phone:</td>
        </tr>
        <tr>
          <td><span id="sprytextfield2">
            <input name="t2" type="text" id="t2" size="55" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
        <tr>
          <td>E-mail ID:</td>
        </tr>
        <tr>
          <td><span id="sprytextfield3">
            <input name="t3" type="text" id="t3" size="55" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
        <tr>
          <td>Suggestions / Feedback:</td>
        </tr>
        <tr>
          <td><textarea name="t4" cols="66" rows="8"></textarea>
            <span class="style161"><br />
            Note: Please provide a valid and active e-mail ID so   that we could get in touch with you.</span></td>
        </tr>
        <tr>
          <td bgcolor="#1D3752"><input type="submit" name="s1" value="Summit" /></td>
        </tr>
        <tr> </tr>
        <tr> </tr>
        <tr> </tr>
        <tr> </tr>
        <tr> </tr>
        <tr> </tr>
      </table>        <br /></td>
    </tr>
    <tr>
      <td colspan="2" bgcolor="#A32026"><img src="img/h1.jpg" width="566" height="89" /></td>
    </tr>
  </table>
</form>
<script type="text/javascript">
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3");
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
</script>
</body>
</html>
