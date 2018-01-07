<%
    
    if(session.getAttribute("uid")==null || session.getAttribute("pass")==null)
        {
           response.sendRedirect("ErrorPage.jsp");
        }


%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body class="backgroundformat">
        <table cellpadding="10" cellspacing="0" border="0" width="100%">
            <tr><td colspan="2" align="center"><%@include file="banner.jsp"%></td></tr>
            <tr><td colspan="2" align="center"><%@include file="horizontal_menu.jsp" %></td></tr>
            <tr><td colspan="2" align="center"><%@include file="menu.jsp"%></td></tr>
            
            <tr><td colspan="2" align="center"><font color="red" size="4">Hello...</font><font color="blue" size="4"><%=session.getAttribute("uid")%></font></td></tr>
            <tr><td width="60%" align="center"><%@include file="slidingimages.jsp"  %> </td><td width="25%" align="center">
                    
                    
            
                    
                    <table cellpadding="10" cellspacing="0" border="0" width="40%">
                        
                        <tr bgcolor="yellow">    <td colspan="3" align="center"><font color="white"><a href="aboutcity.jsp"><b>Know About Our Store</b></a></font></td>    
                        
                        </tr>
                        <tr ><td colspan="4" align="center"><hr></td></tr>
                        <tr bgcolor="red">    <td colspan="3" align="center"><font color="white"><b>Alert</b></font></td>
                    </table>
                   
                    <marquee  scrollamount="2" direction="up" loop="true" width="40%">
                
                <p>
                   <font color="blue">
                   
                   <a href="TrackYourComplain.jsp">For Tracking the Action Against Complain you can click here...
                   </a>
                   </font>
                    
                </p>
                
                
                
            </marquee>
                    
                    
                    
                    
                </td></tr>
            
        </table>
    </body>

</html>
