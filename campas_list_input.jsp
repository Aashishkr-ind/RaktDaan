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
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<style type="text/css">
.style20 {font-size: 14px}
#form1 table tr td table tr td {
}
#form1 table tr td table {
}
tr {
}
tr {
}
tr {
}
.style131 {font-size: 24px;
	text-align: center;
}
.style1311 {font-size: 24px}
</style>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
</head>
<%@ include file="conn.jsp"%>
<body>

<form id="form1" name="form1" method="post" action="campas_list_input_code.jsp">

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
      <td width="149" align="center" valign="top" bgcolor="#000000"><p><a href="hospital_Panel.jsp"><img src="img/hm.png" width="45" height="45" border="0" /></a></p>
      <p><img src="img/images (1).jpg" width="191" height="199" /></p></td>
      <td width="811" align="center" valign="top"><p align="justify" class="style17">&nbsp;</p>
        <table width="640" height="810" border="1" align="center" cellpadding="2" cellspacing="2"  rules="none">
          <tr>
            <td width="356" height="36" valign="top"><p class="style131"><img src="campas_list_clip_image002_0000.png" width="455" height="72" /><br />
            </p></td>
          </tr>
          <tr>
            <td>Camp No:</td>
          </tr>
          <tr>
            <td><span id="sprytextfield1"><span class="textfieldRequiredMsg">A value is required.</span><span id="sprytextfield4">
              <input name="t1" type="text" id="t1" size="55" />
              <span class="textfieldRequiredMsg">A value is required.</span></span></span></td>
</tr>
          <tr>
            <td>Date:</td>
          </tr>
          <tr>
            <td height="41"><span id="sprytextfield2">
              <input name="t2" type="datetime-local" id="t2" size="55" />
              <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
          <tr>
            <td>Camp Name:</td>
          </tr>
          <tr>
            <td height="34"><span id="sprytextfield3">
              <input name="t3" type="text" id="t3" size="55" />
              <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
          <tr>
            <td height="31">Address:</td>
          </tr>
          <tr>
            <td><span id="sprytextfield5">
              <textarea name="t4" cols="99" rows="9" id="t4"></textarea>
              <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
          <tr>
            <td>State</td>
          </tr>
          <tr>
            <td><span id="sprytextfield6">
              <input name="t5" type="text" id="t5" size="55" />
              <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
          <tr>
            <td>District</td>
          </tr>
          <tr>
            <td><span id="sprytextfield8">
            <input name="t6" type="text" id="t6" size="55" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
          </tr>
          <tr>
            <td>Contact</td>
          </tr>
          <tr>
            <td><span id="sprytextfield9">
            <input name="t7" type="text" id="t7" size="55" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
          </tr>
          <tr>
            <td>Conducted_By</td>
          </tr>
          <tr>
            <td><span id="sprytextfield10">
            <input name="t8" type="text" id="t8" size="55" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
          </tr>
          <tr>
            <td>Organized_by</td>
          </tr>
          <tr>
            <td><span id="sprytextfield7">
              <input name="t9" type="text" id="t9" size="55" />
              <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
          <tr>
            <td><input type="submit" name="s1" value="Summit" />
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
      <td colspan="2" bgcolor="#A32026"><img src="img/h1.jpg" width="566" height="89" /></td>
    </tr>
  </table>
</form>
<script type="text/javascript">
var sprytextfield7 = new Spry.Widget.ValidationTextField("sprytextfield7");
var sprytextfield6 = new Spry.Widget.ValidationTextField("sprytextfield6");
var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5");
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3");
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4");
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var sprytextfield8 = new Spry.Widget.ValidationTextField("sprytextfield8");
var sprytextfield9 = new Spry.Widget.ValidationTextField("sprytextfield9");
var sprytextfield10 = new Spry.Widget.ValidationTextField("sprytextfield10");
</script>
</body>
</html>
