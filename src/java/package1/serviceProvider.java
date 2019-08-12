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
public class serviceProvider extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        service c1=new service();
        PrintWriter out=response.getWriter();
        c1.setServiceProviderName(request.getParameter("ownerName"));
        c1.setCompanyName(request.getParameter("companyName"));
        c1.setEmail(request.getParameter("email"));
        c1.setContact(request.getParameter("cantact"));
        c1.setCountry(request.getParameter("country"));
        c1.setAddress(request.getParameter("address"));
        c1.setCity(request.getParameter("city"));
        c1.setPostalCode(request.getParameter("postalCode"));
        c1.setSiteLink(request.getParameter("siteLink"));
        
        String[] item=request.getParameterValues("service");
        HttpSession st=request.getSession();
        st.setAttribute("item",item);
        
      
        davo db=new davo();
        try {
            Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deaAss","root","");


        if( db.checkDupEmail(c1.getEmail())){
            db.insertSPS(c1);
            String sql="INSERT INTO services values (?,?)";
            for(int x=0;x<item.length;x++){
            PreparedStatement pst=con.prepareStatement(sql);
            pst.setString(1,c1.getEmail());
            pst.setString(2 ,item[x]);
            pst.executeUpdate();
            out.println(item[x]);
            }
            response.sendRedirect("reqSuc.jsp");
        }else
            
            response.sendRedirect("serviceProvider.jsp");
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(serviceProvider.class.getName()).log(Level.SEVERE, null, ex);
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
