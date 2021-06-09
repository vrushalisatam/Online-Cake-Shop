<%-- 
    Document   : mycategory
    Created on : 24 Feb, 2021, 5:43:13 PM
    Author     : Vrushali
--%>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String id = request.getParameter("id");
    try
    {
        Connection con;
        Statement stmt;
        String sql="select image from products where Pid="+id;
        Class.forName("com.mysql.cj.jdbc.Driver");
        con= DriverManager.getConnection("jdbc:mysql://localhost:3306/celebakeation?autoReconnect=true&useSSL=false","root","system");
        stmt= con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        out.clear();
        if(rs.next())
        {
            Blob blob= rs.getBlob("image");
            byte byteArray[] =  blob.getBytes(1,(int)blob.length());
            response.setContentType("image/gif");
            OutputStream os = response.getOutputStream();
            os.write(byteArray);
            os.flush();
            os.close(); 
        }
    }
    catch(Exception e)
    {
       System.out.println(e); 
    }
    %>