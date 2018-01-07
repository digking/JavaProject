

<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    
    if(session.getAttribute("uid")==null || session.getAttribute("pass")==null)
        {
           response.sendRedirect("ErrorPage.jsp");
        }


%>
<%-- 
    Document   : index
    Created on : Apr 20, 2015, 12:36:57 AM
    Author     : RK Pandey
--%>

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
                    
                    <%
                            Connection cn=(Connection)application.getAttribute("CONN");
                            
                            
                            PreparedStatement ps_max=cn.prepareStatement("select * from search_safe_area where norc in (select max(norc) from search_safe_area)");
                            
                            ResultSet rs_max=ps_max.executeQuery();
                            rs_max.next();
                            PreparedStatement ps_min=cn.prepareStatement("select * from search_safe_area where norc in (select min(norc) from search_safe_area)");
                            ResultSet rs_min=ps_min.executeQuery();
                            rs_min.next();
                            
                            
                            
                            
                            
                            
                    
                    %>
                    
                    
                    <table cellpadding="10" cellspacing="0" border="0" width="70%" bgcolor="lightyellow">
                        
                        <tr bgcolor="red"><td colspan="4" align="center"><font color="white" size="4">SEARCHING SAFE AREA</font></td></tr>
                        
                        <tr><td width="25%"></td><td>MOST CRIME PRONE AREA</td><td><%=rs_max.getString(2)%></td><td width="25%"></td></tr>
                        <tr><td width="25%"></td><td><font color="red" size="4">NO. OF CRIMES</font></td><td><%=rs_max.getString(4)%></td><td width="25%"></td></tr>
                        <tr><td width="25%"></td><td><font color="blue" size="4">THREATS</font></td><td><%=rs_max.getString(5)%></td><td width="25%"></td></tr>
                        <tr><td colspan="4" align="center"><hr></td></tr>
                        <tr><td></td><td>MINIMUM CRIME PRONE AREA</td><td><%=rs_min.getString(2)%></td><td></td></tr>
                         <tr><td width="25%"></td><td><font color="red" size="4">NO. OF CRIMES</font></td><td><%=rs_min.getString(4)%></td><td width="25%"></td></tr>
                        <tr><td width="25%"></td><td><font color="blue" size="4">THREATS</font></td><td><%=rs_min.getString(5)%></td><td width="25%"></td></tr>
                       
                        <tr><td colspan="4" align="center"><hr></td></tr>
                        
                        
                    </table>
                        
                        
                        
                        
                        
                        
                    
                    
                    
                    
                    
                    
                    
               
                    
                    
                </td></tr>
            
        </table>
    </body>
</html>
