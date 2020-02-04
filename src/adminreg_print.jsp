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
<%!String sesscode1; %>
    
    <%if (session.isNew())
    	  response.sendRedirect("Index.jsp");
      else
      {   	   
      		sesscode1=(String)session.getAttribute("barcode");
      }
    %>
   
<html>
<head>
<link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Registration Form</title>
<s:head theme="ajax" />
</head>
<body>
<font color="white" size="4">HI <%=sess %></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath() %>/logout.action"><font color="white">Log out</font></a>
<h2 align="center"> Update Successfully This is ur RC book Take Print</h2>
<br><br><center>
<s:form>

<s:textfield name="username" label="User Name" size="15" maxlength="25" value="ganesh" readonly="true" /><br>
<s:textfield name="chasisno" label="Chasis No" size="15" maxlength="11" readonly="true"></s:textfield><br>
<s:textfield name="regno" label="registerno" size="15" readonly="true"></s:textfield><br>
<s:textfield name="address1" label="Address1" size="15" maxlength="25" readonly="true"></s:textfield><br>
<s:textfield name="address2" label="Address2" size="15" maxlength="25" readonly="true"></s:textfield><br>
<s:textfield name="pincode" label="Pincode" size="15" maxlength="25" readonly="true"></s:textfield><br>
<s:textfield name="firstname" label="Firstname" size="15" maxlength="25" readonly="true"></s:textfield><br>
<s:textfield name="lastname" label="Lastname" size="15" maxlength="25" readonly="true"></s:textfield><br>
<s:textfield name="city" label="city" size="15" maxlength="25" readonly="true"></s:textfield><br>
<s:textfield name="mobile" label="Mobile No" size="15" maxlength="11" readonly="true"/><br>
<s:textfield name="email" label="Email" size="15" maxlength="30" readonly="true"/><br>
<s:textfield name="type" label="Vehicle Type" size="15" readonly="true"></s:textfield><br>
<s:textfield name="engineno" label="Engine Number" size="15"  maxlength="10" readonly="true"/><br>
<s:textfield name="insuranceno" label="Insurance Number" size="15"  maxlength="10" readonly="true"/><br>
<s:textfield name="bankname" label="Bankname" size="15" maxlength="25" readonly="true"></s:textfield><br>
<s:textfield name="accountno" label="Account Number" size="15"  maxlength="11" readonly="true"/><br>

</s:form>
</center>

<img src="<%=sesscode1%>"></img>

</body>
</html>


