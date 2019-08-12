<%-- 
    Document   : spPost2
    Created on : Dec 11, 2018, 7:27:29 PM
    Author     : Ganidu
--%>

<%@page import="package1.spPost"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
        File file;
        int maxSize=5000*6;
        int maxFactSize=5000*6;
        String path = "C:/Users/Ganidu/Documents/NetBeansProjects/DeaAssignment/web/img/SpPostPhoto";
        String str;
        %>
        
        
        <%
       String type=request.getContentType();
        out.println(type);
        if(type.indexOf("multipart/form-data")>=0){
                DiskFileItemFactory disFact=new DiskFileItemFactory();
                ServletFileUpload upload=new ServletFileUpload(disFact);
                upload.setSizeMax(maxSize);
                List lis =upload.parseRequest(request);
                Iterator itr=lis.iterator();
                while(itr.hasNext())
                {
                    FileItem item=(FileItem)itr.next();
                    if(!item.isFormField()){
                        str=item.getName();
                        str="akpid3"+(str.substring(str.indexOf(".")));
                        out.print(str);
                        file=new File(path,str);
                        item.write(file);
                        out.println("uploaded...........");
                    }
                }
           
        }
        %>

</html>
