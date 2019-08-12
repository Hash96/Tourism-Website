/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package package1;


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Ganidu
 */
public class spPost extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
 
        File file;
        int maxSize=5000*60;
        int maxFactSize=5000*60;
        String path = "C:\\Users\\Ganidu\\Documents\\NetBeansProjects\\DeaAssignment\\web\\img\\SpPostPhoto";
        String str;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
       
        

        String type=request.getContentType();
        out.println(type);
        if(type.indexOf("multipart/form-data")>=0){

            try {
                out.println("it is a multipart data");
                DiskFileItemFactory disFact=new DiskFileItemFactory();
                disFact.setSizeThreshold(maxFactSize);
                disFact.setRepository(new File("C:\\temp"));
                ServletFileUpload upload=new ServletFileUpload(disFact);
                upload.setSizeMax(maxSize);
                List lis =upload.parseRequest(request);
                Iterator itr=lis.iterator();
                while(itr.hasNext())
                {
                    FileItem item=(FileItem)itr.next();
                    out.println(item.isFormField());
                    if(!item.isFormField()){
                        str=item.getName();
                        str="akpid3"+(str.substring(str.indexOf(".")));
                        out.print(str);
                        file=new File(path,str);
                        item.write(file);
                        out.println("uploaded...........");
                    } else {
                    }
                }
            } catch (Exception ex) {
                Logger.getLogger(spPost.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        
        

//            try{
//        String sql="insert into impath values ('"+str+"')";
//        Class.forName("com.mysql.jdbc.Driver");
//        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deaAss","root","");
//        Statement st=con.createStatement();
//        st.executeLargeUpdate(sql);
//        
//                }catch(Exception e){
//                    
//                }

        
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
