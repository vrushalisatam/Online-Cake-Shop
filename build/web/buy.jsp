<%-- 
    Document   : buy
    Created on : 23 Mar, 2021, 7:48:55 PM
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
    <meta charset="UTF-8">
	<meta http-equiv="X-UA-compatible" content = "IE-edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel ="stylesheet" type ="text/css" href="bootstrap.min.css">
        <script src="jquery-3.3.1.min.js"></script>
        <script type = text/javascript src="bootstrap.min.js"></script>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
        <title>CeleBAKEation</title>
    </head>
    <body>
        <%
            String loginConfirm=session.getAttribute("userStatus").toString();
            if(loginConfirm.equals("1")){
                String email = session.getAttribute("emailId").toString();
                String id = session.getAttribute("id").toString();
                try
                {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/celebakeation?autoReconnect=true&useSSL=false","root","system");
                    String cmd = "select customer_id, name from users where email ='"+email+"'";
                    PreparedStatement pstm = con.prepareStatement(cmd);
                    ResultSet rs=pstm.executeQuery();
                    while(rs.next()){
                        int cid = rs.getInt("customer_id");
                        String cname = rs.getString("name");
                        String sql = "select name from products where Pid ='"+id+"'";
                        PreparedStatement pstt = con.prepareStatement(sql);
                        ResultSet rs1=pstt.executeQuery();
                        while(rs1.next()){
                            String pname = rs1.getString("name");
                            String sql1="insert into bookings(customer_ID, customer_NAME, prod_ID, prod_Name, quantity, status) values(?,?,?,?,?,?)";
                            PreparedStatement pst=con.prepareStatement(sql1);
                            pst.setInt(1,cid);
                            pst.setString(2,cname);
                            pst.setInt(3,Integer.parseInt(id));
                            pst.setString(4,pname);
                            pst.setInt(5,1);
                            pst.setString(6,"Confirm");
                            pst.executeUpdate();
                        }
                    }
                    
                    response.sendRedirect("home.jsp?pgprt=1");
                    
                }
                catch(Exception e)
                {
                    System.out.println(e); 
                }
            }else if(!loginConfirm.equals("1")){
                   response.sendRedirect("login1.jsp");
            }
            
        %>
    </body>
</html>

