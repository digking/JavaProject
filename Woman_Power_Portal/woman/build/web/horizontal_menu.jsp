

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <script type="text/javascript" language="JavaScript1.2" src="stm31.js"></script>
</head>
    
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td width="25%"></td>
                <td>
      
                </td>
                <td width="25%" align="center">
                    <%
                    
                        if(session.getAttribute("uid")!=null)
                        {
                    %>
                    <a href="logout.jsp">LOGOUT</a>
                    <%
                    
                    }
                    %>
                </td>
        </tr>

        </table>
<hr>
    </body>
</html>




