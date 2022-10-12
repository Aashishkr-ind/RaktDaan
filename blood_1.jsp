<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Ajax Example</title>
<script type="text/javascript" src="Select.js"></script>
</head>
<%@ include file="conn.jsp"%>
<body>
<form>
<%

String query="select distinct Location from hospital_reg";
ResultSet rs=st.executeQuery(query);
%>
  <label>
  <select name= "user" onchange="showUser(this.value)">
    <% while(rs.next()){%>
	<option value="<%=rs.getString(1)%>" selected="selected"><%=rs.getString(1)%></option>
	<%}%>
  </select>
  </label>
</form>
<div   style="background-color:#FFFFFF "id="txHint"><b>Information will be listed here.</b></div>
</body>
</html>
