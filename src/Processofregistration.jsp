<html>

<head>
<title>PROCESS OF REGISTRATION</title>
<link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
</head>
<body>
<a href="/RTOAUTOMATION/Userhomepage.jsp"><img src="/RTOAUTOMATION/images/home.gif"/></a>

<br>
<br><%!String sess; %>
    
    <%if (session.isNew())
    	  response.sendRedirect("Index.jsp");
      else
      {   	   
      		sess=(String)session.getAttribute("username"); 
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
<font color="white" size="4">HI <%=sess %></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath() %>/logout.action"><font color="white">Log out</font></a>
        
        <center><font color="orange" size="8">Registration of New Vehicle</font></center>
        <font size="2">
        <DIV><BR>
         <BR>
         To apply for the permanent registration of new vehicle, it should be
        produced to the RTO for inspection. The vehicle is inspected by an
        inspector who confirms to the provision of Act &amp; rule and then the
        vehicle tax is recovered. Along with this the following is to be
        submitted:<BR>
        <UL>
          <LI>Form -20 </LI>
          <LI>Sale certificate in form 21 given by dealer.</LI>
          <LI>Roadworthiness certificate in form 22 ,22-A from the
            manufacturer.</LI>
          <LI>Roadworthiness certificate in form 22-A part II from the body
            builder for transport vehicles.</LI>
          <LI>Transport commissioner's approval.</LI>
          <LI>Purchase invoice (for vehicles attracting life time tax).</LI>
          <LI>Temporary registration if any.</LI>
          <LI>Valid insurance certificate.</LI>
          <LI>Address proof.</LI>
          <LI>Entry tax payment proof if any vehicle, body or tanker is
            purchased from outside the state.</LI>
          <LI>Octroi receipt if registering in municipal limits.</LI>
          <LI>PAN number or Form-60 in two copies (expect 2 wheelers ).</LI>
          <LI>Manufacturers certificate for invalid carriage.</LI>
          <LI>Customs clearance certificate in case of imported vehicles along
            with licence &amp; bond if any.</LI>
          <LI>Bill of entry for imported vehicles.</LI>
          <LI>Design approval from transport commissioner in the case of a
            trailer.</LI>
          <LI>7/12 abstract or tahasildar certificate in the case of
            agricultural tractor &amp; trailer.</LI>
          <LI>Fees</LI>
        </UL></DIV></font>
        
        <h1>Registration of vehicle arrived from outstate or
        assignment of new registration mar</h1>
        
<font size="5">
       <BR>
         <BR>
         If the vehicle is registered in one state and is kept or used in other
        state for the period of more than a year then the vehicle needs to be
        registered in the later state for a new registration number to be
        assigned . For this the NOC from original registering authority &amp;
        consent of financier is needed to be furnished.
        <UL>
          <LI>Form - 20,26,27.</LI>
          <LI>Form 29,30 - incase of transfer of ownership.</LI>
          <LI>Form 33 - incase of change of address only.</LI>
          <LI>NOC in form 28 with chassis print affixed on it from the original
            registering authority along with consent from financier.</LI>
          <LI>Form FT, AT.</LI>
          <LI>Form TCA, TCR - incase of transport vehicles only.</LI>
          <LI>Proof of payment of entry tax in case vehicle has arrived within
            30 months of date of it's first registration.</LI>
          <LI>An affidavit from the owner of the vehicle stating that vehicle
            in concerned in not involved in any accident, theft or crime.</LI>
          <LI>Fees</LI>
          <LI>All valid documents of the vehicle.</LI>
        </UL>Note: With all above forms &amp; certificates produce the vehicle
        for inspection at the R.T.O office.<BR>
         <BR>
       
</font>
</body>
</html>