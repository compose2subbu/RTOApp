<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
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

<HTML>
<HEAD>
<link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />

<TITLE>Need For License</TITLE>
</HEAD>

<BODY BGCOLOR="#FDF5E6" TEXT="#000000">
<a href="/RTOAUTOMATION/Userhomepage.jsp"><img src="/RTOAUTOMATION/images/home.gif"/></a>
<br>
<font color="white" size="4">HI <%=sess %></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath() %>/logout.action"><font color="white">Log out</font></a>

<br> <br>

  

<CENTER>
<TABLE BORDER=5 BGCOLOR="#EF8429">
  <TR><TH CLASS="TITLE">
      Need For License</TABLE>
</CENTER>
<br><p align="center">
<img src ="/RTOAUTOMATION/images/SampleUserLicense.jpg" /></p>
<P>
<font color="white">Necessity of Driving License</font><br>
<font color="red"> Warning!!No person shall drive a motor vehicle in any public place unless he holds an effective Driving license issued to him Authorising him to drive vehicle of that particular category.</font>

<hr>


<font color="white">Types of Driving Licenses in India</font><br><br>

<p>To drive a motor vehicle in any public place an effective Driving License is necessary. By effective Driving License it mean license issued to a person authorizing him/her to drive vehicle of that particular category. There are different types of licenses issued by the RTO offices. Here we will discuss each of them separately.</p><br> 

<font color="white">1. Learner Driving License</font>

<p>This is a temporary license that is valid up to 6 months from the date of issue. It is basically issued to learn driving of Motor Vehicles.</p> 


<font color="white">2. Permanent Driving License</font>

<p>Permanent driving license is issued to those who become eligible for it after thirty days (to apply within 180 days) from the date of issue of the learner license. Person suppose to get permanent driving license should be conversant about the vehicle systems, driving, traffic rules and regulations. </p>


<font color="white">3. Duplicate Driving License</font>

<p>In case of loss, theft, or on mutilation, Duplicate License is issued. The documents to be produced are FIR of the lost license, challan clearance report from RTA Office (in case of Commercial license renewal) and an application in Form LLD. The particulars are verified by the authority from the records. The duplicate license will have the valid period same as the previous license. If the license is lost and expired by more than 6 months it requires permission from Head Quarter of Transport Department. 

It is recommended to keep a photocopy of the original license or particulars of license noted in order to make it easier for the issuing authority to locate the particulars from their record. </p>


<font color="white">4. International Driving License</font>

<p>The motor licensing authority also issues International Driving License. The validity of this license is for one year. Person visiting the country is required to collect the license from there within one year period. Apart from address proof and birth certificate, one has to produce a valid passport and valid visa while applying. </p>


<font color="white">5. Motorcyle License or Two-wheeler License</font>

<p>Two-wheeler license is issued by the Regional Transport Authority (RTO) to permit driving of only two-wheeler vehicles like bike, scooter and moped. </p>


<font color="white">6. Light Motor Vehicle License (LMV)</font>

<p>Light Motor Vehicle License is issued to drive light vehicles like auto rickshaws, motor car, jeep, taxi, three-wheeler delivery vans, etc. </p>


<font color="white">7. Heavy Motor Vehicle License (HMV)</font>

<p>Heavy Motor Vehicle License is issued to drive heavy vehicles like trucks, buses, tourist coaches, cranes, goods carriages, etc. A person with HMV license can drive light vehicles but Light Motor Vehicle License do not permit to drive heavy vehicles. </p>



</BODY>
</HTML>

