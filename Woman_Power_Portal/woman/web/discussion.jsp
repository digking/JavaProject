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
        <table cellpadding="10" cellspacing="0" border="0" width="100%">
            <tr><td colspan="2" align="center"><%@include file="banner.jsp"%></td></tr>
             <tr><td colspan="2" align="center"><%@include file="horizontal_menu.jsp" %></td></tr>
            <tr><td colspan="2" align="center"><%@include file="menu.jsp"%></td></tr>
            
            <tr><td colspan="2" align="center"><font color="red" size="4">Hello...</font><font color="blue" size="4"><%=session.getAttribute("uid")%></font></td></tr>
                    <tr>    <td colspan="2" align='center'>
                
                                  <%
                                  
                                        Connection cn=(Connection)application.getAttribute("CONN");
                                        
                                        
                                        PreparedStatement ps_topic=cn.prepareStatement("select * from topics where topic_id in(select max(topic_id) from topics)");
                                        
                                        ResultSet rs_topic=ps_topic.executeQuery();
                                        rs_topic.next();
                                        
                                        PreparedStatement ps_dicussion=cn.prepareStatement("select * from discussion where topic=?");
                                        
                                        ps_dicussion.setString(1, rs_topic.getString(2));
                                        
                                        ResultSet rs_discussion=ps_dicussion.executeQuery();
                                        
                                        
                                        
                                  
                                        
                                        
                                  
                                  %>
                            
                            <form method="post" action="discussionconfirm.jsp">
                                
                                <table cellpadding="10" cellspacing="0" border="0" width="80%" bgcolor="lightyellow">
                                       <input type="hidden" name="hid_topic" value="<%=rs_topic.getString(2)%>">
                                    <tr bgcolor="red">    <td colspan="4" align="center"><font color="white" size="4"><%=rs_topic.getString(2)%></font></td>  </tr>
                                    <%
                                                while(rs_discussion.next())
                                                    {
                                                        
                                    %>
                                    
                                    <tr>    <td><b>UserId</b></td><td><%=rs_discussion.getString(2)%></td><td colspan="2"><%=rs_discussion.getString(4)%></td>    </tr>
                                    
                                 
                                    
                                    <%
                                                        
                                                    
                                                    }
                                    
                                    
                                    
                                    
                                    
                                    %>
                                    
                                    <tr>    <td><b>YOU VIEW</b></td><td colspan="3" align="center"><textarea name="ta_discussion" rows="10" cols="60"></textarea></td></tr>
                                    
                                    
                                    <tr><td colspan="4" align="center"><input type="submit" value="Post View"></td></tr>
                                    
                                </table>
                                
                                
                            </form>
                                
                                    
                            
                            
                            
                            
                            
                            
                            </td></tr>
            
        </table>
    </body>

</html>
