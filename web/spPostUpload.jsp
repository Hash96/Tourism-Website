<%-- 
    Document   : spPost2
    Created on : Dec 11, 2018, 7:27:29 PM
    Author     : Ganidu
--%>

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
            <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Academy - Education Course Template</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br><br><br><br><br><br><br><br><br><br>
  
     <!-- ##### Contact Area Start ##### -->
    <section class="contact-area">
        <div class="container"><center>
                <div class="contact-content">
                    <!-- Contact Form Area -->
                            <div class="col-12 col-lg-7">
                                <div class="contact-form-area wow fadeInUp" data-wow-delay="500ms">
                                    <form action="spPost2_1.jsp" method="post" enctype="multipart/form-data">
                                        <textarea name="message" class="form-control" id="message" cols="30" rows="10" placeholder="Description"></textarea>
                                        <select class="form-control">
                                            <option value="Photography">Photography</option> 
                                            <option value="Beauticians">Beauticians</option> 
                                            <option value="Decoration">Decoration</option> 
                                            <option value="Hotel Owners">Hotel Owners</option> 
                                            <option value="Jewelers">Jewelers</option> 
                                        </select>
                                        <input type="file" class="form-control" >
                                        <input type="submit" class="btn academy-btn mt-30" value="Publish">
                                    </form>
                                </div>
                            </div>
                            </div>
                        </center>
                </div>
    </section>
    <!-- ##### Contact Area End ##### -->
    </body>
    <!-- ##### Contact Area End ##### -->
</html>
