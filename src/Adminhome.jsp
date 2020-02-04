<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<title>Welcome Adminstrator  </title>

<script src="/RTOAUTOMATION/menuscript/menuscript1.js" language="javascript" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="/RTOAUTOMATION/menuscript/menustyle1.css" media="screen, print" />

<link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
</head>
<body bgcolor="#CCCCCC" link="#000000" alink="#000000" vlink="#000000">
  
<font color="white" size="4">HI <%=sess %></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath() %>/logout.action"><font color="white">Log out</font></a><style>
FONT	{FONT-FAMILY: Verdana,Helvetica; FONT-SIZE: 12px}
TD	{FONT-FAMILY: Verdana,Helvetica; FONT-SIZE: 12px}
BODY	{FONT-FAMILY: Verdana,Helvetica; FONT-SIZE: 12px}
P	{FONT-FAMILY: Verdana,Helvetica; FONT-SIZE: 12px}
DIV	{FONT-FAMILY: Verdana,Helvetica; FONT-SIZE: 12px}
</style>
<p><br><p><br>
<table border="0" cellpadding="0" cellspacing="0"><tr><td>
<a href="/RTOAUTOMATION/Adminhome.jsp" onmouseover="setOverImg('1','');overSub=true;showSubMenu('submenu1','button1');" onmouseout="setOutImg('1','');overSub=false;setTimeout('hideSubMenu(\'submenu1\')',delay);" target=""><img src="buttons/buttons2/button1up.png" border="0" id="button1" vspace="1" hspace="15"></a><a href="/RTOAUTOMATION/Adminhome.jsp" onmouseover="setOverImg('2','');overSub=true;showSubMenu('submenu2','button2');" onmouseout="setOutImg('2','');overSub=false;setTimeout('hideSubMenu(\'submenu2\')',delay);" target=""><img src="buttons/buttons2/button2up.png" border="0" id="button2" vspace="1" hspace="15"></a><a href="/RTOAUTOMATION/Adminhome.jsp" onmouseover="setOverImg('3','');overSub=true;showSubMenu('submenu3','button3');" onmouseout="setOutImg('3','');overSub=false;setTimeout('hideSubMenu(\'submenu3\')',delay);" target=""><img src="buttons/buttons2/button3up.png" border="0" id="button3" vspace="1" hspace="15"></a><a href="/RTOAUTOMATION/Adminhome.jsp" onmouseover="setOverImg('4','');overSub=true;showSubMenu('submenu4','button4');" onmouseout="setOutImg('4','');overSub=false;setTimeout('hideSubMenu(\'submenu4\')',delay);" target=""><img src="buttons/buttons2/button4up.png" border="0" id="button4" vspace="1" hspace="15"></a><a href="/RTOAUTOMATION/Adminhome.jsp" onmouseover="setOverImg('5','');overSub=true;showSubMenu('submenu5','button5');" onmouseout="setOutImg('5','');overSub=false;setTimeout('hideSubMenu(\'submenu5\')',delay);" target=""><img src="buttons/buttons2/button5up.png" border="0" id="button5" vspace="1" hspace="15"></a><a href="/RTOAUTOMATION/Adminhome.jsp" onmouseover="setOverImg('6','');overSub=true;showSubMenu('submenu6','button6');" onmouseout="setOutImg('6','');overSub=false;setTimeout('hideSubMenu(\'submenu6\')',delay);" target=""><img src="buttons/buttons2/button6up.png" border="0" id="button6" vspace="1" hspace="15"></a><br>
</td></tr></table>



<p><br><p><br>

</body>
</html>



