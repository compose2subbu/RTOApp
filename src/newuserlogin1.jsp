<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires",0);
 %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script language="javascript" type="text/javascript">   
    
function DisablingBackFunctionality()
{

var URL;
var i ;
var QryStrValue;
URL=window.location.href ;
i=URL.indexOf("?");
QryStrValue=URL.substring(i+1);
if (QryStrValue!='Y')
{
window.location=URL + "?Y";
}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ONLINE RTO</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<style type="text/css">
@import url("default.css");
body {
	margin-bottom: 0px;
	margin-left: 0px;
}
.style3 {
	font-size: 16pt;
	color: #FFFFFF;
	font-weight: bold;
}
#Layer1 {
	position:absolute;
	width:296px;
	height:175px;
	z-index:1;
	left: 293px;
	top: 215px;
}
</style>
<title>Sign up page</title>
<s:head theme="ajax"/>
</head>
<body>
<div id="outer">
	<div id="header">
		<h1><a href="#">ONLINE RTO </a></h1>
		<h2>WE CARE </h2>
</div>
<div id="menu"> 
  <div align="center" class="style3">
    <div align="center">LOGIN DETAILS </div>
  </div>
</div>
<div id="content"></div>
<p>
  <marquee bgcolor=""> 
  WELCOME TO ONLINE RTO SERVICES
</marquee>
</p>
<s:form action="newuser" validate="true">
<table width="271" height="24" border="1">
  <tr>
    <th width="132" scope="col"><s:property value="equality"/></th></tr>
<tr><th width="132" scope="col"><s:textfield onclick="add();" name="username" label="User Name" size="15"/></th></tr>
 <tr><th width="132" scope="col"><s:password name="password" label="Password" size="17"/></th></tr>
  <th width="132" scope="col"><s:password name="cpassword" label="Confirm Password" size="17" onblur="checkpassword();"/></th>
  <!-- </tr>    -->
</table>
<div id="Layer1">
  <table width="282" height="95" border="1">
    <tr><th width="134" height="21" scope="col"><s:textfield name="firstname" label="First Name" size="15"/></th></tr>
 <tr><th scope="col"><s:textfield name="lastname" label="Last Name" size="15"/></th></tr>
  <!--   </tr> -->
    <tr><th height="21" scope="col"><s:radio list="{'male','female'}" label="gender" name="gender" value="%{'male'}"></s:radio></th></tr>
      <tr><th scope="col"><s:textarea name="address1" label="Address1"/></th>
    </tr>
    <tr>
      <th height="21" scope="col">&nbsp;</th>
      <th width="122" scope="col">&nbsp;</th>
    </tr>
    <tr>
      <th height="20" scope="col">&nbsp;</th>
      <th scope="col">&nbsp;</th>
    </tr>
  </table>
</div>
<p>&nbsp;</p>
<p>&nbsp; </p>
<center>
</center>


<td><td><div id="1"></div></td>

<td><s:div><font color="yellow"></font></s:div></td>




<s:textarea name="address2" label="Address2"/>
<s:textfield name="city" label="City"></s:textfield>
<s:textfield name="pincode" maxlength="6" label="Pincode" maxLength="6"></s:textfield>
<s:textfield name="mobile" maxlength="11" label="Mobile Number" maxLength="11"></s:textfield>
<s:textfield name="stdcode" label="Std-Code"></s:textfield>
<s:textfield name="phonenumber" label="Phonenumber" maxLength="8"></s:textfield>
<s:textfield name="age" label="Age" maxlength="3"></s:textfield>
<s:textfield name="idmark" label="Identification Marks"></s:textfield>
<s:textfield name="blood_group" label="Blood Group" maxlength="6"></s:textfield>
<s:textfield name="occupation" label="Occupation"></s:textfield><td>
<s:div><font color="yellow">Account Details</font></s:div></td>
<s:textfield name="bankname" label="Bank Name"></s:textfield>
<s:textfield name="accountno" label="Account Number" maxlength="16"></s:textfield>
<s:textfield name="email" label="Email Address" size="15"/>
<s:hidden name="type" value="User"></s:hidden>
<s:datetimepicker name="dateofbirth" label="Date of Birth" displayFormat="dd-MON-yyyy"/>
<p align ="center"><p align="left"><s:submit value="Update Profile"/>
</p>
</s:form>

</body>
</html>


