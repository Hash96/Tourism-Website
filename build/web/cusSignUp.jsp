<%-- 
    Document   : clientSignUp
    Created on : Nov 26, 2018, 10:23:20 PM
    Author     : Ganidu
--%>

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
    </head>
    <body>
        <div>
        <%@include file="cusHeader.jsp" %>
        
        </div>
        
    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img" style="background-image: url(img/bg-img/breadcumb.jpg);">
        <div class="bradcumbContent">
            <h2>Be a Service Provider</h2>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->
    <br><br><br><br><br><br><br><br><br><br><br><br><br>


        
            <!-- ##### Become a Service provider ##### -->
 <section class="contact-area">
        <div class="container"><center>
             <div class="contact-content">
                            <!-- Contact Form Area -->
                            <div class="col-12 col-lg-7">
                                <div class="section-heading text-left">
                                        <span>Customer</span>
                                        <h3>Sign up</h3>
                                </div>
                                <div class="contact-form-area wow fadeInUp" data-wow-delay="500ms">
                                    
                                    <form action="cusSignUp" method="post">
                                        <input type="text" name="fName" class="form-control" placeholder="First Name">
                                        <input type="text" name="sName" class="form-control" placeholder="Second Name">
                                        <input type="text" name="email" class="form-control" placeholder="Email">
                                        <input type="radio" name="sex" value="male"  placeholder="User Name"> Male &nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="radio" name="sex" value="female"  placeholder="User Name"> Female
                                        <input type="text" name="uname" class="form-control" placeholder="User Name">
                                        <input type="password" name="password" class="form-control" placeholder="Password">
                                        <input type="password" name="rePassword" class="form-control" placeholder=" re-enter Password">
                                        
                                       <input type="submit" value="Submit" class="btn academy-btn mt-30">
   
                                    </form>
                                    
                                </div>
                            </div>
                            </div>
                   </center>
                </div>
    </section>
    <!-- ##### Contact Area End ##### -->
        
        
  
            
            
            
                <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->.  
    <script src="js/validation.js"></script>

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
