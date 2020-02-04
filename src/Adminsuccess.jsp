<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html" import="java.util.*"%>



<html>
    <head>
    <link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
        <title>Welcome, you have logged!</title>
  </head>
    <body>
     <%if (session.isNew())
    	  response.sendRedirect("Adminlogin.jsp");
      else
      {   	   
      		response.sendRedirect("Adminhome.jsp"); 
      }%>
      
      <br />
    </body>
</html> 