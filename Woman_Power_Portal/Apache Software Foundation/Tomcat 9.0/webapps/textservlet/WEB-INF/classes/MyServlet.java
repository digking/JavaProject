import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
 

public class MyServlet extends HttpServlet
{
public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
        {
                     PrintWriter out=response.getWriter();
           try{ 
                out.println("hello servlet");
              } 
                 catch(Exception e)
                   {
                     out.println(e);
                      }  
             }
}