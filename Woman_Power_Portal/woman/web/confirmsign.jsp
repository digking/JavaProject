



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
              try
                        {
                String _name=request.getParameter("txt_name");
                
                String _address=request.getParameter("ta_address");
                String _mobile=request.getParameter("txt_mobile");
                String _email=request.getParameter("txt_email");
                
                String _squest=request.getParameter("cmb_quest");
                
                String _ans=request.getParameter("txt_ans");
                
                String _pass=request.getParameter("txt_pass");
                
                String _utype="Normal";
                
                
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
                
                
             
                
                
                
                
                
                
        
           }
                        catch(Exception e)
                            {
                            
                                javax.swing.JOptionPane.showMessageDialog(null,"Error is::"+e.getMessage());
                            }
        %>
       <hr>
                    <h3 align="center">Sign up Successful!</h3>
                    
                    <h4 align="center">To Login <a href="index.jsp">Click Here!</a></h4>
                    <hr>
    </body>
</html>
