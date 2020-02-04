<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleSendSMSPortTypeProxyid" scope="session" class="sms.SendSMSPortTypeProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleSendSMSPortTypeProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        String uid_0id=  request.getParameter("uid5");
            java.lang.String uid_0idTemp = null;
        if(!uid_0id.equals("")){
         uid_0idTemp  = uid_0id;
        }
        String pwd_1id=  request.getParameter("pwd7");
            java.lang.String pwd_1idTemp = null;
        if(!pwd_1id.equals("")){
         pwd_1idTemp  = pwd_1id;
        }
        String phone_2id=  request.getParameter("phone9");
            java.lang.String phone_2idTemp = null;
        if(!phone_2id.equals("")){
         phone_2idTemp  = phone_2id;
        }
        String msg_3id=  request.getParameter("msg11");
            java.lang.String msg_3idTemp = null;
        if(!msg_3id.equals("")){
         msg_3idTemp  = msg_3id;
        }
        java.lang.String sendSMSToMany2mtemp = sampleSendSMSPortTypeProxyid.sendSMSToMany(uid_0idTemp,pwd_1idTemp,phone_2idTemp,msg_3idTemp);
if(sendSMSToMany2mtemp == null){
%>
<%=sendSMSToMany2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(sendSMSToMany2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
}
} catch (Exception e) { 
%>
exception: <%= e %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>