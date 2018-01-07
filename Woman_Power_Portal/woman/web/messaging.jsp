

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
                
                    
                    
                    
                    
                    
                    <div align="center">
                        <%
                                Connection cn=(Connection)application.getAttribute("CONN");
                                
                                
                                PreparedStatement ps=cn.prepareStatement("select * from login") ;
                                
                                
                                    ResultSet rs=ps.executeQuery();
                        %>
                        
                        <form method="post" action="messageSend.jsp">
            <table cellpadding="10" cellspacing="0" border="0" width="70%" bgcolor="yellow">
                <tr bgcolor="red"><td colspan="4" align="center"><font color="white" size="4">MESSAGING PANEL</font></td></tr>
                <tr><td></td><td><a href="inbox.jsp">Inbox</a></td><td></td><td></td></tr>
                        <tr><td width="25%"></td><td>Receiving Person</td><td>
                                <select name="cmb_to">
                                    <option value="" selected>-select user-</option>
                                    <%
                                    
                                    
                                            while(rs.next())
                                                {
                                   %>
                                    
                                   <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
                                    <%
                                                }
                                    
                                    
                                    %>
                                    
                                    
                                    
                                </select>
                                    
                                
                                
                                
                    </td><td width="25%"></td></tr>
                        <tr><td></td><td>Subject</td><td><input type="text" name="txt_subject" maxlength="50"></td><td></td></tr>
                        <tr><td></td><td>Message</td><td><textarea name="ta_message" rows="20" cols="50"></textarea></td><td></td></tr>
                        <tr><td colspan="4" align="center"><input type="submit" value="Send"></td></tr>
                        
                        
                
                
                
                
            </table>
                        </form>
        </div>
    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                </td></tr>
            
        </table>
    </body>
</html>
