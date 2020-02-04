<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
  <title>Welcome To Online Test</title>
<link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
  </head>
  <body>
  <a href="/RTOAUTOMATION/Userhomepage.jsp"><img src="/RTOAUTOMATION/images/home.gif"/></a>
 
<br>
  <font color="white" size="4">HI <%=sess %></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath() %>/logout.action"><font color="white">Log out</font></a>
  <center>
   <h1>WelCome</h1>
    </center>
  <br>
   
   <marquee dir="ltr"><font face="Book Antiqua" color="white" size="4"> This is the Test for Learner License Application</font>
 </marquee>
 
   <div> 
  
 
 <center>Hello people This is Test for Learner License Application,</center> <br><br> <br><br> <br><br> <br><br> <br><br> 
  
  <ul>
 <li>Before you take up the Test, go through the <a href="/RTOAUTOMATION/Material.jsp"><font color="yellow">Material</font></a> given in the homepage.</li>
 <br><br>
 <li>Test Pattern will be Five <font color="orange">objective</font> type questions</li>
     <br><br>
  <li>Hope you do well..,</li>
  <br><br>
</ul>
   <center>Clik on the<font color="orange"> start test</font> button to start the Test </center>
  
  </div>
   <s:div>
   <p align="center">
   <s:form action="llrtest">
   GOOD LUCK
   <s:submit value="start test" />
   <br>
   </s:form> 
   </p>
   </s:div>
 

</body>
</html> 