
package com.mycompany.foodi.servlet;

import com.mycompany.foodi.helper.FactoryProvider;
import com.mysql.cj.jdbc.Blob;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class RegisterServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
                
               String userId= request.getParameter("user_id");
               String userName= request.getParameter("user_name");
                  String userEmail= request.getParameter("user_email");
                  String userPassword= request.getParameter("user_password");
                  String userPhone= request.getParameter("user_phone");
                  String userPic=  request.getParameter("image");
                  String userAddress= request.getParameter("user_address");
                  String userType= request.getParameter("user_type");
                  
                  if(userName.isEmpty()){
                      out.println("Name is blank");
                      return;
                  }
                   try{
                  Thread.sleep(2000);
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mycart","root","shripad@123");
                  
                  System.out.println("name:"+userName);
                  final String q="insert into user(userId,userName,userEmail,userPassword,userPhone,userPic,userAddress,userType) values(?,?,?,?,?,?,?,?)";
                  PreparedStatement pstmt=con.prepareStatement(q);
                  pstmt.setString(1, userId);
                  pstmt.setString(2, userName);
                  pstmt.setString(3, userEmail);
                  pstmt.setString(4,userPassword);
                  pstmt.setString(5,userPhone);
//                   FileInputStream fis = new FileInputStream("userPic");
//                    pstmt.setBinaryStream(4, fis, fis.available());
                   pstmt.setString(6, userPic);
                  pstmt.setString(7,userAddress);
                  pstmt.setString(8,userType);
//                  pstmt.setString(3,filename);
                  HttpSession httpSession=request.getSession();
                  httpSession.setAttribute("message", "Registration Successfull !!");
                  response.sendRedirect("index.jsp");
                 
                   

                  
                  pstmt.executeUpdate();
                  //
                  
                  out.println("done");
                 
              }catch( Exception e){
                e.printStackTrace();
                  out.println("ERROR");
              }
              
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    boolean equals(String user_type, String normal) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
