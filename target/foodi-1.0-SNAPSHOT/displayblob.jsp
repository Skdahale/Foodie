<%-- 
    Document   : displayblob
    Created on : May 23, 2023, 2:27:02 AM
    Author     : 91860
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.util.Base64" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%int cnt = 0;%>

<!DOCTYPE html>

<html>
    <head>
        
        <style>
        </style>
           
    </head>

    <body>

        <div class="container">
            <div class="row">
                <div class="col">
                    <%
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel?characterEncoding=utf8", "root", "Amey@123");

                            Statement state = con.createStatement();

                            ResultSet rst = state.executeQuery("select count(*) from images");
                            while (rst.next()) {
                                cnt = rst.getInt(1);
                            }
                        } catch (Exception k) {
                            System.out.println(k.getMessage());
                        }
                    %>
                    <h4 class="res-heading"><%=cnt%> Items</h4>
                </div>
                <hr style="width: 100%; color: grey">
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col">
                    <table>
                        <%
                            int colind = 0;
                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver");

                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mycart", "root", "Amey@123");

                                PreparedStatement stmt = con.prepareStatement("select * from images");
                                ResultSet rs = stmt.executeQuery();

                                while (rs.next()) {

                                    Blob imageBlob = rs.getBlob("data");
                                    InputStream imageStream = imageBlob.getBinaryStream();
                                    ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                                    byte[] buffer = new byte[4096];
                                    int n = 0;
                                    while (-1 != (n = imageStream.read(buffer))) {
                                        outputStream.write(buffer, 0, n);
                                    }
                                    byte[] imageBytes = outputStream.toByteArray();
                        %>
                        <td class="item-td">
                            <div class="card item-card" align="center" style="width: 14rem;">
                                <img class="card-img-top" alt="..." align="center" margin="40px" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes)%>"/>
                            </div>
                        </td>
                        <%colind++;%>
                        <% if (colind % 4 == 0) {
                        %></tr><tr>
                            <%}%>
                            <%
                                    }
                                } catch (Exception k) {
                                    System.out.println(k.getMessage());
                                }
                            %>
                    </table>
                </div>
            </div>   
        </div>
    </body>
</html>