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
</style>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<%@ include file="conn.jsp"%>
<form id="form1" name="form1" method="post" action="donar_code.jsp">
<%
int  idd=(int)(Math.random() * ((10000 - 100) + 1)) + 50;
%>
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
      <td width="149" align="center" valign="top"><a href="welcome.jsp"><img src="img/hm.png" width="45" height="45" border="2" /></a>
      <p><img src="img/blood-for-life.jpg" width="174" height="217" /></p></td>
      <td width="811" align="center"><table rules="none" width="100%" height="748" border="1" align="center" cellpadding="3" cellspacing="3">
        <tr>
          <td colspan="2" align="center"><h3><img width="470" height="106" src="Receiver_clip_image001.png" alt="Horizontal Scroll: BLOOD RECEIVER FORM" /></h3></td>
          </tr>
        <tr>
          <td width="239">Receiver Id</td>
          <td width="523"><label><span id="sprytextfield1">
            <input name="t1"  value="<%=idd%>"type="text" id="t1" size="33" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></label></td>
</tr>
        <tr>
          <td>Location</td>
          <td><select name="t2" id="t2">
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
          </select>
            <a href="SearchViewHospital_record.jsp">View Hospital</a></td>
        </tr>
        <tr>
          <td>Hospital Name</td>
          <td><span id="sprytextfield5">
          <input name="t3" type="text" id="t3" size="33" />
          <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        </tr>
        <tr>
          <td>Receivers  Name</td>
          <td><label><span id="sprytextfield3">
            <input name="t4" type="text" id="t4" size="33" />
            <span class="textfieldRequiredMsg">A value is required.</span></span><span id="sprytextfield2"><span class="textfieldRequiredMsg">A value is required.</span></span></label></td>
</tr>
        <tr>
          <td bordercolor="1">Phone</td>
          <td><span id="sprytextfield4">
            <input name="t5" type="text" id="t5" value="" size="33" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
        <tr>
          <td>Email</td>
          <td><span id="sprytextfield7">
            <input name="t6" type="text" id="t6" size="33" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
        <tr>
          <td>Full  Address </td>
          <td><span id="sprytextfield8">
            <textarea name="t7" cols="77" rows="7" id="t7"></textarea>
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
        <tr>
          <td>Blood Group</td>
          <td><select name="t8" id="t8">
            <option selected="selected">Select</option>
            <option>A RhD positive (A+)</option>
            <option>A RhD negative (A-)</option>
            <option>B RhD positive (B+)</option>
            <option>B RhD negative (B-)</option>
            <option>O RhD positive (O+)</option>
            <option>O RhD negative (O-)</option>
            <option>AB RhD positive (AB+)</option>
            <option>AB RhD negative (AB-)</option>
           
          </select></td>
        </tr>
        <tr>
          <td>Physical Status</td>
          <td><select name="t9" id="t9">
            <option selected="selected">Select</option>
            <option>HandiCap</option>
            <option>Normal</option>
          </select></td>
        </tr>
        <tr>
          <td>Diabetic</td>
          <td><select name="t10" id="t10">
            <option selected="selected">Select</option>
            <option>NORMAL</option>
            <option>HIGH</option>
            <option>LOW</option>
          </select></td>
        </tr>
        <tr>
          <td>Blood Pressure</td>
          <td><select name="t11" id="t11">
            <option selected="selected">Select</option>
            <option>NORMAL</option>
            <option>HIGH</option>
            <option>LOW</option>
          </select></td>
        </tr>
        <tr>
          <td>Weight</td>
          <td><span id="sprytextfield9">
            <input name="t12" type="text" id="t12" size="33" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
</tr>
        <tr>
          <td height="25"><p>How Much Unit Blood Can You Receivers(In Unit)</p></td>
          <td><span id="sprytextfield10">
          <input name="t13" type="text" id="t13" size="33" />
          <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        </tr>
        <tr>
          <td height="133">Remark</td>
          <td><textarea name="t14" cols="77" rows="10" id="t14"></textarea></td>
        </tr>
        <tr>
          <td height="30">&nbsp;</td>
          <td><input type="submit"   name="Submit" value="Submit" />
            <%=session.getAttribute("mg")%></td>
        </tr>
    </table></td>
    </tr>
    <tr>
      <td colspan="2" bgcolor="#860000"><img src="img/h1.jpg" width="566" height="89" /></td>
    </tr>
  </table>
</form>
<script type="text/javascript">
var sprytextfield9 = new Spry.Widget.ValidationTextField("sprytextfield9");
var sprytextfield8 = new Spry.Widget.ValidationTextField("sprytextfield8");
var sprytextfield7 = new Spry.Widget.ValidationTextField("sprytextfield7");
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4");
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3");
var sprytextfield10 = new Spry.Widget.ValidationTextField("sprytextfield10");
var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5");
</script>
</body>
</html>
