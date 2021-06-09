<%-- 
    Document   : category
    Created on : 24 Feb, 2021, 4:20:21 PM
    Author     : Vrushali
--%>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>CeleBAKEation</title>
        <style>
                
                .navbar-brand{
                    font-family: Ink free;
                    font-size: 35px;
                }
        </style>
        
    </head>
    <body style="background-color: #8D021F">
        <%
            String loginConfirm=session.getAttribute("userStatus").toString();
                if(loginConfirm.equals("1")){
        %>
                <jsp:include page="home1.jsp"/>
        <%
                }else if (loginConfirm.equals("0")){
        %>
              <nav class="navbar navbar-expand-sm navbar-dark bg-danger pl-5 fixed-top">
        <b><a href="home.jsp" class="navbar-brand" >CeleBAKEation</a></b>   
        <b><span class="navbar-text"> Love at first bite.</span></b>
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#myMenu">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="myMenu">
            <ul class="navbar-nav pl-5 custom-nav ml-auto">
                <li class="nav-item "><a href="home.jsp" class="nav-link" style="font-family: Ink free; color: white"><b>Home</b></a></li>
                <li class="nav-item"><a href="login.jsp" class="nav-link" style="font-family: Ink free; color: white"><b>Login</b></a></li>             
            </ul>
        </div>
        </nav>
        <%
            }
        %>
        <br><br><br><br>
        <%-- JSP code starts here--%>
<%
    if(request.getParameter("category").toString().equals("b"))
    {
        try{
        Connection con;
        Statement stmt;
        String sql="select * from products where category='Bread'";
        Class.forName("com.mysql.cj.jdbc.Driver");
        con= DriverManager.getConnection("jdbc:mysql://localhost:3306/celebakeation?autoReconnect=true&useSSL=false","root","system");
        stmt= con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        while(rs.next())
        {
            
       %>
        
        <div class="media">
        <div class="media-left">
            <img src = "mycategory.jsp?id=<%=rs.getString("Pid")%>" class="media-object" style="width:200px ; height : 150px ; margin-left: 30px; margin-right:  30px">
        </div>
        <div class="media-body">
            <h4 class="media-heading" style = "color : #dcb3bb ; font-family : 'Amaranth'"><%= rs.getString("name")%></h4>
            <p style=" color: white">Price : <%= rs.getString("price") %> INR</p>
            <p style=" color: white"><%= rs.getString("description")%></p>
            <a href="mycart.jsp?id=<%= rs.getString("Pid")%>"> Add to Cart</a>&nbsp;&nbsp;&nbsp;&nbsp;
            <%
                session.setAttribute("id",rs.getString("Pid"));
            %>
            <a href="buy.jsp"> Buy Now</a>
        </div>
        </div>
        <hr>
        <%   
        }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    
    }
    if(request.getParameter("category").toString().equals("c"))
    {
        try{
        Connection con;
        Statement stmt;
        String sql="select * from products where category='Cake'";
        Class.forName("com.mysql.cj.jdbc.Driver");
        con= DriverManager.getConnection("jdbc:mysql://localhost:3306/celebakeation?autoReconnect=true&useSSL=false","root","system");
        stmt= con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        while(rs.next())
        {
       %>
        
        <div class="media">
            <div class="media-left">
                <img src = "mycategory.jsp?id=<%=rs.getString("Pid")%>" class="media-object" style="width:200px ; height : 150px ; margin-left: 30px; margin-right:  30px">
            </div>
            <div class="media-body">
                <h4 class="media-heading" style = "color : #dcb3bb ; font-family : 'Amaranth'"><%= rs.getString("name")%></h4>
                <p style=" color: white">Price : <%= rs.getString("price") %> INR</p>
                <p style=" color: white"><%= rs.getString("description")%></p>
                <p> <a href="mycart.jsp?id=<%=rs.getString("Pid")%>" > Add to Cart </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%
                    session.setAttribute("id",rs.getString("Pid"));
                %>
                <a href="buy.jsp"> Buy Now</a></p>
            </div>
        </div>
        <hr>  
        <%   
        }
    }
    catch(Exception e){
       System.out.println(e); 
    } 
    }
        
    if(request.getParameter("category").toString().equals("p"))
    {
       try{
        Connection con;
        Statement stmt;
        String sql="select * from products where category='Pastry'";
        Class.forName("com.mysql.cj.jdbc.Driver");
        con= DriverManager.getConnection("jdbc:mysql://localhost:3306/celebakeation?autoReconnect=true&useSSL=false","root","system");
        stmt= con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        while(rs.next())
        {
       %>
        
        <div class="media">
            <div class="media-left">
                <img src = "mycategory.jsp?id=<%=rs.getString("Pid")%>" class="media-object" style="width:200px ; height : 150px ; margin-left: 30px; margin-right:  30px">
            </div>
            <div class="media-body">
                <h4 class="media-heading" style = "color : #dcb3bb ; font-family : 'Amaranth'"><%= rs.getString("name")%></h4>
                <p style=" color: white">Price : <%= rs.getString("price") %> INR</p>
                <p style=" color: white"><%= rs.getString("description")%></p>
                <p><a href="mycart.jsp?id=<%=rs.getString("Pid")%>" > Add to Cart</a> </p>
                <%
                    session.setAttribute("id",rs.getString("Pid"));
                %>
                <a href="buy.jsp"> Buy Now</a>
            </div>
        </div>
        <hr> 
        <%   
        }
    }
    catch(Exception e)
    {
        System.out.println(e);
    }       
    }
    if(request.getParameter("category").toString().equals("coo"))
    {
       try{
        Connection con;
        Statement stmt;
        String sql="select * from products where category='Cookies'";
        Class.forName("com.mysql.cj.jdbc.Driver");
        con= DriverManager.getConnection("jdbc:mysql://localhost:3306/celebakeation?autoReconnect=true&useSSL=false","root","system");
        stmt= con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        while(rs.next())
        {
       
       %>
        
        <div class="media">
        <div class="media-left">
            <img src = "mycategory.jsp?id=<%=rs.getString("Pid")%>" class="media-object" style="width:200px ; height : 150px ; margin-left: 30px; margin-right:  30px">
        </div>
        <div class="media-body">
            <h4 class="media-heading" style = "color : #dcb3bb ; font-family : 'Amaranth'"><%= rs.getString("name")%></h4>
            <p style=" color: white">Price : <%= rs.getString("price") %> INR</p>
            <p style=" color: white"><%= rs.getString("description")%></p>
            <p><a href="mycart.jsp?id=<%=rs.getString("Pid")%>" > Add to Cart</a> </p>
            <%
                session.setAttribute("id",rs.getString("Pid"));
            %>
            <a href="buy.jsp"> Buy Now</a>
        </div>
        </div>
        <hr>  
    <%   
    }
    }
    catch(Exception e)
    {
      System.out.println(e);  
    }     
    }  
    %>  
    </body>
</html>


