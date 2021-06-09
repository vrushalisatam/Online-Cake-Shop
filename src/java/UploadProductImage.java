/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Admin
 */
@WebServlet(urlPatterns = {"/UploadProductImage"})
@MultipartConfig(maxFileSize=16177216)//1.5mb

public class UploadProductImage extends HttpServlet {
    Connection con;
    Statement stmt;
    PrintWriter out;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        int result = 0;
        Part part = request.getPart("file");
        if(part!=null)
        {
           try
           {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con= DriverManager.getConnection("jdbc:mysql://localhost:3306/celebakeation?autoReconnect=true&useSSL=false","root","system");
                String name=(String)request.getParameter("name");
                String category=(String)request.getParameter("category");
                String price=(String)request.getParameter("price");
                String description=(String)request.getParameter("description");
                PreparedStatement ps = con.prepareStatement("INSERT into products(name,image,category,price,description) values(?,?,?,?,?)");
		InputStream is = part.getInputStream();
		ps.setString(1, name);
                ps.setBlob(2, is);
                ps.setString(3, category);
                ps.setString(4, price);
                ps.setString(5, description);
		result = ps.executeUpdate();           
                if(result>0)
                {
                    response.sendRedirect("adm-page.jsp?pgprt=1");
                }
            }
           catch(IOException | ClassNotFoundException | SQLException e)
           {
               System.out.println(e);
           }
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    } // </editor-fold>

}
