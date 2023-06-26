package com.mycompany.foodi.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import static javax.management.Query.value;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class controllerBLOB extends HttpServlet {

    @RequestMapping(value = "/addBlob", method = RequestMethod.GET)
    public String Loadinsgpage() {
        return "addBlob.jsp";
    }

    @RequestMapping(value = "/displayblob", method = RequestMethod.GET)
    public String Loadinsgspage() {
        return "displayblob.jsp";
    }

    @RequestMapping(value = "/BLOB-redirect", method = RequestMethod.POST)
    public String BOLB(@RequestParam("s") CommonsMultipartFile file) {
       
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mycart", "root", "shripad@123");
            PreparedStatement psmt = con.prepareStatement("insert into images (data) values(?)");

            InputStream inp = null;
            if (file != null) {
                inp = file.getInputStream();
            }
            if (inp != null) {
                psmt.setBlob(1, inp);
            }
            int row = psmt.executeUpdate();
            if (row > 0) {
                return "BLOB.jsp";
            }

        } catch (SQLException | ClassNotFoundException | IOException ex) {
            throw new RuntimeException(ex);
        }

        return "Home_page.jsp";
    }

}
