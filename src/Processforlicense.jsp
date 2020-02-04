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

<TITLE>Registration Process For License</TITLE>
</HEAD>

<BODY BGCOLOR="#FDF5E6">
<a href="/RTOAUTOMATION/Userhomepage.jsp"><img src="/RTOAUTOMATION/images/home.gif"/></a><br>
<font color="white" size="4">HI <%=sess %></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath() %>/logout.action"><font color="white">Log out</font></a>


<br>
<CENTER>
<TABLE BORDER=5 BGCOLOR="#EF8429">
<TR><TH CLASS="TITLE">
Process For License</TABLE>
</CENTER>
<dl><dt>
<b><font color="magenta">STEP 1:</font></b></dt>
<dd>Application for Learners License along with Residence, Age Proof, form No.1, 2, 3 and fee</dd>
<dt><br>
<b><font color="magenta">STEP 2:</font></b></dt><dd>
Colors Blindness Test</dd>
<dt><br>
<b><font color="magenta">STEP 3:</font></b></dt><dd>
Learner Test</dd>
<dt><br>
<b><font color="magenta">STEP 4:</font></b></dt> <dd>
If Fail Can re-appear after 7 Days</dd>
<dt><br>

<b><font color="magenta">STEP 5:</font></b></dt>

<dd>If PASS Issued Learner License On form No. 3</dd>
<ul type="disc">
<li>Pvt. Vehicle. Learner License</li>

<li> Commercial Vehicle</li>

<li> Learner License</li>

<li>Trg. Of vehicle from Motor Driving School obtain form 5</li>
</ul>

<dt><br><b><font color="magenta">STEP 6:</font></b></dt>
<dd>
Application for Driving Test Form 3, 4,5 + Age, Residence, Proof</dd>

<dt><br><b><font color="magenta">STEP 7:</font></b></dt><dd>
Driving Test on Vehicle</dd>

<dt><br><b><font color="magenta">STEP 8:</font></b></dt><dd>
If fail Can re-appear after 7 days</dd>

<dt><br><b><font color="magenta">STEP 9:</font></b></dt><dd>
If Pass Issued Driving License</dd></dl>





</BODY>
</HTML>
