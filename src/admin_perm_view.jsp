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
<title>Insert title here</title>
<s:head theme="ajax" />
<script>
</script>
<link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
</head>
<body>
<font color="white" size="4">HI <%=sess %></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath() %>/logout.action"><font color="white">Log out</font></a>
<h2 align="center">PERMIT ADMIN FORM</h2>
<br><br>
<s:form name="admin_permit_update"  id="admin_permit_update" action="admin_permit_update">
<pre>
FORM NUMBER          :<s:property value="formno"/><br>
USER NAME            :<s:property value="username"/><br>
FIRST NAME           :<s:property value="first_name"/><br>
LAST NAME            :<s:property value="last_name" /><br>
gender               :<s:property value="gender"/><br>
ADDRESS1             :<s:property value="address1" /><br>
ADDRESS2             :<s:property value="address2" /><br>
Pincode              :<s:property value="pincode" /><br>
City                 :<s:property value="city" /><br>
MOBILE NO            :<s:property value="mobile" /><br>
EMAIL                :<s:property value="email" /><br>
INSURANCE NO         :<s:property value="insuranceno" /><br>
Bank Name            :<s:property value="bank_name" /><br>
Bank Account Number  :<s:property value="bank_account_no" /><br>
OLD USER             :<s:property value="olduser" /><br>
FC EXPIRY            :<s:property value="fcexpiry"/><br>
Vehicle Type         :<s:property value="subtype"/><br>
Registration no	     :<s:property value="regno"/><br>
PERMIT TYPE          :<s:property value="type"/><br>
PERMIT RANGE         :<s:property value="permit"/><br>

</pre>
<s:hidden name="username" ></s:hidden>
<s:hidden name="first_name" ></s:hidden>
<s:hidden name="last_name" ></s:hidden>
<s:hidden name="gender" ></s:hidden>
<s:hidden name="address1" ></s:hidden>
<s:hidden name="address2" ></s:hidden>
<s:hidden name="pincode" ></s:hidden>
<s:hidden name="city" ></s:hidden>
<s:hidden name="mobile" ></s:hidden>
<s:hidden name="email" ></s:hidden>
<s:hidden name="insuranceno" ></s:hidden>
<s:hidden name="engineno" ></s:hidden>
<s:hidden name="chasisno" ></s:hidden>
<s:hidden name="bank_name" ></s:hidden>
<s:hidden name="bank_account_no" ></s:hidden>
<s:hidden name="date1" ></s:hidden>
<s:hidden name="olduser"></s:hidden>
<s:hidden name="noofuser"></s:hidden>
<s:hidden name="regno"></s:hidden>
<s:hidden name="subtype"></s:hidden>
<s:hidden name="fcexpiry"></s:hidden>
<s:hidden name="formno"></s:hidden>
<s:hidden name="type"></s:hidden>
<s:hidden name="permit"></s:hidden>

<s:submit name="button" value="submit"/>
<s:reset value="Reset"></s:reset>

</s:form>

</body>
</html>