
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
                
                
                PreparedStatement ps=cn.prepareStatement("select * from complain where complain_status = ?");
                ps.setString(1,"Pending");
                
                
                ResultSet rs=ps.executeQuery();
                
                        
        
        %>
        <table cellpadding="10" cellspacing="0" border="0" width="100%">
            <tr><td colspan="2" align="center"><%@include file="banner.jsp"%></td></tr>
            <tr><td colspan="2" align="center"><%@include file="menu.jsp"%></td></tr>
            <tr><td colspan="2" align="center">
                          
                    <form method="post" action="reemedyconfirm.jsp">
                        <table cellpadding="10" cellspacing="0" border="0" width="100%" bgcolor="lightyellow">
                            <tr bgcolor="red">    <td colspan="4" align="center"><font color="white" size="4">COMPLAIN HANDLING</font></td></tr>
                            <% 
                                    while(rs.next())
                                        {
                                            
                                            
                               %>
                            
                            <tr>    <td width="15%"></td><td><b>Complain Category</b></td><td><%=rs.getString(2)%></td><td width="15%"></td>    </tr>
                            
                            <tr>    <td></td><td><b>ID Proof</b></td><td><%=rs.getString(3)%></td><td ></td>    </tr>
                            <tr>    <td></td><td><b>ID Number</b></td><td><%=rs.getString(4)%></td><td ></td>    </tr>
                            <tr>    <td ></td><td><b>Complain Text</b></td><td><%=rs.getString(5)%></td><td ></td>    </tr>
                            <tr>    <td></td><td><b>Evidence Image</b></td><td><a href="showEvidence.jsp?cid=<%=rs.getString(1)%>">CLICK HERE FOR EVIDENCE!</a></td><td ></td>    </tr>
                            <tr bgcolor="lightgray">    <td colspan="4" align="center"><a href="remedyRes.jsp?cid=<%=rs.getString(1)%>">CLICK HERE TO EXPLAIN ACTION AGAINST COMPLAIN!</a></td></tr>
                                    
                            <%
                                        
                                        }
                            
                            
                            %>
                            
                            
                        </table>
                        
                        
                    </form>
                    
                    
                </td></tr>
            
        </table>
    </body>
</html>

