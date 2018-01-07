

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
                
                    
                    
                    
                    
                    
                    <div align="center">
                        <%
    
                                String _from=(String)session.getAttribute("uid");
                                String _to=request.getParameter("cmb_to");
                                
                                String _message=request.getParameter("ta_message");
                                String _subject=request.getParameter("txt_subject");
                                java.util.Date _date=new java.util.Date();
                                String _da=_date.toString();
                                
                                
                                Connection cn=(Connection)application.getAttribute("CONN");
                                
                                
                                
                                PreparedStatement ps_insert=cn.prepareStatement("insert into message(from_id,to_id,subject,message,dom) values(?,?,?,?,?)");
                                
                                ps_insert.setString(1, _from);
                                ps_insert.setString(2, _to);
                                ps_insert.setString(3, _subject);
                                ps_insert.setString(4, _message);
                                ps_insert.setString(5, _da);
                                int a=ps_insert.executeUpdate();
                                
                                
                                if(a>0)
                                    {
                                        
                                        
                                        out.println("<hr>");
                                        out.println("<h2 align=center>Message Sent!</h2>");
                                        
                                        out.println("<hr>");
                                    
                                    }
                                
                                
                                
                                
                                
                                
                                
                                
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
