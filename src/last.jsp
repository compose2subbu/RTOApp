<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">

</script>
</head>
<body>

<s:if test= "list1 != null">
<s:select name="subtype" id="subtype" label="SubType"  headerValue="--Please select--" headerKey="-1" list="list1"></s:select>
</s:if>


</body>
</html>