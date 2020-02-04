<%@ page language="java" contentType="text/html; c`harset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%response.setHeader("Cache-Control","no-cache");

response.setHeader("Pragma","no-cache");

response.setDateHeader("Expires",0);
 %>
 <%!String ses; %>
    
    <%if (session.isNew())
    	  response.sendRedirect("Index.jsp");
      else
      {   	   
      		ses=(String)session.getAttribute("username"); 
      		
      		try{
          		System.out.println(ses.length());
          		if(ses.equals(null))
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
<title>Welcome To Grievance Registration</title>
</head>

<script>
function show_details() 
{
dojo.event.topic.publish("show_detail");
}
</script>
<body>
<a href="/RTOAUTOMATION/Userhomepage.jsp"><img src="/RTOAUTOMATION/images/home.gif"/></a><%!String sess; %>
    
    
   
            <font color="red" size="4">HI <%=ses %></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath() %>/logout.action">Log out</a>
<br>
<br>
<center>
REGISTER YOUR GRIEVANCES

<s:form id="go" name="go"  action="grievancesubmit">
     
        &nbsp;<s:textfield name="user_name"  value="<%=ses%>" label="User Name" readonly="true"></s:textfield>        
        <td>
        <s:select label="Service Type" name="service_type" headerValue="-Service Type-" headerKey="1" list="{'DRIVING LICENSE','REGISTRATION CERTIFICATE','PERMIT','FITNESS CERTIFICATE','GENERAL'}"onchange="javascript:show_details();return false;"></s:select>
        </td>
        <td> </td>
        <td><s:url id="d_url" action="Ajaxaction" /> 
		<s:div  id="details" href="%{d_url}" theme="ajax" listenTopics="show_detail" 
		showLoadingText="false" formId="go">
		</s:div></td>
		
               
	    &nbsp;<s:textarea name="grievances" label="grievances" cols="40" rows="15"></s:textarea>
	    <s:property value="msg"/>
	   
		<s:submit value="Submit"  align="center"></s:submit>
		
 </s:form>
 </center>
    
</body>
</html> 