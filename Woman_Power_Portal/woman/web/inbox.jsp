

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
                            String _uid=(String)session.getAttribute("uid");
                            
                            Connection cn=(Connection)application.getAttribute("CONN");
                            
                            PreparedStatement ps=cn.prepareStatement("select * from message where to_id=?");
                            ps.setString(1, _uid);
                            ResultSet rs=ps.executeQuery();
                            
                            
                                
                    %>
                    
                    <div align="center">
                        
                        <table cellpadding="10" cellspacing="0" border="0" width="70%" bgcolor="lightyellow" align="center">
                            
                            <tr bgcolor="red"><td colspan="4" align="center"><font color="white" size="4">MY INBOX</font></td></tr>
                                    <%
                                                while(rs.next())
                                                    {
                                                    
                                   %>
                            <tr><td>From::</td><td><a href="showMessage.jsp?id=<%=rs.getString(1)%>"><%=rs.getString(2)%></a></td><td><%=rs.getString(6)%></td><td></td></tr>
                                    <tr><td colspan="4"><hr></td></tr>
                            
                                    <%
                                                    }
                                    
                                    %>
                            
                        </table>
                        
                    </div>
                    
                    
                    
                    
                
    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                </td></tr>
            
        </table>
    </body>
</html>
