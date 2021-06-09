<%-- 
    Document   : mycart
    Created on : 10 Mar, 2021, 3:08:03 PM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="myPackage.DbClass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="myPackage.DbClass" scope="page"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
	<meta http-equiv="X-UA-compatible" content = "IE-edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel ="stylesheet" type ="text/css" href="bootstrap.min.css">
        <link href='https://fonts.googleapis.com/css?family=Caveat Brush' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Croissant One' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet'>
        <script src="jquery-3.3.1.min"></script>
        <script src="bootstrap.min.js"></script>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CeleBAKEation</title>
    </head>
    <body>
        <%
            String loginConfirm=session.getAttribute("userStatus").toString();
            if(loginConfirm.equals("1")){
                String email = session.getAttribute("emailId").toString();
                String id = request.getParameter("id");
                try
                {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/celebakeation?autoReconnect=true&useSSL=false","root","system");
                    String cmd = "select customer_id, name from users where email ='"+email+"'";
                    PreparedStatement pstm = con.prepareStatement(cmd);
                    ResultSet rs=pstm.executeQuery();
                    while(rs.next()){
                        String cid = rs.getString("customer_id");
                        String cname = rs.getString("name");
                        String sql = "select name from products where Pid ='"+id+"'";
                        PreparedStatement pstt = con.prepareStatement(sql);
                        ResultSet rs1=pstt.executeQuery();
                        while(rs1.next()){
                            String pname = rs1.getString("name");
                            String sql1="insert into bookings(customer_ID, customer_NAME, prod_ID, prod_Name, quantity, status) values(?,?,?,?,?,?)";
                            PreparedStatement pst=con.prepareStatement(sql1);
                            pst.setInt(1,Integer.parseInt(cid));
                            pst.setString(2,cname);
                            pst.setInt(3,Integer.parseInt(id));
                            pst.setString(4,pname);
                            pst.setInt(5,1);
                            pst.setString(6,"Booked");
                            pst.executeUpdate();
                        }
                    }
                    response.sendRedirect("mycart1.jsp");
                }
                catch(Exception e)
                {
                    System.out.println(e); 
                }
            }else if(!loginConfirm.equals("1")){
                   String id = request.getParameter("id");
                try
                {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/celebakeation?autoReconnect=true&useSSL=false","root","system");
                    String sql = "select name from products where Pid ='"+id+"'";
                    PreparedStatement pstt = con.prepareStatement(sql);
                    ResultSet rs1=pstt.executeQuery();
                    while(rs1.next()){
                        String pname = rs1.getString("name");
                        String sql1="insert into bookings(customer_ID,customer_NAME, prod_ID, prod_Name, quantity, status) values(?,?,?,?,?,?)";
                        PreparedStatement pst=con.prepareStatement(sql1);
                        pst.setInt(1,100);
                        pst.setString(2,"null");
                        pst.setInt(3,Integer.parseInt(id));
                        pst.setString(4,pname);
                        pst.setInt(5,1);
                        pst.setString(6,"booked");
                        pst.executeUpdate();
                    }
                    response.sendRedirect("mycart1.jsp");
                }
                catch(Exception e)
                {
                    System.out.println(e); 
                }
            }  
        %>
    </body>
</html>
