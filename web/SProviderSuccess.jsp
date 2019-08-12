<%-- 
    Document   : SProviderSuccess
    Created on : Nov 28, 2018, 11:30:39 PM
    Author     : Ganidu
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
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

    <!-- Title -->
    <title>Academy - Education Course Template</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <%@include file="header.jsp" %>
        <h1>succsess</h1>
        <%!
           Connection con=null;
           Statement st=null;
           ResultSet rs=null;
           String impath;
        %>
        <%
            try{
            String sql="SELECT *FROM impath";
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deaAss","root","");
        st=con.createStatement();
        rs=st.executeQuery(sql);
        while(rs.next()){
            impath=rs.getString("name");
        %>
        <div>
            <img src="img/SpPostPhoto/<%=impath%>" height="150" width="150">
        </div>
        
        
        <%
        
        
        
        
        }
       
            
       
      
        
            }catch(Exception e){
                
            }

        %>
        
        
        
        
        
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
