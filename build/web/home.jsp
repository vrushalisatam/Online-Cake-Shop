<%-- 
    Document   : home
    Created on : 10 Feb, 2021, 7:41:52 PM
    Author     : Vrushali
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
        <link rel ="stylesheet" type ="text/css" href="bootstrap.min.css">
        <script src="jquery-3.3.1.min.js"></script>
        <script type = text/javascript src="bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

        <title>CeleBAKEtion</title>
        <style>
                .carousel-inner img {
                    width: 100%;
                    height: 400px;
                }
                .navbar-brand{
                    font-family: Ink free;
                    font-size: 35px;
                }
                .nav-link{
                    font-size: 20px;
                }
               .carousel-inner img {
                    width: 100%;
                    height: 400px;
                }
                
                .navbar-brand{
                    font-family: Ink free;
                    font-size: 35px;
                }
                
                .dropbtn {
                    background-color: black;
                    color: white;
                    padding: 16px;
                    font-size: 16px;
                    border: none;
                    cursor: pointer;
                }

                .dropdown {
                    position: relative;
                    display: inline-block;
                }

                .dropdown-content {
                    display: none;
                    position: absolute;
                    background-color: #f9f9f9;
                    min-width: 160px;
                    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                    z-index: 1;
                }

                .dropdown-content a {
                    color: black;
                    padding: 12px 16px;
                    text-decoration: none;
                    display: block;
                }

                .dropdown-content a:hover {background-color: #f1f1f1}

                .dropdown:hover .dropdown-content {
                    display: block;
                }

                .dropdown:hover .dropbtn {
                    background-color: #3e8e41;
                }
        </style>
    </head>
    <body style="background-color: #8D021F">
            <%
                if(request.getParameter("pgprt")==null){
                    session.setAttribute("userStatus", "0");
            %>
            <nav class="navbar navbar-expand-sm navbar-dark bg-danger pl-5 fixed-top">
            <b><a href="home.jsp" class="navbar-brand" >CeleBAKEation</a></b>   
            <b><span class="navbar-text"> Love at first bite.</span></b>
            <div class="collapse navbar-collapse" id="myMenu">
                <ul class="navbar-nav pl-5 custom-nav ml-auto">
                    <li class="nav-item "><a href="home.jsp" class="nav-link" style="font-family: Ink free; color: white"><b>Home</b></a></li>
                    <li class="nav-item"><a href="login.jsp" class="nav-link" style="font-family: Ink free; color: white"><b>Login</b></a></li>
                    <li class="nav-item"><a href="mycart1.jsp" class="nav-link" style="font-family: Ink free; color: white"><b>My Cart</b></a></li>
                </ul>
            </div>
            </nav>
            <%
                }
                else{
            %>
                <jsp:include page="home1.jsp"/>
            <%
                }
            %>
            <div id="demo" class="carousel slide" data-ride="carousel">
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                    <li data-target="#demo" data-slide-to="3"></li>
                    <li data-target="#demo" data-slide-to="4"></li>
                </ul>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/b1.jpg">
                    </div>
                    <div class="carousel-item">
                      <img src="images/b2.jpg">
                    </div>
                    <div class="carousel-item">
                      <img src="images/b3.jpg">
                    </div>
                    <div class="carousel-item">
                      <img src="images/b4.jpg">
                    </div>
                    <div class="carousel-item">
                      <img src="images/b5.jpg">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span></a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span></a>
            </div>
            <div class="container" style = "margin-top : 60px">
                <div class = row>
                    <div class = col-sm-3>
                        <h1 class = text-center style = "font-family : Gabriola ; color : #f4c2c2"><b>Breads</b></h1>
                        <a href = "category.jsp?category=b"><img src="images/bread.jpg" class="img-thumbnail" alt="Breads" style = "width:304px; height : 236px"></a>
                    </div>
                    <div class = col-sm-3>
                        <h1 class = text-center style = "font-family : Gabriola ; color :#f4c2c2 "><b>Cakes</b></h1>
                        <a href = "category.jsp?category=c"><img src="images/cake.jpg" class="img-thumbnail" alt="Cakes" style = "width:304px; height : 236px"> </a>
                    </div>
                    <div class = col-sm-3>
                        <h1 class = text-center style = "font-family : Gabriola ; color : #f4c2c2"><b>Pastries</b></h1>
                        <a href = "category.jsp?category=p"><img src="images/pastry.jpg" class="img-thumbnail" alt="Pastries" style = "width:304px; height : 236px"> </a>
                    </div>
                    <div class = col-sm-3>
                        <h1  class = text-center style = "font-family : Gabriola ; color : #f4c2c2"><b>Cookies</b></h1>
                        <a href = "category.jsp?category=coo"><img src="images/cookie.jpg" class="img-thumbnail" alt="cookies" style = "width:304px; height : 236px"> </a>
                    </div>
                </div>
            </div>
        <br><br><br><br><br>
    </body>
</html>
