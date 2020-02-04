<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="\RTOAUTOMATION\css\experience\default.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vehicle Tracking</title>

<script src="http://maps.google.com/maps?file=api&amp;v=2.x&amp;key=ABQIAAAA2t7kRE5mo-BnD2oO8C-yjBSSUbPepZVkprmx7KcU2q-f_4TrEhSjMMxlx_qMaV_sOkIoJUUR42oW0w"
        type="text/javascript"></script>
        
        
  <script src="http://www.google.com/uds/api?file=uds.js&amp;v=1.0" type="text/javascript"></script>
    
</head>
<body>
<font color="GreenYellow ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WELCOME <%=sess %> Administrator........</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath() %>/logout.action">Log out</a>

<center>
    <div id="gmap" style="width: 703px; height: 500px">
    </div>
     <canvas id="testcanvas" width="1" height="1"></canvas> 

    <script type="text/javascript" language="javascript">
        if (GBrowserIsCompatible()) {
        
     var poly;
     var map;
     var marker;
     var lastVertex=0; 
     var icon = new GIcon();
          icon.image="sat.jpg"
          icon.iconSize=new GSize(75,75);
          icon.iconAnchor=new GPoint(16,9);
          var car = new GIcon();
          car.image="sat.jpg"
          car.iconSize=new GSize(25,40);
          car.iconAnchor=new GPoint(16,9);  
          var img = new Image();
          img.src = "sat.jpg";
    
        map = new GMap2(document.getElementById("gmap"));
        map.setCenter(new GLatLng(13.071787,80.186462), 13); 
        map.addControl(new GLargeMapControl()); 
        map.addControl(new GMapTypeControl());
          // ===== Check to see if this browser claims to support <canvas> ===
     if (document.getElementById('testcanvas').getContext) {
        var supportsCanvas = true;
      } else {
        var supportsCanvas = false;
      }      
     
   	
function StartTracking()
{
var route;
if(document.getElementById("tracking").value=="TN58-S-0249")
{
route="mdu-tv.xml";
}
if(document.getElementById("tracking").value=="TN22-AV-1739")
{
route="cmp-bch.xml";
}
if(document.getElementById("tracking").value=="TN38-AM-0486")
{
route="bangalore.xml";
}
if(document.getElementById("tracking").value=="TN10-AB-8033")
{
route="cmp-sanbch.xml";
}

    map.clearOverlays();
    GDownloadUrl(route, function(data, responseCode)
     {
       var xml = GXml.parse(data);  
       var markers = xml.documentElement.getElementsByTagName("marker");
       var latlng=[];  
      
       for (var i = 0; i < markers.length; i++) 
        {    
            latlng[i] = new GLatLng(parseFloat(markers[i].getAttribute("lat")),parseFloat(markers[i].getAttribute("lng"))); 
        }
      poly=new GPolyline(latlng);
     //map.addOverlay(poly);
      marker=new GMarker(poly.getVertex(0),{icon:car});
      map.panTo(poly.getVertex(0));
      map.addOverlay(marker);
     setTimeout("animate(0)",1000);
       
    });
   }
  function animate(d) {

      var p=poly.getVertex(d);      
  
      map.panTo(p);
      marker.setPoint(p);
          if (supportsCanvas) {   
          if (poly.GetIndexAtDistance(d)>lastVertex) {
            lastVertex = poly.GetIndexAtDistance(d);
            if (lastVertex == poly.getVertexCount()) {
              lastVertex -= 1;
            }
            while (poly.getVertex(lastVertex-1).equals(poly.getVertex(lastVertex))) {
              lastVertex-=1;
            }
          }
        }
        if(d==(poly.getVertexCount()-1))
        {
        
         return;
        }  
        setTimeout("animate("+(d+1)+")",1500);
     }

   
   
   

}
    
    </script>

    ENTER Registration Number:<input type="text" id="tracking" name="Registration_Number"/>
                              <input type="submit" name="starttracking" value="Start Tracking" onclick="StartTracking()"/>
</center>
</body>
</html>