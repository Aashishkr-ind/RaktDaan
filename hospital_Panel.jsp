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
</style>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css" />
</head>
<script>
var image_tracker='i';
function first()
{
var image=document.getElementById('id1');
if(image_tracker=='i')
{
image.src="FirstImage/1.png";
image_tracker='a';	
}
else if(image_tracker=='a')
{
image.src="FirstImage/2.png";
image_tracker='d';
}
else if(image_tracker=='d')
{
image.src="FirstImage/3.png";
image_tracker='d1';
}
else if(image_tracker=='d1')
{
image.src="FirstImage/4.jpg";
image_tracker='d2';
}
else if(image_tracker=='d2')
{
image.src="FirstImage/5.jpg";
image_tracker='d3';
}
else if(image_tracker=='d3')
{
image.src="FirstImage/6.jpg";
image_tracker='d4';
}
else if(image_tracker=='d4')
{
image.src="FirstImage/7.jpg";
image_tracker='i';
}

}
setInterval('first()',1000);
</script>
<body>

<form id="form1" name="form1" method="post" action="">

  <table width="90%" border="0" align="center" cellpadding="5" cellspacing="5">
    <tr>
      <td colspan="2" valign="top"><table  width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="186" height="87" align="center" valign="bottom" bgcolor="#1D3752"><img src="img/blood.gif" width="150" height="150" /></td>
          <td width="825" height="87" align="center" valign="top" bgcolor="#FFFFFF"><img src="img/Header.jpg" width="800" height="150" /><br /></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td colspan="2" valign="top" bgcolor="#CCCCCC">&nbsp;</td>
    </tr>
    <tr>
      <td width="138" valign="top" bgcolor="#EEEEEE"><ul id="MenuBar1" class="MenuBarVertical">
<li><a href="hospital_Panel.jsp">Home</a></li>
<li><a href="#" class="MenuBarItemSubmenu">Blood Stock</a>
  <ul>
    <li><a href="SearchBloodStock_Hospital.jsp">Search Blood Stock</a></li>
</ul>
</li>
<li><a href="bloodreceiverlist.jsp">Blood Recipient List</a></li>
        <li><a href="view_Donar_list.jsp">Blood Donor List</a></li>
<li><a href="campas_list_input.jsp">Blood Donations Camp</a></li>
<li><a href="feedback_report.jsp">Feed Back Report</a></li>
<li><a href="index.jsp">Logout</a></li>
      </ul></td>
      <td width="900" align="center" valign="top"><img src="FirstImage/1.png" width="800" height="400" border="0" id="id1" onclick="first()" /></td>
    </tr>
    <tr>
      <td colspan="2" bgcolor="#860000"><img src="img/h1.jpg" width="566" height="89" /></td>
    </tr>
  </table>
</form>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>
