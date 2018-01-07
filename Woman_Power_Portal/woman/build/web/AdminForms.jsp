

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
        <table cellpadding="10" cellspacing="0" border="0" width="100%" bgcolor="lightblue">
            <tr><td colspan="2" align="center"><%@include file="banner.jsp"%></td></tr>
             <tr><td colspan="2" align="center"><%@include file="horizontal_menu.jsp" %></td></tr>
            <tr><td colspan="2" align="center"><%@include file="menu.jsp"%></td></tr>
            <tr><td colspan="2" align="center">
                
                    
                    
                    
                    
                    
                    <div align="center">
            
            <table cellpadding="10" cellspacing="0" border="0" width="70%" bgcolor="yellow">
                <tr bgcolor="red">    <td colspan="4" align="center">ADMIN FORMS</td>      </tr>
                <tr>    <td width="25%"></td><td colspan="2" align="center"><a href="AdminSignup.jsp">New Admin Signup!</a></td><td width="25%"></td>       </tr>
                <tr>    <td width="25%"></td><td colspan="2" align="center"><a href="Remedy1.jsp">Remedy Reponse</a></td><td width="25%"></td>       </tr>
                
               
                
                
                
            </table>
        </div>
    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                </td></tr>
            
        </table>
    </body>
</html>
