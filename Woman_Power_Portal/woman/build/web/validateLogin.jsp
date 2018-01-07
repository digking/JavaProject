

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>       
  
              <title>JSP Page</title>
    </head>
    <body>
                <%
                    String _userid=request.getParameter("txt_id");
                    String _password=request.getParameter("txt_pass");
                    
                    
                    Connection cn=(Connection)application.getAttribute("CONN");
                    
                    
                    if(!cn.isClosed())
                        {
                            PreparedStatement ps=cn.prepareStatement("select * from login where userid=? and password=?");
                            
                            ps.setString(1,_userid);
                            ps.setString(2,_password);
                            ResultSet rs=ps.executeQuery();
                            
                            if(rs.next())
                                {
                                    
                                    
                                    if(rs.getString(3).equals("Admin"))
                                    {
                                         session.setAttribute("uid", _userid);
                                    session.setAttribute("pass", _password);
                                   
                                    
                                    response.sendRedirect("AdminForms.jsp");
                                    }
                                    else
                                        {
                                             session.setAttribute("uid", _userid);
                                    session.setAttribute("pass", _password);
                                   
                                            response.sendRedirect("Userway.jsp");
                                        }
                                }
                            
                            
                            
                            
                        
                        }
                    else
                        {
                                out.println("Connection absent::");
                        }
                    
                
                
                %>
                   
                    
                  
    </body>
</html>
