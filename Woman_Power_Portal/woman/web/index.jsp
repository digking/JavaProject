<%@page import="java.util.Vector"%>
<%

           Vector<String> cart=new Vector<String>();
           session.setAttribute("MyCart",cart);
           

%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <script type="text/javascript">
            history.pushState(null,null,'index.jsp');
            window.addEventListener('popstate',function(event)
                                                    {
                                                        
                                                        history.pushState(null,null,'index.jsp');
                                                    }        
            
            );
            
            
        </script>
    </head>
    <body bgcolor="#ffb870">
        <table cellpadding="10" cellspacing="0" border="0" width="100%" bgcolor="#ffb870">
            <tr bgcolor="#ffb870"><td colspan="2" align="center" bgcolor=""><%@include file="banner.jsp"%></td></tr>
             <tr><td colspan="2" align="center"><%@include file="horizontal_menu.jsp" %></td></tr>
            <tr bgcolor="#66340a"><td colspan="2" align="center"><%@include file="menu.jsp"%></td></tr>
            <tr bgcolor="#ffb870"><td width="60%" align="center"><%@include file="slidingimages.jsp"  %> </td><td width="25%" align="center">
                    <form method="post" action="validateLogin.jsp">
                    <table cellpadding="10" cellspacing="0" border="0" width="25%">
                        
                        <tr bgcolor="red">    <td colspan="4" align="center"><font color="white"><b>Login Here..</b></font></td>    </tr>
                        <tr>    <td width="25%"></td><td>Enter Id</td><td><input type="text" name="txt_id" required="required"></td><td width="25%"></td>    </tr>
                        <tr>    <td></td><td>Password</td><td><input type="password" name="txt_pass" required="required"></td><td></td>    </tr>
                        <tr>    <td colspan="4" align="center"><input type="submit" value="Login">/<a href="UserSignup.jsp">User Sign Up!</a></td>    </tr>
                         <tr ><td colspan="4" align="center"><hr></td></tr>
                        <tr>    <td colspan="4" align="center"><a href="ForgetPassword.jsp">Forgot Password!</a></td>    </tr>
                         <tr ><td colspan="4" align="center"><hr></td></tr>
                       
                        
                    </table>
                    </form>
                    
                    
                    
                </td></tr>
            <tr>    <td></td><td></td>  </tr>
        </table>
    </body>
</html>
