
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
        
        <%
            Connection cn=(Connection)application.getAttribute("CONN");
                int _id=Integer.parseInt(request.getParameter("cid"));
                
                PreparedStatement ps=cn.prepareStatement("select * from complain where complain_id=?");
                ps.setInt(1,_id);
                
                ResultSet rs=ps.executeQuery();
                
                rs.next();
                        
                    
        %>
     
        <table cellpadding="10" cellspacing="0" border="0" width="100%">
            <tr><td colspan="2" align="center"><%@include file="banner.jsp"%></td></tr>
            <tr><td colspan="2" align="center"><%@include file="menu.jsp"%></td></tr>
            <tr><td colspan="2" align="center">
                          
                        
                    <form method="post" action="remedyConfirm.jsp">
                    
                        <table cellpadding="10" cellspacing="0" border="0" width="90%" bgcolor="lightyellow">
                            
                            <tr bgcolor="red">    <td colspan="4" align="center"><font color="white" size="4">COMPLAIN RESPONSE FORM</font></td>    </tr>
                            <tr>    <td width="25%"></td><td><b>Complain</b></td><td><%=rs.getString(5)%></td><td width="25%"></td>    </tr>
                            <tr>    <td></td><td><b>Response</b></td><td><textarea name="ta_response" rows="20" cols="40"></textarea></td><td></td>    </tr>
                            <tr>    <td colspan="4" align='center'><input type="submit" value="Post Response"></td>  </tr>
                            <input type="hidden" name="hid_res" value="<%=_id%>">
                        </table>
                        
                        
                    </form>
                    
                   
                    
                    
                </td></tr>
            
        </table>
    </body>
</html>

