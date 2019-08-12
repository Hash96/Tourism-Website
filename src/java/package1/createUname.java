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
public class createUname extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        davo db=new davo();
        String uName=request.getParameter("username");
        String uNameKeyword=request.getParameter("pwkey");
         HttpSession session=request.getSession();
         
         session.removeAttribute("spID");
        try {
            Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deaAss", "root","");
        Statement st=con.createStatement();
        String sql1="SELECT *FROM service WHERE userName='"+uName+"'";
        ResultSet rs=st.executeQuery(sql1);
        //int spid=(int)session.getAttribute("name");

        if(!rs.next()){
        out.println("yes");

        String sql="update service set userName=? , password=? ,value=1 where email=?";
        PreparedStatement pst=con.prepareStatement(sql);
        pst.setString(1,uName);
        pst.setString(2,uNameKeyword);
        pst.setString(3, (String) session.getAttribute("name"));
        pst.executeUpdate();
        //session.removeAttribute("spID");
       response.sendRedirect("spList.jsp");
        
        }
        else
           response.sendRedirect("createUserName.jsp");


        } catch (ClassNotFoundException | SQLException ex) {
           Logger.getLogger(createUname.class.getName()).log(Level.SEVERE, null, ex);
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
