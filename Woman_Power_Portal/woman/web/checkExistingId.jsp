
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
        
                    Connection cn=(Connection)application.getAttribute("conn");
                    
                    
                    
                    String email=request.getParameter("txt_email");
                    
                    
                    PreparedStatement ps=cn.prepareStatement("select * from login where userid=?");
                    ps.setString(1, email);
                    
                    
                    ResultSet rs=ps.executeQuery();
                    
                    
                    if(rs.next())
                        {
                            out.println("Id Already Exist");
                        }
                    
                    
                    
        
        
        
        
        %>
