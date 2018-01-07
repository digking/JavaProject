
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
               
            String _category="Latest Release";
            Connection cn=(Connection)application.getAttribute("CONN");
            
            PreparedStatement ps_product=cn.prepareStatement("select * from products where product_category=?");
            ps_product.setString(1, _category);
           
            ResultSet rs_product=ps_product.executeQuery();
        
        %>
       
        <table cellpadding="10" cellspacing="0" border="0" width="100%">
            <tr><td colspan="2" align="center"><%@include file="banner.jsp"%></td></tr>
            <tr><td colspan="2" align="center"><%@include file="horizontal_menu.jsp"%></td></tr>
            <tr><td colspan="2" align="center">
                   
                  /*
                  
                  About Us!
                  
                  
                  */
                    
                    
                    
                    
                </td></tr>
            
        </table>
    </body>
</html>

