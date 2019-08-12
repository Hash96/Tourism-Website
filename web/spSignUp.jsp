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
    <section class="contact-area" id="sp">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="contact-content">
                        <div class="row">
                            <!-- Contact Information -->
                            <div class="col-12 col-lg-5">
                                <div class="contact-information wow fadeInUp" data-wow-delay="400ms">
                                    <div class="section-heading text-left">
                                        <span>The Best</span>
                                        <h3>Contact Us</h3>
                                        <p class="mt-30">Lacinia, lacinia la cus non, fermen tum nisi. Donec et sollicitudin. Morbi vel arcu gravida, iaculis lacus vel, posuere ipsum. Sed faucibus mauris vitae urna consectetur, sit amet maximus nisl sagittis. Ut in iaculis enim, et pulvinar mauris.</p>
                                    </div>

                                    <!-- Contact Social Info -->
                                    <div class="contact-social-info d-flex mb-30">
                                        <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                        <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                        <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                                        <a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a>
                                        <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                    </div>

                                    <!-- Single Contact Info -->
                                    <div class="single-contact-info d-flex">
                                        <div class="contact-icon mr-15">
                                            <i class="icon-placeholder"></i>
                                        </div>
                                        <p>4127/ 5B-C Mislane Road,<br> Gibraltar, UK</p>
                                    </div>

                                    <!-- Single Contact Info -->
                                    <div class="single-contact-info d-flex">
                                        <div class="contact-icon mr-15">
                                            <i class="icon-telephone-1"></i>
                                        </div>
                                        <p>Main: 203-808-8613 <br> Office: 203-808-8648</p>
                                    </div>

                                    <!-- Single Contact Info -->
                                    <div class="single-contact-info d-flex">
                                        <div class="contact-icon mr-15">
                                            <i class="icon-contract"></i>
                                        </div>
                                        <p>office@yourbusiness.com</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Contact Form Area -->
                            <div class="col-12 col-lg-7">
                            <div class="contact-form-area wow fadeInUp" data-wow-delay="500ms">
                                <form action="serviceProvider" method="post" name="spRegForm" onSubmit="return validation();" >

                <input type="text" name="ownerName" class="form-control"  placeholder="Owner Name" id="OwnerName">
                <input type="text" name="companyName" class="form-control"  placeholder="Company Name" >
                
                Type of service<br><br>
                Photographers <input type="checkbox" name="service" value="Photographers" >
                Beauticians <input type="checkbox" name="service" value="Beauticians" >
                Hotel Owners <input type="checkbox" name="service" value="Owners" >
                Jewelers <input type="checkbox" name="service" value="Jewelers" >
                Decoration <input type="checkbox" name="service" value="Decoration" >
                
                
                <input type="text" name="email" class="form-control" placeholder="Email">
                <input type="text" name="cantact" class="form-control" placeholder="Telephone Number">
                <input type="text" name="siteLink" class="form-control" placeholder="Your Website">
                <input type="text" name="country" class="form-control" placeholder="Country">
                <input type="text" name="address" class="form-control" placeholder="Address">
                <input type="text" name="city" class="form-control" placeholder="City">
                <input type="text" name="postalCode" class="form-control" placeholder="Postal Code">
                <input type="submit" value="SUBMIT" class="btn academy-btn mt-30" >
                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
