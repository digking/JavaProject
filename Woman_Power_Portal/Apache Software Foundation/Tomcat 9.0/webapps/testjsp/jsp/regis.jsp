<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<form>
<%! int i; %>
<%if(request.getParameter("t1")!=null){%>
<% Connection c;
   Statement s;
   String s1,s2,s3,s4,s5;
   try
   { 
   Class.forName("oracle.jdbc.driver.OracleDriver");
   c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","gaurav");
   s=c.createStatement();
   s1=request.getParameter("t1");
   s2=request.getParameter("t2");
   s3=request.getParameter("t3");
   
   s4=request.getParameter("t4")+"/"+request.getParameter("t5")+"/"+request.getParameter("t6");
   
   i=s.executeUpdate("insert into regis values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','hello','hello','hello')");
   }catch(Exception e)
   {
   out.println(e);
   }
   if(i>0)
   {
    out.write("regisrsdkf");
	}
	else
	{
	  out.write("not regis");
	  }
   
   }%>
<table border="2" align="center" >
<tr><td>employee name</td><td><input type="text" name="t1" /></td></tr>
<tr><td>contact number</td><td><input type="text" name="t2" /></td></tr>
<tr><td>address</td><td><textarea cols="50" rows="10" name="t3"></textarea></td></tr>
<tr><td>date of birth</td>
  <td><select name="t4">
    <% for(int i=1;i<30;i++)
{%>
    <option>
    <%out.println(i);%>
    </option>
    <%}%></select>
    <select name="t5">
    <% for(int i=1;i<12;i++)
{%>
    <option>
    <%out.println(i);%>
    </option>
    <%}%></select>
    <select name="t6">
    <% for(int i=1980;i<2050;i++)
{%>
    <option>
    <%out.println(i);%>
    </option>
    <%}%>
  </select></td>
</tr>
<tr><td><input type="submit" value="submit" /></td></tr>
</table>
</form>


</body>
</html>
