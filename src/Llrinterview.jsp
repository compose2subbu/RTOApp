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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LLR Interview</title>
<link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
</head>
<body>
<font color="white" size="4">HI <%=sess %></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath() %>/logout.action"><font color="white">Log out</font></a>
<s:form name="sub" action="llrapply" method="post">
<s:textfield name ="username" maxlength="25"label="User name"></s:textfield>

<s:textfield name ="firstname" maxlength="25"label="First name" readonly="true"></s:textfield>
<s:textfield name ="lastname" maxlength="25" label="Last name" readonly="true"></s:textfield>
<s:textfield name ="gender" maxlength="25"label="Gender" readonly="true"></s:textfield>
<s:textfield name ="dob" maxlength="25" label="Date of birth" readonly="true"></s:textfield>
<s:textfield name ="age" maxlength="25"label="Age" readonly="true"></s:textfield>
<s:textfield name ="address1" maxlength="25" label="Address1" readonly="true"></s:textfield>
<s:textfield name ="address2" maxlength="25"label="Address2" readonly="true"></s:textfield>
<s:textfield name ="city" maxlength="25" label="City" readonly="true"></s:textfield>
<s:textfield name ="pincode" maxlength="25"label="Pincode" readonly="true"></s:textfield>
<s:textfield name ="idmark" maxlength="25" label="Idenfication marks" readonly="true"></s:textfield>
<s:textfield name ="addressproofnumber" maxlength="25" label="Address proof id " readonly="true"></s:textfield>
<s:textfield name ="ageproofnumber" maxlength="25" label="Age proof id " readonly="true"></s:textfield>
<s:textfield name ="DDnumber" maxlength="25"label="DD number " readonly="true"></s:textfield>
<s:textfield name ="addressproof" maxlength="25"label="Address proof type" readonly="true"></s:textfield>
<s:textfield name ="ageproof" maxlength="25"label="Age proof type" readonly="true"></s:textfield>
<s:textfield name ="vehicletype" maxlength="25"label="Vehicle Type" readonly="true"></s:textfield>
<s:textfield name ="physicaltestdate" maxlength="25"label="Physical Test Date" readonly="true"></s:textfield>
<s:textfield name ="bdgenum" label="Badge Number"></s:textfield>
<s:textfield name ="permit" label="Permit"></s:textfield>
<s:submit name="PROCEED" value="SUBMIT"></s:submit>
</s:form>
</body>
</html>