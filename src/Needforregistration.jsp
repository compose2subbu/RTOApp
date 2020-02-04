<html>

<head>
<title>NEED FOR REGISTRATION</title>
<link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
</head> 
<body>
<a href="/RTOAUTOMATION/Index.jsp"><img src="/RTOAUTOMATION/images/home.gif"/></a>
<br><br>
<%!String sess; %>
    
    <%if (session.isNew())
    	  response.sendRedirect("Index.jsp");
      else
      {   	   
      		sess=(String)session.getAttribute("username"); 
      		try{
          		
          		if(sess.equals(null))
          		{
              	  response.sendRedirect("Index.jsp");
          		}}catch(Exception z){
          			//System.out.println(z);
          			response.sendRedirect("Error.jsp");
          		}
      }
            %>
<font color="white" size="4">HI <%=sess %></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath() %>/logout.action"><font color="white">Log out</font></a> 
 <center><font color="Magenta" size="8"> Vehicle Registration</font></center><br><br>
  <font size="2"> <p><strong>Registration</strong> is the initial recording of a vehicle on the Motor Vehicle Register, and the issuing of registration numbers.</p>
  <p>Vehicles can only be registered after they have been checked to ensure they are safe to be on the road.</p>
  <p>Most vehicles will only be registered once, but if they have been significantly modified or rebuilt, or their registration has been cancelled, they will have to be <strong>reregistered</strong>. 
  <p>There are three types of registration with RTO. They are as cited
        below:
        <UL>
          <LI>Temporary Registration</LI>
<br>
          <LI>Registration of New Vehicle</LI>
<br>
          <LI>Registration of vehicle arrived from outstate or assignment of
            new registration mark (R.M.A)</LI>
<br>
        </UL> 
  <br>
<br>
</font>

<h1>temporary registration</h1>
     <font size="3">  <div> 
       <BR>
        <UL>
          <LI>To take vehicle from the dealer's premises, it needs a temporary
            registration.</LI>
          <LI>In case of non-transport vehicles, to take the vehicle to the
            place of registration from the dealer's premises it needs to be
            registered temporarily.</LI>
          <LI>In case of transport vehicle one needs a time to construct the
            body of vehicle over the chassis hence it needs a temporary
            registration.</LI>
          <LI>Temporary registration is valid for 7 days initially and can be
            extended up to 30 days incase of non transport vehicles. The
            validity can be extended for some more period with the permission of
            registering authority in case of transport vehicles.</LI>
          <LI>An application for temporary registration shall be made.</LI>
        </UL> </div>
</font>

        
<h1>vehicle registration plates of India</h1>
<font size="2">
<p>All motorised road vehicles are tagged with a licence number in India. The licence plate (commonly known as number plates) number is issued by the district-level Regional Transport Office (RTO) of respective states - the main authority on road matters.</p>
<p>The licence plates are placed in the front and back of the vehicle. By law, all plates are based on modern Arabic numerals with Roman alphabet.</p>
</font>


</body>
</html>