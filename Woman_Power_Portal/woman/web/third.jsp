<%
    
    if(session.getAttribute("uid")==null || session.getAttribute("pass")==null)
        {
           response.sendRedirect("ErrorPage.jsp");
        }


%>

<%-- 
    Document   : index
    Created on : Apr 20, 2015, 12:36:57 
    Author     : RK Pandey
--%>

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
                <%
                
                        String[] ids={"Driving License Number","Pan Card","VOTER ID","Not Mandatory for Third Party"};
                
                
                
                %>
                
                <td colspan="2" align="center">
                    <form method="post" action="IndividualReportUpload" enctype="multipart/form-data">
                        <table cellpadding="10" cellspacing="0" border="0" width="70%" bgcolor="lightyellow">
                            
                            <tr bgcolor="red">    <td colspan="4" align="center"><font color="white" size="4">THIRD PARTY FILING</font></td>    </tr>
                            <tr>    <td width="25%"></td><td>AUTHORIZED PERSON NAME</td><td><input type="hidden" name="txt_name"><b>ANONYMOUS</b></td><td width="25%"></td>    </tr>
                            <tr>    <td></td><td>ID TYPE</td><td> <select name="cmb_idproof">
                                        <option value="" selected>-select id proof-</option>
                                        <%
                                        
                                                for(String _proof:ids)
                                                    {
                                         %>
                                        
                                         <option value="<%=_proof%>"><%=_proof%></option>
                                         
                                        
                                        <%
                                                    }
                                        
                                        
                                        %>
                                    </select>
                                   
                                    
                                    
                                    
                                    
                                </td><td></td>    </tr>
                            <tr>    <td></td><td>ID Number</td><td><input type="text" name="txt_id" value="-Not Mandatory-"></td><td></td>    </tr>
                            <tr>    <td></td><td>Complain Text</td><td><textarea name="ta_complain" rows="30" cols="30"></textarea></td><td></td>    </tr>
                            <tr>    <td></td><td>Proof(Image)</td><td><input type="file" name="file_upload"></td><td></td>    </tr>
                            
                            <tr>    <td colspan="4" align="center"><input type="submit" value="Post Complain"></td>    </tr>
                            
                            
                            
                            
                            
                        </table>
                            
                            
                            
                            
                            
                            
                        
                        
                        
                        
                        
                        
                        
                    </form>
                          
                    
                    
                </td>
                
            </tr>
            
        </table>
    </body>
</html>
