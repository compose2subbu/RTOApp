<%@ page language="java" import="java.util.*,com.virtusa.rto.zonaloffice.*"   contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.virtusa.rto.zonaloffice.zone;"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Zone</title>
<link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
</head>
<body>
<a href="/RTOAUTOMATION/Index.jsp"><img src="/RTOAUTOMATION/images/home.jpg"/></a>
<br><br><br><br>

<%

try{
	
List ls=new zone().getLs();
Iterator it=ls.iterator();
if(it.hasNext())
{
while(it.hasNext())
{
	zonetable o=(zonetable)it.next();
	out.println("Your City/Town/Taulk :"+o.getCity_taluk());
	out.println("<br>Pincode :"+o.getPincode());
	out.println("<br>RTO Address :"+o.getRto_address1()+"  "+o.getRto_address2());
	out.println("<br>City :"+o.getCity());
	out.println("<br>District :"+o.getDistrict());
	out.println("<br>State :"+o.getState());
	out.println("<br>Phone Number :"+o.getRto_std_code()+"-"+o.getRto_phone_number());
	out.println("<br>Zone number :"+o.getZone_number());
	
}
}
else
{
	out.println("Data is not available for this pincode");
}
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
</body>
</html>
