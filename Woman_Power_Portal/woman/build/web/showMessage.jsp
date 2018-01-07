<%-- 
    Document   : showMessage
    Created on : May 6, 2016, 2:12:16 PM
    Author     : RK Pandey
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                    <%
                        
                                String _receivedId=(String)session.getAttribute("uid");
                                
                                int _id=Integer.parseInt(request.getParameter("id"));
                                
                                
                                
                                Connection cn=(Connection)application.getAttribute("CONN");
                                
                                PreparedStatement ps=cn.prepareStatement("select * from message where mid=?");
                                ps.setInt(1, _id);
                                
                                
                                ResultSet rs=ps.executeQuery();
                                rs.next();
                                
                                
                                
                                
                                
                                
                                
                                    
                    
                                
                    
                    %>
                    
                    <table cellpadding="10" cellspacing="0" border="0" width="70%" bgcolor="lightyellow" align="center">
                        <tr bgcolor="red"><td colspan="4" align="center"><font color="white" size="4">THE MESSAGE</font></td></tr>
                        <tr><td></td><td><font color="red">Sender</font></td><td><%=rs.getString(2)%></td><td></td></tr>
                        <tr><td colspan="4"><hr></td></tr>
                        <tr><td></td><td><font color="blue">Subject</font></td><td><%=rs.getString(4)%></td><td></td></tr>
                        <tr><td colspan="4"><hr></td></tr>
                        <tr><td></td><td><font color="brown">Message</font></td><td><%=rs.getString(5)%></td><td></td></tr>
                            
                        
                        
                    </table>
                    
    </body>
</html>
