<%-- 
    Document   : header
    Created on : Nov 25, 2018, 12:15:08 AM
    Author     : Ganidu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
 <!-- ##### Preloader ##### -->
    <div id="preloader">
        <i class="circle-preloader"></i>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header">
            <div class="container h-100">
                <div class="row h-100">
                    <div class="col-12 h-100">
                        <div class="header-content h-100 d-flex align-items-center justify-content-between">
                            <div class="academy-logo">
                                <a href="spHome.jsp"><img src="img/core-img/logo.png" alt=""></a>
                            </div>
                            <% if(session.getAttribute("uname")==null){ %>
                            <div class="login-content">
                                
                             <a href="#">Register / Login</a>
                            </div>
                            <%}else{%>
                            <div class="login-content">
                                <%=session.getAttribute("uname")%>
                            </div>
                           <%}%>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Navbar Area -->
        <div class="academy-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="academyNav">

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="spHome.jsp">Home</a></li>
                                    <li><a href="spSpList.jsp">Service Providers </a>
                                      <ul class="dropdown">
                                            <li><a href="spPhotographers.jsp">Photography</a></li>
                                            <li><a href="spDecoration.jsp">Decoration</a></li>
                                            <li><a href="spJuwelers.jsp">Jewelers</a></li>
                                            <li><a href="spBeauticians.jsp">Beauticians</a></li>
                                            <li><a href="spReceptionHall.jsp">Reception Halls</a></li>
                                        </ul>  
                                    </li>
                                    <li><a href="spBlogView.jsp">Blog</a></li>
                                    <li><a href="spAboutUs.jsp">About Us</a></li>
                                   <li><a href="spFeedback.jsp">Contact </a>
                                   <li><a href="spFeedback.jsp">Contact </a>
                                        
                                    </li>
                                    
                                </ul>
                            </div>
                            <!-- Nav End -->
                        </div>

                        <!-- Calling Info -->
                        <div class="calling-info">
                            <div class="call-center">
                                <a href="tel:+654563325568889"><i class="icon-telephone-2"></i> <span>(+65) 456 332 5568 889</span></a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->
        
        
        
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
