<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<% response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", -1);
response.setHeader("Cache-Control","no-store"); %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<s:head theme="ajax"/>
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
</style>
</head>
<body onload="DisablingBackFunctionality();" onkeydown="DisablingBackFunctionality();">
<div id="outer">
<div id="header">
<h1><a href="#">ONLINE RTO </a></h1>
<h2>WE MAKE YOU DRIVE EASY </h2>
</div>
<div id="menu">
<table cellpadding="3" cellspacing="5">
<tr><td ><a href="AboutUs.jsp" accesskey="1" title=""><font color="white" size="4">ABOUT&nbsp;&nbsp;US  </font></a></td>

<td><a href="Material.jsp" accesskey="2" title=""><font color="white" size="4">MATERIALS  </font></a></td>

<td><a href="Trafficrules.jsp" accesskey="3" title=""><font color="white" size="4">TRAFFIC&nbsp;&nbsp;RULES </font></a></td>
<td>        </td>
<td><a href="Safetyrules.jsp" accesskey="4" title=""><font color="white" size="4">SAFETY&nbsp;&nbsp;RULES </font></a></td>
<td> </td>
<td><a href="Findyourzone.jsp" accesskey="5" title=""><font color="white" size="4">ZONAL&nbsp;&nbsp;OFFICES </font></a></td>
<td>         </td>
<td><a href="Feedback.jsp" accesskey="6" title=""><font color="white" size="4">FEEDBACK </font></a></td>
</tr></table>

</div>
<div id="content"></div>
<marquee bgcolor=""> WELCOME TO ONLINE RTO SERVICES</marquee>

  <table width="965" border="0">
    <tr>
      <th width="233" rowspan="6" scope="col"><div align="left">
        <p><img src="images/3dflags_ind0001-0003a.gif" alt="3d" width="132" height="99" /></p>
        <p><img src="images/symbol_india.jpg" alt="india" width="119" height="207" /></p>
      </div></th>
      <th width="233" height="59" rowspan="2" scope="col"><div align="justify">
        <p>RTO Offices<br />
          <br />
          <br />
          Regional Transport Officer or as commonly known as RTO is   a licensing, registration, taxation authority of a particular region. It is   empowered to cancel the valid fitness certificate of vehicle if it is caught in   mechanically unfit and unroadworthy condition.<br />
          <br />
        The RTO official has the   power to issue memo for the breach of provisions of motor vehicle act and rules.   These memo generally consists of description of the offence, seal and signature   of the issuing authority. The document is impounded only for minor offences.</p>
      </div></th>
      <th bgcolor="#FFFFFF" scope="col"><div id="tertiaryContent">
        <h3>LOGIN HERE </h3>
        <s:form action="doLogin" name="doLogin">
          <s:textfield name="username" id="username" size="15" label="Username" required="true"/>
          <s:password name="password" id="password"  size="17" label="Password" required="true"/>
          <s:hidden name="type" value="User"></s:hidden>
          <s:submit value="Sign-In"></s:submit>
          <s:property value="equality"/>
        </s:form>
        <div align="left">
          <p align="center">Are you a new user ?</p>
          <p align="center"><a href="Newuserlogin.jsp">Sign Up</a></p>
        </div>
      </div>
      <p>&nbsp;</p></th>
    </tr>
    <tr>
      <th height="68" scope="col"><div align="left">ADMINISTRATOR LOGIN : <a href="Adminlogin.jsp">ADMIN</a></div></th>
    </tr>
</table>
</body>
</html>
