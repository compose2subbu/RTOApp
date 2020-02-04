<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Grievances Ajax</title>
</head>
<body>
            
<s:if test= "list1 != null">
<s:select name="service_type" headerValue="-Sub_Service Type-" headerKey="1" labelposition="justify" name="sub_service_type" label="subgrievanceType" list="list1" requiredposition="center"></s:select>

</s:if>
</body>
</html>