<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%response.setHeader("Cache-Control","no-cache");

response.setHeader("Pragma","no-cache");

response.setDateHeader("Expires",0);
 %>
<html>
<head>
<link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">
function checkpassword(){

var a=document.getElementById("password").value;

var b=document.getElementById("cpassword").value;

if(a==b)

else{
document.getElementById("1").innerHTML="<font color=\"red\">password is not matching</font>";

}

</script>
<title>Sign up page</title>
<s:head theme="ajax"/>
</head>
<body>
<center><font color="Rose" size="6">Login Details</font></center>

<s:form action="newuser" validate="true">
<s:property value="equality"/>
<table>
<td><s:div><font color="yellow">Login Details</font></s:div></td>
<s:textfield onclick="add();" name="username" id="username" label="User Name" size="15" required="true"/>
<s:password name="password" label="Password" size="15" required="true"/>
<td><td><div id="1"></div></td>
<s:password name="cpassword" label="Confirm Password" size="15" required="true" onblur="checkpassword();"/>
</table>
<table>
<td><s:div><font color="yellow">Personal Details</font></s:div></td>
<s:textfield name="firstname" label="First Name" size="15" required="true"/>
<s:textfield name="lastname" label="Last Name" size="15"/>
<s:radio list="{'male','female'}" label="gender" name="gender" value="%{'male'}"></s:radio>
<s:textarea name="address1" label="Address1" required="true"/>
<s:textarea name="address2" label="Address2"/>
<s:textfield name="city" label="City" required="true"></s:textfield>
<s:textfield name="pincode" maxlength="6" label="Pincode" maxLength="6" required="true"></s:textfield>
<s:textfield name="mobile" maxlength="11" label="Mobile Number" maxLength="11" required="true"></s:textfield>
<s:textfield name="stdcode" label="Std-Code"></s:textfield>
<s:textfield name="phonenumber" label="Phonenumber" maxLength="8"></s:textfield>
<s:textfield name="age" label="Age" maxlength="3" required="true"></s:textfield>
<s:textfield name="idmark" label="Identification Marks"></s:textfield>
<s:textfield name="blood_group" label="Blood Group" maxlength="6"></s:textfield>
<s:textfield name="occupation" label="Occupation"></s:textfield><td>
</table>
<table>
<td><s:div><font color="yellow">Account Details</font></s:div></td>
<s:textfield name="bankname" label="Bank Name" required="true"></s:textfield>
<s:textfield name="accountno" label="Account Number" maxlength="16" required="true"></s:textfield>
<s:textfield name="email" label="Email Address" size="15"/>
<s:hidden name="type" value="User"></s:hidden>
<s:datetimepicker name="dateofbirth" label="Date of Birth" displayFormat="dd-MON-yyyy" required="true"/>
</table>
<p align ="center"><s:submit value="Update Profile"/>
</p>
</s:form>
</body>
</html>