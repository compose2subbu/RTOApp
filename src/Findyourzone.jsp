<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Find Your Zone</title>
</head>
<body>
<a href="/RTOAUTOMATION/Index.jsp"><img src="/RTOAUTOMATION/images/home.gif"/></a>
<h1><b><font color="Magenta"> Enter Your Pincode To Find Your RTO Zone</font></b></h1>
<br><br><br><br><center>
<s:form action="zone" validate="true"><br>
<s:textfield name="pin1" label="PINCODE"></s:textfield><br><br><br>
<s:submit name="SUBMIT"></s:submit>
</s:form>
</center>
</body>
</html>