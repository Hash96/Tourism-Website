/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package package1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ganidu
 */
public class service {
    private String serviceProviderName;
    private String companyName;
    private String email;
    private String contact;
    private String siteLink;
    private String address;
    private String city;
    private String country;
    private String postalCode;

    public String getServiceProviderName() {
        return serviceProviderName;
    }

    public void setServiceProviderName(String serviceProviderName) {
        this.serviceProviderName = serviceProviderName;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getSiteLink() {
        return siteLink;
    }

    public void setSiteLink(String siteLink) {
        this.siteLink = siteLink;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    
       
    public void insert(service c) throws SQLException, ClassNotFoundException{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deaAss","root","");
       String sql="INSERT INTO service VALUES (null,?,?,?,?,?,?,?,?,?,0)";
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
    
    
    public ArrayList<service>serviceList()
    {
        
        
        return null;
        
    }
    
    
    
     
    
}
