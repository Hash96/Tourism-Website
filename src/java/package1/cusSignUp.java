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
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ganidu
 */
public class cusSignUp extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        customers cus=new customers();
        cus.setFirstName(request.getParameter("fName"));
        cus.setSecondName(request.getParameter("sName"));
        cus.setEmail(request.getParameter("email"));
        cus.setSex(request.getParameter("sex"));
        cus.setuName(request.getParameter("uname"));
        cus.setPassword(request.getParameter("password"));
        davo db=new davo();
        
        try {
            if(db.checkDupEmail(cus.getEmail())){
                db.insertCus(cus);
                response.sendRedirect("spLoging.jsp");

            }else{
                response.sendRedirect("cusSignUp.jsp");
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(cusSignUp.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
