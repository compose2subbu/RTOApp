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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<s:head theme="ajax" />
<script type="text/javascript"></script>

<title>Fitness Check page</title>
</head>
<body>
<a href="/RTOAUTOMATION/Userhomepage.jsp"><img src="/RTOAUTOMATION/images/home.gif"/></a>
<br>
<font color="white" size="4">HI <%=sess %></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath() %>/logout.action"><font color="white">Log out</font></a>
<br><br>
<center>
<br>
<br>
FITNESS CHECK FOR A VEHICLE
<s:form action="actionfc" name="permitform" validate="true"><br>
<s:textfield name="username" label="User Name" size="15" value="<%=sess %>" readonly="true"></s:textfield>
<s:textfield name="regno" label="Reg No" size="15"  maxlength="11"/>

<!--<s:radio list="{'State','National'}" label="Permit Range" id="permit" name="permit" value="%{'National'}"/>

<s:select label="Permit Range" name="permit" id="permit" headerValue="--please select--" headerKey="-1" list="{'State','National'}">
</s:select>


<s:select label="Permit Type" name="type" headerValue="--please select--" headerKey="-1" list="{'Contract Carriage','Goods Carriage','Stage Carriage','Private Service','Educational','Temporary'}">
</s:select>-->
<s:property value="message"/>
<s:submit value="Get Form" />
<s:reset value="reset"></s:reset>
</s:form>
</center>




</body>
</html>
