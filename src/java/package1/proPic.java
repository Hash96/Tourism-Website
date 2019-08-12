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
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Ganidu
 */
public class proPic extends HttpServlet {
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out=response.getWriter();
       
        File file;
        int maxSize=5000*60;
        int maxFactSize=5000*60;
        String path = "C:/Users/Ganidu/Documents/NetBeansProjects/DeaAssignment/web/img/spProPic";
        String str = null;
       
        String type=request.getContentType();
        out.println(type);
        if(type.indexOf("multipart/form-data")>=0){

                out.println("it is a multipart data");
                DiskFileItemFactory disFact=new DiskFileItemFactory();
                disFact.setSizeThreshold(maxFactSize);
                disFact.setRepository(new File("C:\\temp"));
                ServletFileUpload upload=new ServletFileUpload(disFact);
                upload.setSizeMax(maxSize);
                List lis = null;
            try {
                lis = upload.parseRequest(request);
            } catch (FileUploadException ex) {
                Logger.getLogger(spPost.class.getName()).log(Level.SEVERE, null, ex);
            }
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
                       String src=path+"/"+str;
                      HttpSession sess=request.getSession();
                      sess.setAttribute("proPic",src);
                       out.println(src);
                      response.sendRedirect("serviceProvider.jsp");
                        try {
                            item.write(file);
                        } catch (Exception ex) {
                            Logger.getLogger(spPost.class.getName()).log(Level.SEVERE, null, ex);
                        }
                       out.println("uploaded...........");
                    }
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
