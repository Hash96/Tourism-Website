<%-- 
    Document   : spList
    Created on : Dec 5, 2018, 10:59:16 PM
    Author     : Ganidu
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #nn{
                display: none;
                position: absolute;
            }
        </style>
        <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">
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
                        <h3>Jewellery Providers</h3>
                    </div>
                </div>
            </div>
            <div class="row">

                <%try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deaass", "root", "");
            Statement st=con.createStatement();
            Statement st2=con.createStatement();
            String sql="SELECT C.*, S.service FROM service C LEFT JOIN services S ON C.email = S.email where S.service='Jewelers' and c.value=1";
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()) {%>
            
                
                
                <!-- Single Top Popular Course -->
                <div class="col-12 col-lg-6">
                    <div class="single-top-popular-course d-flex align-items-center flex-wrap mb-30 wow fadeInUp" data-wow-delay="900ms">
                                                    

                        <div class="popular-course-content">
                             <h5><%= rs.getString(2)%></h5>
                            <span><%= rs.getString(1)%></span>
                            
                            <p><%= rs.getString(3)%><br>
                                <%= rs.getString(4)%><br> 
                                <%= rs.getString(6)%>,
                                <%= rs.getString(7)%>,<br>
                                <%= rs.getString(5)%>.<br>
                                Postal Code:<%= rs.getString(8)%><br>
                            <a href=<%= rs.getString(9)%>>Site Link</a></p>
                <form action="createUserName.jsp" method="post" width="50%" name="email">
                <input type="text" value="<%=rs.getString(3)%>" id="nn">
                <input type="Submit" value="Comferm" ></form>
                
                        </div>
                        <div class="popular-course-thumb bg-img" style="background-image: url(img/bg-img/pc-6.jpg);"></div>
                    </div>
                </div>
            <%}
}catch(Exception e){}%>
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
