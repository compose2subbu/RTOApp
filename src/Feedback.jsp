<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
<script type="text/javascript" language="javascript">
var cnt=0;
function validation()
{
//alert("fn");
var a=document.getElementById("name").value;
if((a.match("[^a-zA-Z]")!=null)||(a.length==0))
{cnt=1;
document.getElementById("1").innerHTML="<font color=\"red\">ENTER THE PROPER NAME </font>";
}
else
{
document.getElementById("1").innerHTML="";
}


var b=document.getElementById("email").value;
if(b!=(b.match("[a-zA-Z0-9._]+[@][a-zA-Z0-9]+[.][a-zA-Z]+[.a-zA-Z]*")))
{cnt=1;
document.getElementById("2").innerHTML="<font color=\"red\">ENTER THE PROPER EMAIL ID like gansa1986@gmail.com</font>";
}
else
{
document.getElementById("2").innerHTML="";
}

var c=document.getElementById("address").value;
if(!(c.match("[a-zA-Z]+")))
{cnt=1;
document.getElementById("3").innerHTML="<font color=\"red\">ENTER THE ADDRESS</font>";
}
else
{
document.getElementById("3").innerHTML="";
}

var d=document.getElementById("comments").value;
if(!(d.match("[a-zA-Z]+")))
{cnt=1;
document.getElementById("4").innerHTML="ENTER THE COMMENTS";
}
else
{
document.getElementById("4").innerHTML="";
}

if(cnt==0)
{
var mail="<a href=\"mailto:hyrullah@gmail.com?subject=Feedback&body=NAME	:"+a+"%0D%0A FROM	:"+b+"%0D%0A ADDRESS	:"+c+"%0D%0A FEEDBACK	:"+d+"\"><font color=\"red\">click here to send.......</font></a>";
document.getElementById("div1").innerHTML=mail;
}else{cnt=0;
document.getElementById("div1").innerHTML="";
}
}

</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>FEEDBACK FORM</title>
</head>
<body>
<a href="/RTOAUTOMATION/Index.jsp">home</a>
<pre align="left"><font size="6"color="red"><u>FEEDBACK FORM</u></font></pre>
<center>
<form name="f" action="">
<table >
          <tr>
            <td> Name :<font color="red">*</font></td>
            <td ><input  name="name" size="35"  maxlength="45" type="text"><div id="1"></div> </td>
          </tr>
          <tr>
            <td>Email : <font color="red">*</font></td>
            <td ><input  name="email" size="35"  maxlength="45" type="text"><div id="2"></div> </td>
          </tr>
          <tr>
            <td>Address : </td>
            <td><input name="address" type="text" size="35"  maxlength="45"> <div id="3"></div></td>
            
          </tr>
          
          <tr>
            <td>Your Feedback :<font color="red">*</font> </td>
            <td >
              <textarea name="comments" rows="5" cols="35" >  </textarea>
              <div id="4" ></div>
            </td>
          </tr>
          <tr>
  </table>
         
   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" onClick= "validation();" value="Send">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="reset" type="reset" value="Clear"/>
<div id="div1"></div>
</form>
</center>
</body>
</html>