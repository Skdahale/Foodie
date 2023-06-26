
package com.mycompany.foodi.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class loginServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
          try{
              RegisterServlet user=null;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mycart","root","shripad@123");
             
             String email=request.getParameter("Uname");
             String password= request.getParameter("Pass");
//             String usertype=request.getParameter("user_type");
             HttpSession session=request.getSession();
             RequestDispatcher dispatcher=null;
             
             PreparedStatement pst=con.prepareStatement("select * from user where userEmail= ? and userPassword=?");
             pst.setString(1, email);
             pst.setString(2, password);
//             pst.setString(3, usertype);
           
            
             
             ResultSet rs=pst.executeQuery();
             
//             user.equals("user_type","normal")
               if(rs.next()){
                  out.println("Done");
              session.setAttribute("user_name",rs.getString("userName"));
                 dispatcher= request.getRequestDispatcher("Home_page.jsp");
//             if(usertype=="admin"){
//               
//               return "admin.jsp";
//             }
              
             } 
//             else if(user.equals("user_type","admin")){
//                 session.setAttribute("user_name",rs.getString("userName"));
//               dispatcher= request.getRequestDispatcher("admin.jsp");
//             }
//             
             else {
                 request.setAttribute("status","error");
                dispatcher= request.getRequestDispatcher("login.jsp");
             }
             dispatcher.forward(request, response);
             
             
          }catch(Exception e){
              e.printStackTrace();
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

//    private void elif(boolean equals) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
//    }

}
