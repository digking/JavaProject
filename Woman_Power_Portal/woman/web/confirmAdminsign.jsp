

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.CallableStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                String _name=request.getParameter("txt_name");
                
                String _address=request.getParameter("ta_address");
                String _mobile=request.getParameter("txt_mobile");
                String _email=request.getParameter("txt_email");
                
                String _squest=request.getParameter("cmb_quest");
                
                String _ans=request.getParameter("txt_ans");
                
                String _pass=request.getParameter("txt_pass");
                
                String _utype="Admin";
                
                
                Connection cn=(Connection)application.getAttribute("CONN");
                
                
                CallableStatement csbt=cn.prepareCall("{ call signup(?,?,?,?,?,?,?,?)}");
                csbt.setString(1, _name);
                csbt.setString(2, _address);
                csbt.setString(3, _email);
                csbt.setString(4, _mobile);
                csbt.setString(5, _squest);
                csbt.setString(6, _ans);
                csbt.setString(7, _pass);
                csbt.setString(8, _utype);
                csbt.execute();
                
                
               out.println("<h2 align=center>Sign Up Successful!</h2>");
                
                
                
                
                
                
                
        
        
        %>
        <h2 align='center'>For Login <a href="index.jsp">Click Here!</a></h2>
    </body>
</html>
