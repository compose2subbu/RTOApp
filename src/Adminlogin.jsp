<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%response.setHeader("Cache-Control","no-cache");

response.setHeader("Pragma","no-cache");

response.setDateHeader("Expires",0);
 %>
<html>
<head>
<s:head theme="ajax"/>
<!-- style sheet -->
<link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
<br><br><br><br><br><br><br><br><br><br><br><br>
<center>
<font color="yellow">ADMIN LOGIN</font></center>
<center>
<p align="center">

<s:form action="admin" validate="true" >
<s:textfield name="username" id="username" label="Username" required="true"></s:textfield>
<s:password name="password" id="password" label="Password" required="true"></s:password>
<s:hidden name="type" value="Admin"></s:hidden>
<s:submit value="Sign-in"></s:submit>
<s:property value="equality"/>
</s:form></p>
</center>
</body>
</html>