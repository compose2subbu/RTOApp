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
<title>Llr Form View</title>
</head>
<body>

<font color="white" size="4">HI <%=sess %></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath() %>/logout.action"><font color="white">Log out</font></a><center><img src="C:\Documents and Settings\kchenthilkumar\Desktop\proj\Images\TNgovlogo.jpg"/></center>
<br>
<br>
<br>
<table>
<tr><td>Your LLR number is</td><td> <s:property value = "llrnum"/></td></tr>
<tr><td>First Name</td><td> <s:property value = "firstname"/></td></tr>
<tr><td>Last Name </td><td> <s:property value = "lastname"/></td></tr>
<tr><td>Gender</td><td><s:property value = "gender"/></td></tr>
<tr><td>Date of birth</td><td><s:property value = "dob"/></td></tr>
<tr><td>Address</td><td><s:property value = "address1"/><br><s:property value = "address2"/><br><s:property value="pincode"/></td></tr>
<tr><td>Vehicle type</td><td><s:property value = "vehicletype"/></td></tr>
<tr><td>Identification marks</td><td><s:property value="idmark"/></td></tr>
</table>
<br><br>
<p>Is licensed to drive throughout India as learner subject to the provisions of rule-3 of the Central Motor Vehicle<br> Rules,1989, a motor vehicle of the following description</p>  
<br><br>
<p>The holder of the license has passed the preliminary test referred to rule-11 <br>of the Central Motor Vehicle rules,1989</p>
<p>This license is valid from<s:property value="doi"/> to <s:property value="doe"/><br>
<br>
<img src="<%=sesscode %>"></img>
<p align ="right">Signature</p>
<p>___________________________________________________________________________________________________________________________________</p>
<p>Terms and Conditions:</p>
<p>The attention of the holder of the license is drawn to rule-3 of the Central Motor Vehicle rules,1989. Which prohibits from him from driving any motor vehicle unless he has besides him a persom duly licensed to drive the vehicles and in every case, the vehicle carries "L" plate both in the front and in the rear of the vehicle.</p> 

</body>
</html>