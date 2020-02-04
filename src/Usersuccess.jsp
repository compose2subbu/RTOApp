<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html" import="java.util.*"%>
<%response.setHeader("Cache-Control","no-cache");

response.setHeader("Pragma","no-cache");

response.setDateHeader("Expires",0);
 %>
<html>
    <head>
    <script type="text/javascript">
    history.forward(1);
    </script>
        <title>Welcome, you have logined!</title>
  </head>
    <body>
     <%if (session.isNew())
    	  response.sendRedirect("Index.jsp");
      else
      {   	   
      		response.sendRedirect("Userhomepage.jsp"); 
      }%>
      
      <br />
    </body>
</html> 