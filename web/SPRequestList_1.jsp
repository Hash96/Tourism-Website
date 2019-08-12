<%-- 
    Document   : SPRequestList
    Created on : Dec 11, 2018, 12:27:43 AM
    Author     : Ganidu
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">
    <style>
        .single-blog-post2 {
         background-color: #eef3f6;
        padding: 10px;
        width: 300px;
        height: 220px;
        margin-left: 15px;}
  .single-blog-post2 .post-title {
    font-size: 18px;
    display: block;
    font-weight: 500;
    margin-bottom: 0;
  margin-top: 10px;}
    .single-blog-post2 .post-title:hover, .single-blog-post .post-title:focus {
      color: #e2bd17; }
  .single-blog-post .post-meta {
    margin-bottom: 30px; }
    .single-blog-post2 .post-meta p {
      font-size: 12px;
      color: #e2bd17;
      margin-bottom: 0; }
      .single-blog-post2 .post-meta p a {
        font-size: 12px;
        color: #e2bd17;
        font-weight: 500; }
     

    </style>
    

</head>

<body>
    <%@include file="spHeader.jsp" %>

    <!-- ##### Top Popular Courses Area Start ##### -->
    <div class="top-popular-courses-area mt-50 section-padding-100-70">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center mx-auto wow fadeInUp" data-wow-delay="300ms">
                        <span>Our</span>
                        <h3>Services</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                                <div class="single-blog-post2 mb-50 wow fadeInUp" data-wow-delay="300ms">
                                    <!-- Post Thumb -->
                                    <div class="blog-post-thumb mb-50">
                                        <img src="img/blog-img/1.jpg" alt="">
                                    </div>
                                    <!-- Post Title -->
                                    <a href="#" class="post-title">Top ten courses we love for you to try</a>
                                    
                                </div>
                
                
                                <div class="single-blog-post2 mb-50 wow fadeInUp" data-wow-delay="300ms">
                                    <!-- Post Thumb -->
                                    <div class="blog-post-thumb mb-50">
                                        <img src="img/blog-img/1.jpg" alt="">
                                    </div>
                                    <!-- Post Title -->
                                    <a href="#" class="post-title">Top ten courses we love for you to try</a>
                                    <a href="#" class="btn academy-btn btn-sm mt-15">Read More</a>
                                </div>
              
                                <div class="single-blog-post2 mb-50 wow fadeInUp" data-wow-delay="300ms">
                                    <!-- Post Thumb -->
                                    <div class="blog-post-thumb mb-50">
                                        <img src="img/blog-img/1.jpg" alt="">
                                    </div>
                                    <!-- Post Title -->
                                    <a href="#" class="post-title">Top ten courses we love for you to try</a>
                                    <a href="#" class="btn academy-btn btn-sm mt-15">Read More</a>
                                </div>
                            </div>
            
                
                
            </div>
            </div>
    
    <!-- ##### Top Popular Courses Area End ##### -->


    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>

</html>