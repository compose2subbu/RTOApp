<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%response.setHeader("Cache-Control","no-cache");

response.setHeader("Pragma","no-cache");

response.setDateHeader("Expires",0);
 %>
 <%!String sess;String sesscode; %>
    
    <%if (session.isNew())
    	  response.sendRedirect("Index.jsp");
      else
      {   	   
      		sess=(String)session.getAttribute("username"); 
      		sesscode=(String)session.getAttribute("code");
      		try{
          		System.out.println(sess.length());
          		if(sess.equals(null))
          		{
              	  response.sendRedirect("Index.jsp");
          		}}catch(Exception z){
          			//System.out.println(z);
          			response.sendRedirect("Error.jsp");
          		}
      }
            %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello World</title>
<link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
</head>
<body>

<center><br>
<br><br><br><br>
CLICK VIEW STATUS TO VIEW YOUR LICENSE STATUS
<br><br><br><br><br><br><br>
  <s:form action="view_status">
<s:textfield label="Enter the user name" name="username" value="<%=sess %>" readonly="true"></s:textfield>
<s:submit value="view status" />  
</s:form>  
</center>
</body>
</html>
