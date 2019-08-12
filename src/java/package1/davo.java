/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package package1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Ganidu
 */
public class davo {
    
    private final String mySQLURL="jdbc:mysql://localhost3306/deaass";
    private final String userName="root";
    private final String passWord=null;
 
    
    public void connection() throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection(mySQLURL,userName,passWord);
        
    }
    
    public void insertSPS(service c) throws SQLException, ClassNotFoundException{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deaAss","root","");
       String sql="INSERT INTO service VALUES (?,?,?,?,?,?,?,?,?,0,null,null,null)";
       PreparedStatement pst=con.prepareStatement(sql);
       pst.setString(1,c.getServiceProviderName());
       pst.setString(2,c.getCompanyName());
       pst.setString(3,c.getEmail());
       pst.setString(4,c.getContact());
       pst.setString(5,c.getCountry());
       pst.setString(6,c.getAddress());
       pst.setString(7,c.getCity());
       pst.setString(8,c.getPostalCode());
       pst.setString(9,c.getSiteLink());
       pst.executeUpdate();
       
       
       
        
    }
    
    public boolean checkSpLoging(String uName,String pw) throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deaAss","root","");
        Statement st=con.createStatement();
        
        String sql="SELECT * FROM service WHERE userName='"+uName+"' AND password='"+pw+"';";
        ResultSet rs=st.executeQuery(sql);
        
        return rs.next();
        
        
        
        
    }
    
    public boolean checkCusLoging(String uName,String pw) throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deaAss","root","");
        Statement st=con.createStatement();
        
        String sql="SELECT * FROM customers WHERE user_name='"+uName+"' AND password='"+pw+"';";
        ResultSet rs=st.executeQuery(sql);
        
        return rs.next();
        
        
        
        
    }
    
    public boolean checkDupUname(String uname) throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deaAss", "root","");
        Statement st=con.createStatement();
        String sql1="SELECT *FROM service WHERE userName='"+uname+"';";
        ResultSet rs=st.executeQuery(sql1);
        if(!rs.next())
            return true;
        else
            return false;
    }
    
    public void createSp(String uName, String pw,String email ) throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deaAss","root","");
        String sql="update service set userName=? , password=? value=1 where email=?";
        PreparedStatement pst=con.prepareStatement(sql);
        pst.setString(1, uName);
        pst.setString(2, pw);
        pst.setString(3,email);
        
    }
    
    
        public boolean checkDupEmail(String email) throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deaAss", "root","");
        Statement st=con.createStatement();
        String sql1="SELECT *FROM service WHERE email='"+email+"';";
        ResultSet rs=st.executeQuery(sql1);
        return !rs.next();
    }
    
        public boolean checkCusDupEmail(String email) throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deaAss", "root","");
        Statement st=con.createStatement();
        String sql1="SELECT *FROM custmers WHERE email='"+email+"';";
        ResultSet rs=st.executeQuery(sql1);
        return !rs.next();
    }
        
      public void insertCus(customers cus) throws SQLException, ClassNotFoundException{
            Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deaAss","root","");
       String sql="INSERT INTO customers VALUES (?,?,?,?,?,?)";
       PreparedStatement pst=con.prepareStatement(sql);
       pst.setString(1,cus.getFirstName());
       pst.setString(2,cus.getSecondName());
       pst.setString(3,cus.getSex());
       pst.setString(4,cus.getEmail());
       pst.setString(5,cus.getuName());
       pst.setString(6,cus.getPassword());
       pst.executeUpdate();
       
       
       
        
    }   
   public String getEmail(String userName) throws ClassNotFoundException, SQLException{
       String email = null;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deaAss", "root","");
        Statement st=con.createStatement();
        String sql1="SELECT *FROM service WHERE email='"+userName+"';";
        ResultSet rs=st.executeQuery(sql1);
        while(rs.next()){
            email=rs.getString(3);
        }
       
        return email;  
   }
        
    
}
