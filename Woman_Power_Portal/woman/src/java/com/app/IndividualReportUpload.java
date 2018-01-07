/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.app;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
/**
 *
 * @author RK Pandey
 */
@MultipartConfig(maxFileSize =  10000000L)
public class IndividualReportUpload extends HttpServlet 
{
    Connection cn;
    public void init(ServletConfig sc) throws ServletException
        {
                super.init(sc);
                cn=(Connection)sc.getServletContext().getAttribute("CONN");
                
                
        }
    
    
    public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
        {
                try
                    {
                        
                        String _name=req.getParameter("txt_name");
                        String _proof=req.getParameter("cmb_idproof");
                        String _id=req.getParameter("txt_id");
                        String _complain=req.getParameter("ta_complain");
                        
                        Part _image_in_part=req.getPart("file_upload");
                        
                         InputStream _ins=_image_in_part.getInputStream();
                         
                         
                        PreparedStatement ps=cn.prepareStatement("insert into complain(category,ID_type,id_number,complain_text,evidence_image,name) values(?,?,?,?,?,?)");
                        ps.setString(1,"Individual");
                        ps.setString(2,_proof);
                        ps.setString(3, _id);
                        ps.setString(4, _complain);
                        ps.setBlob(5, _ins);
                        ps.setString(6,_name);
                        
                        RequestDispatcher rd=req.getRequestDispatcher("/UpperUser.jsp");
                        rd.include(req, res);
                        
                        int a=ps.executeUpdate();
                        
                        if(a>0)
                            {
                                    PrintWriter out=res.getWriter();
                                    res.setContentType("text/html");
                                    
                                    
                                    
                                    out.println("<hr>");
                                    out.println("<h2 align=center><font color=red>Complain Registered!</font></h2>");
                                    PreparedStatement ps_one=cn.prepareStatement("select max(complain_id) from complain");
                                    ResultSet rs_one=ps_one.executeQuery();
                                    rs_one.next();
                                    
                                    out.println("<div align=center><font color=blue size=5>YOUR COMPLAIN ID IS</font>:::<font color=red size=5>"+rs_one.getString(1)+"</font>");
                                    
                                    rs_one.close();
                                    ps_one.close();
                                    
                                    out.println("<hr>");
                            
                            }
                       
                        
                        
                    
                    }
                catch(Exception e)
                    {
                        javax.swing.JOptionPane.showMessageDialog(null,"Error is::"+e.getMessage());
                    }
        }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
