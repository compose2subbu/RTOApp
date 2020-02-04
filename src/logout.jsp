<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html" import="java.util.*"%>
<%response.setHeader("Cache-Control","no-cache");

response.setHeader("Pragma","no-cache");

response.setDateHeader("Expires",0);
 %>
<html>
    <head>
    <script type="text/javascript">
    
    </script>
    <link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
        <title>Check validate!</title>
  </head>
    <body>
    <%   
    session.invalidate();
    response.sendRedirect("Index.jsp");%>
    </body>
</html> 