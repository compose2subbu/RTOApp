<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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

            
<html>
<head>
<link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
<s:head theme="ajax" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Duplicate Registration</title>
</head>
<body>
<a href="/RTOAUTOMATION/Userhomepage.jsp"><img src="/RTOAUTOMATION/images/home.gif"/></a>
<br>
<font color="white" size="4">HI <%=sess %></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath() %>/logout.action"><font color="white">Log out</font></a>
<center>
<br>
<br><br>
UPDATE YOUR REGISTRATION DETAILS<br>
<br><br>
<s:form action="dupreg" name="dupform" validate="true">
<s:textfield name="username" label="User Name" value="<%=sess %>" readonly="true" size="15"></s:textfield><br>
<s:textfield name="regno" label="Reg No" size="15"  maxlength="10" required="true"/><br>
<!--<s:textfield name="chasisno" label="Chassis Number" size="15"  maxlength="11"/><br>
-->
<s:property value="message"/>
<s:submit value="Get Form" />
<s:reset value="reset"></s:reset>


</s:form>
</center>




</body>
</html>