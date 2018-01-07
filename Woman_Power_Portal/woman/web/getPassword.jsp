
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
             <table cellpadding="10" cellspacing="0" border="0" width="100%">
            <tr><td colspan="2" align="center"><%@include file="banner.jsp"%></td></tr>
             <tr><td colspan="2" align="center"><%@include file="horizontal_menu.jsp" %></td></tr>
            <tr><td colspan="2" align="center"><%@include file="menu.jsp"%></td></tr>
            
            <tr><td colspan="2" align="center"><font color="red" size="4">Hello...</font><font color="blue" size="4"><%=session.getAttribute("uid")%></font></td></tr>
            <tr><td colspan="2" align="center">  <%
            Connection cn=(Connection)application.getAttribute("CONN");
            
            String _ans=request.getParameter("txt_ans");
            String _id=request.getParameter("txt_id");
            
            PreparedStatement ps=cn.prepareStatement("select * from userinfo where email=? and security_ans=?");
            ps.setString(1, _id);
            ps.setString(2,_ans);
            
            ResultSet rs=ps.executeQuery();
            
            if(rs.next())
                {
                    PreparedStatement ps_one=cn.prepareStatement("select password from login where userid=?");
                    ps_one.setString(1,_id);
                    
                    ResultSet rs_one=ps_one.executeQuery();
                    
                    
                    
                    if(rs_one.next())
                        {
                                out.println("<hr><br>");
                                out.println("<h3 align=center><font color=red>The Password is::</font><font color=blue>"+rs_one.getString(1)+"</font></h3>");
                                out.println("<br><hr>");
                        }
                    
                    
                    
                    
                }
            
        
        
        %></td></tr>
            
        </table>
      
    </body>
</html>
