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
                
                            
                            <form method="post" action="remedyseen.jsp">
                                <table cellpadding="10" cellspacing="0" border="0" width="70%" bgcolor="lightyellow">
                                    
                                    <tr bgcolor="red">    <td colspan="4" align="center"><font color="white" size="4">SEARCH COMPLAIN STATUS</font></td>    </tr>
                                    <tr>    <td width="25%"></td><td>SEARCH ID</td><td><input type="text" name="txt_id"></td><td width="25%"></td>    </tr>
                                    <tr>    <td colspan="4" align="center"><input type="submit" value="Search"></td>   </tr>
                                    
                                    
                                </table>
                                
                                
                            </form>
                            
                            <%
                            
                                int _id=Integer.parseInt(request.getParameter("txt_id"));
                                        
                            
                                    Connection cn=(Connection)application.getAttribute("CONN");
                                    
                                    try
                                    {
                                    
                                    
                                    PreparedStatement ps=cn.prepareStatement("select * from remedy where comp_id=?");
                                    ps.setInt(1,_id);
                                    
                                    
                                    ResultSet rs=ps.executeQuery();
                                    rs.next();
                                 
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                            
                            %>
                            
                            <hr>
                    <font color="blue" size="4"><%=rs.getString(3)%></font>
                            <%}
                            catch(Exception e)
                                {
                               
                                 out.println("<h2 align=center>Request is Pending</h2>");
                               
                                    
                                }
                            
                            %>
                            <hr>
                            
                            
                            </td></tr>
            
        </table>
    </body>

</html>
