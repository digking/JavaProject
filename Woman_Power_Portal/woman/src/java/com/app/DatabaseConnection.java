/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.app;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


public class DatabaseConnection implements ServletContextListener
    {
    Connection cn;

    public void contextInitialized(ServletContextEvent sce) 
        {
                try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        cn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/womanportal","root","root");
                        sce.getServletContext().setAttribute("CONN",cn);
                    }
                catch(Exception e)
                    {
                        javax.swing.JOptionPane.showMessageDialog(null,"Error is::"+e.getMessage());
                    }
    
        }

    public void contextDestroyed(ServletContextEvent sce) 
    {
        try
                    {
                        if(!cn.isClosed())
                            {
                                cn.close();
                            }
                    
                    }
                catch(Exception e)
                    {
                        javax.swing.JOptionPane.showMessageDialog(null,"Error is::"+e.getMessage());
                    }
        
    }
    
    }
