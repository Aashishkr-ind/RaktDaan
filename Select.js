var xmlhttp;
function showUser(str)
{
xmlhttp=GetXmlHttpObject();
if(xmlhttp==null)
{
alert("Browser does not support HTTP Request");
return;
}
var url="bloodbanklist_location.jsp";
url=url+"?q="+str;
xmlhttp.onreadystatechange=stateChanged;
xmlhttp.open("GET",url,true);
xmlhttp.send(null);
}
function stateChanged()
{
if(xmlhttp.readyState==4)
{
document.getElementById("txHint").innerHTML=xmlhttp.responseText;
}
}
function GetXmlHttpObject()
{
if(window.XMLHttpRequest)
{
return new XMLHttpRequest();
}
if(window.ActiveXObject)
{
return new ActiveXObject("Microsoft.XMLHTTP");
}
return null;
}
