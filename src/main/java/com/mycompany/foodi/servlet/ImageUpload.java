package com.mycompany.foodi.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import java.io.*;

public class ImageUpload {

    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mycart", "root", "shripad@123");
         PreparedStatement psmt = con.prepareStatement("pId,pName,pDescription,pPhoto,pPrice,pDiscount,pQuantity) values(?,?,?,?,?,?,?)");
        FileInputStream fis=new FileInputStream("add.png");
         psmt.setBinaryStream(1,fis,fis.available());
        psmt.executeUpdate();
        
        System.out.println("Image Store in database");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
