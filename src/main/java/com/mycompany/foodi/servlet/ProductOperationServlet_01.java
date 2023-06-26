/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.foodi.servlet;

import com.mysql.cj.jdbc.Blob;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

public class ProductOperationServlet_01 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String op = request.getParameter("operation");
        try (PrintWriter out = response.getWriter()) {
            if (op.trim().equals("addcategory")) {
                String categoryId = request.getParameter("Id");
                String title = request.getParameter("catTitle");
                String description = request.getParameter("catDescription");

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mycart","root","shripad@123");

                    final String q = "insert into category(categoryId,categoryTitle,categoryDescription) values(?,?,?)";
                    PreparedStatement psmt = con.prepareStatement(q);
                    psmt.setString(1, categoryId);
                    psmt.setString(2, title);
                    psmt.setString(3, description);

                    HttpSession httpSession = request.getSession();
                    httpSession.setAttribute("message", "Category Added Successfully !!");
                    response.sendRedirect("admin.jsp");

                    psmt.executeUpdate();
                    out.println("Done");

                } catch (Exception e) {
                    out.println("Error");
                    e.printStackTrace();

                }

            } else if (op.trim().equals("addproduct")) {
                String pId = request.getParameter("ptId");
                String pName = request.getParameter("ptName");
                String pDescription = request.getParameter("ptDescription");
                String pPhoto = request.getParameter("pPhoto");
                String pPrice = request.getParameter("ptPrice");
                String pDiscount = request.getParameter("ptDiscount");
                String pQuantity = request.getParameter("ptQuantity");
                try {
                    // pic upload

                    final String q = "insert into product(pId,pName,pDescription,pPhoto,pPrice,pDiscount,pQuantity) values(?,?,?,?,?,?,?)";
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mycart", "root", "shripad@123");
                    PreparedStatement pstmt = con.prepareStatement(q);
                    pstmt.setString(1, pId);
                    pstmt.setString(2, pName);
                    pstmt.setString(3, pDescription);
                   pstmt.setString(4, pPhoto);
                    pstmt.setString(5, pPrice);
                    pstmt.setString(6, pDiscount);
                    pstmt.setString(7, pQuantity);

                    pstmt.executeUpdate();
                    HttpSession httpSession = request.getSession();
                    httpSession.setAttribute("message", "Product Added Successfully !!");
                    response.sendRedirect("admin.jsp");

                    pstmt.executeUpdate();

                    out.println("Done");
                } catch (Exception e) {
                    out.println("Error");
                    e.printStackTrace();
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
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

}
