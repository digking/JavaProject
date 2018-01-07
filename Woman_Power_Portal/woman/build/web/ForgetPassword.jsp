

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <script type="text/javascript" lang="JavaScript" src="prog1.js"></script>
    </head>
    <body class="webback">
        <table cellpadding="10" cellspacing="0" border="0" width="100%">
            <tr><td colspan="2" align="center"><%@include file="banner.jsp" %></td></tr>
             <tr><td colspan="2" align="center"><%@include file="horizontal_menu.jsp" %></td></tr>
            <tr><td colspan="2" align="center"><%@include file="menu.jsp"%></td></tr>
            <tr><td colspan="4" align="center">
                
                
                
                
                
                
                
                   
                    <form method="post" action="getPassword.jsp">
                    <table cellpadding="10" cellspacing="0" border="0" width="90%" bgcolor="lightyellow">
                        <tr bgcolor="red">    <td colspan="4" align="center"><b>Forget Password Form</b></td>    </tr>
                        <tr>    <td width="25%"></td><td>Enter Id</td><td><input type="text" name="txt_id" id="txt1"></td><td width="25%"><a href="javascript: retriveQuestById()">Get Question</a></td>    </tr>
                        
                        <tr>    <td colspan="4" align="center" id="info"></td></tr>
                    </table>
                    </form>
                    
                    
                    
                    
                </td></tr>
            <tr><td></td><td></td></tr>
            
            
            
            
        </table>
    </body>
</html>
