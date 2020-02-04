<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
<script type="text/javascript">
function DisablingBackFunctionality()
{

var URL;
var i ;
var QryStrValue;
URL=window.location.href ;
i=URL.indexOf("?");
QryStrValue=URL.substring(i+1);
if (QryStrValue!='Y')
{
window.location=URL + "?Y";
}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
<table>
<tr>
<td>
<img src="/RTOAUTOMATION/images/gan.JPG">

</td>
<td>
<h2><font face="Times New Roman" color="blue">You have succesfully Created your login account<br>
please login using the login page
Your username is:<s:property value="username"/></font></h2>
</td>
</tr>
</table>
<hr/>
<table>
<tr>
<td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="/RTOAUTOMATION/images/bull.JPG"></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="/RTOAUTOMATION/Index.jsp">Please Go To Home Page</a></td>
</tr>
</table>


</body>
</html>