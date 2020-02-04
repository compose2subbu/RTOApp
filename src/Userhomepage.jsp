<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
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
<script language="javascript" type="text/javascript">        
	var i=1;
    function fun() 
    {  
   
  		 var p=document.getElementById('pic');
 	     p.src="/RTOAUTOMATION/images/p"+i+".jpg";
    	 i++;
     	if(i==7)
     	{
     		i=1;
     	}
    	setTimeout("fun()", 4000);
    }   
    
  </script>
<link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome To Online RTO Services </title>
<script src="/RTOAUTOMATION/menuscript/menuscript.js" language="javascript" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="/RTOAUTOMATION/menuscript/menustyle.css" media="screen, print" />


</head>
<body onload="fun();" bgcolor="#CCCCCC" link="#000000" alink="#000000" vlink="#000000">


<font color="white" size="4">HI <%=sess %></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath() %>/logout.action"><font color="white">Log out</font></a><br>

<style>
FONT {FONT-FAMILY: Verdana,Helvetica; FONT-SIZE: 12px}
TD	 {FONT-FAMILY: Verdana,Helvetica; FONT-SIZE: 12px}
BODY {FONT-FAMILY: Verdana,Helvetica; FONT-SIZE: 12px}
P	 {FONT-FAMILY: Verdana,Helvetica; FONT-SIZE: 12px}
DIV	 {FONT-FAMILY: Verdana,Helvetica; FONT-SIZE: 12px}
</style>
<br><br>
<table border="0" cellpadding="0" cellspacing="0"><tr><td>
<a href="/RTOAUTOMATION/Userhomepage.jsp" onmouseover="setOverImg('1','');overSub=true;showSubMenu('submenu1','button1');" onmouseout="setOutImg('1','');overSub=false;setTimeout('hideSubMenu(\'submenu1\')',delay);" target=""><img src="buttons/buttons1/button1up.png" border="0" id="button1" vspace="1" hspace="15"></a><a href="/RTOAUTOMATION/Userhomepage.jsp" onmouseover="setOverImg('2','');overSub=true;showSubMenu('submenu2','button2');" onmouseout="setOutImg('2','');overSub=false;setTimeout('hideSubMenu(\'submenu2\')',delay);" target=""><img src="buttons/buttons1/button2up.png" border="0" id="button2" vspace="1" hspace="15"></a><a href="/RTOAUTOMATION/Userhomepage.jsp" onmouseover="setOverImg('3','');overSub=true;showSubMenu('submenu3','button3');" onmouseout="setOutImg('3','');overSub=false;setTimeout('hideSubMenu(\'submenu3\')',delay);" target=""><img src="buttons/buttons1/button3up.png" border="0" id="button3" vspace="1" hspace="15"></a><a href="/RTOAUTOMATION/Userhomepage.jsp" onmouseover="setOverImg('4','');overSub=true;showSubMenu('submenu4','button4');" onmouseout="setOutImg('4','');overSub=false;setTimeout('hideSubMenu(\'submenu4\')',delay);" target=""><img src="buttons/buttons1/button4up.png" border="0" id="button4" vspace="1" hspace="15"></a><a href="/RTOAUTOMATION/Userhomepage.jsp" onmouseover="setOverImg('5','');overSub=true;showSubMenu('submenu5','button5');" onmouseout="setOutImg('5','');overSub=false;setTimeout('hideSubMenu(\'submenu5\')',delay);" target=""><img src="buttons/buttons1/button5up.png" border="0" id="button5" vspace="1" hspace="15"></a><br>
</td></tr></table>

<br>

<p align="center">
<br><br><br>
Stay Alive Think and Drive.</p><br>
<p align="center">
<img src="/RTOAUTOMATION/images/p1.jpg" id="pic" width="400" height="300"/></p>



<br><p align="right"><img src="<%=sesscode%>" ></img></p>

</body>
</html>



