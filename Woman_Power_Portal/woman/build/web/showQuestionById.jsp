

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
       
            Connection cn=(Connection)application.getAttribute("CONN");
            
            String _id=request.getParameter("qid");
            
            PreparedStatement ps=cn.prepareStatement("select security_quest from userinfo where email=?");
            ps.setString(1,_id);
            
            ResultSet rs=ps.executeQuery();
            
            
            String _question="";
            
            if(rs.next())
                {
                        _question=rs.getString(1).toString();
                }
            
            
            
            
            out.println(_question);
            
            
       
       
       %>
       <hr>
       Enter the Answer <input type="text" name="txt_ans">
       
       <hr>
       
       <input type="submit" value="Get Password">
        
       
       
    </body>
</html>
