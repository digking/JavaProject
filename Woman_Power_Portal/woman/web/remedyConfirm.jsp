<%@page import="java.sql.Statement"%>
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
          
            <tr>
                <td colspan="2" align='center'>
                    <%
                    
                        int _id=Integer.parseInt(request.getParameter("hid_res"));
                        
                        String _response=request.getParameter("ta_response");
                            Connection cn=(Connection)application.getAttribute("CONN");
                            
                            cn.setAutoCommit(false);
                            
                            
                            Statement st=cn.createStatement();
                            
                            st.addBatch("update complain set complain_status='Solved' where complain_id="+_id+"");
                            st.addBatch("insert into remedy(comp_id,action_taken) values("+_id+",'"+_response+"')");
                            
                            
                            int[] a=st.executeBatch();
                            
                            boolean flag=true;
                            
                            for(int i:a)
                                {
                                    
                                    if(i==0)
                                        {
                                            flag=false;
                                        }
                                }
                            
                            if(flag==true)
                                {
                                    
                                    cn.commit();
                                    
                                        out.println("<hr>");
                                        
                                        out.println("<h2 align=center>RESPONSE UPDATED!</h2>");
                                        out .println("<h3><a href='Remedy1.jsp'>Attend the Another Response!</a></h3>");
                                        out.println("</hr>");
                                }
                            else
                                {
                                    cn.rollback();
                                }
                            
                            
                    
                    
                    %>
                    
                    
                    
                </td>
                
                
            </tr>
            
            
        </table>
    </body>

</html>
