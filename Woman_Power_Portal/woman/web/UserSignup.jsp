
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
        <link rel="stylesheet" type="text/css" href="style.css" />
        <script lang="JavaScript" type="text/javascript" src="prog1.js"></script>
  
    </head>
    <body class="backgroundformat">
        <table cellpadding="10" cellspacing="0" border="0" width="100%">
            <tr><td colspan="2" align="center"><%@include file="banner.jsp"%></td></tr>
             <tr><td colspan="2" align="center"><%@include file="horizontal_menu.jsp" %></td></tr>
            <tr><td colspan="2" align="center"><%@include file="menu.jsp"%></td></tr>
            <tr><td colspan="2" align="center">
                          <div align="center">
                    
                    <form method="post" action="confirmsign.jsp">
                        
                        <table cellpadding="10" cellspacing="0" border="0" width="90%" bgcolor='lightyellow'>
                            
                            <tr bgcolor="red">    <td colspan="4" align="center"><b>SignUp Here</b></td>   </tr>
                            <tr>    <td width='25%'></td><td>Enter Name</td><td><input type="text" name="txt_name" required="required"></td><td width='25%'></td>    </tr>
                                    <tr>    <td></td><td>Enter Address</td><td>
                                
                                            
                                            <textarea name="ta_address" cols="30" rows="5">
                                                
                                            </textarea>
                                            
                                            
                                            
                                            
                                </td><td></td>    </tr>
                                    <tr>    <td></td><td>Enter Mobile</td><td><input type="text" name="txt_mobile" required="required" id="txt_mobile" onblur="validateMobileno()"></td><td></td>    </tr>
                                    <tr>    <td></td><td>Enter Email</td><td><input type="text" name="txt_email" required="required" id="txt_email" onblur="return validateEmailId()" onkeyup="checkExistingId()"></td><td id="info"></td>    </tr>
                                            <tr>    <td></td><td>Select Security Question</td><td>
                                                    <%
                                                            String[] squest={"What is your first school name?","What is your pet name?"};
                                                    
                                                    %>
                                                    
                                                    
                                                    <select name="cmb_quest">
                                                        <option value="" selected>-select-</option>
                                                        <%
                                                        
                                                                for(String _quest:squest)
                                                                    {
                                                          %>
                                                        
                                                          <option value="<%=_quest%>"><%=_quest%></option>
                                                        
                                                        <%
                                                                    
                                                                    
                                                                    }
                                                        
                                                        %>
                                                    </select>
                                                    
                                                    
                                                    
                                                    
                                                </td><td>
                                                    
                                                    
                                                </td>    </tr>
                                            <tr>    <td></td><td>Enter Answer</td><td><input type="text" name="txt_ans" required="required"></td><td></td>    </tr>
                                            <tr>    <td></td><td>Enter Password</td><td><input type="password" name="txt_pass" required="required" id="pass"></td><td></td>    </tr>
                                            
                                            <tr>    <td></td><td>Confirm Password</td><td><input type="password" name="txt_pass1" id="repass" onblur="validatePassword()"></td><td></td>    </tr>
                                            <tr><td colspan="4" align='center'><input type="submit" value="submit"></td></tr>
                            
                            
                                             
                            
                            
                            
                            
                            
                        </table>
                        
                        
                        
                        
                    </form>
                    
                </div>
                    
                    
                    
                </td></tr>
            
        </table>
    </body>
</html>

