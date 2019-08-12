/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package package1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ganidu
 */
public class spLog extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        davo db=new davo();
        
        String uname=request.getParameter("uname");
        String passWord=request.getParameter("password");
        
        
        try {
            if(db.checkSpLoging(uname, passWord)){
                response.sendRedirect("spHome.jsp");
                HttpSession sess=request.getSession();
                sess.setAttribute("uname", uname);
                
            }
            else if(db.checkCusLoging(uname, passWord)){
                response.sendRedirect("home.jsp");
                HttpSession sess=request.getSession();
                sess.setAttribute("uname", uname);
            }
            else
                response.sendRedirect("spLoging.jsp");
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(spLog.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(spLog.class.getName()).log(Level.SEVERE, null, ex);
        }
        
       
        
        
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
