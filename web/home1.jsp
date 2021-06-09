<%-- 
    Document   : home
    Created on : 10 Feb, 2021, 7:41:52 PM
    Author     : Vrushali
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
        <div class="navbar navbar-expand-sm navbar-dark bg-danger pl-5 fixed-top">
            <b> <a href=" home.jsp?pgprt=1" class="navbar-brand"> CeleBAKEation </a> </b>
<!--            <b class="navbar-brand" >CeleBAKEation</b>-->
            <b><span class="navbar-text"> Love at first bite.</span></b>
            <div class="dropdown ml-auto">
                <button class="dropbtn">My Account</button>
                <div class="dropdown-content">
                    <a href="profile.jsp">Edit Profile</a>
                    <a href="mycart1.jsp">My Cart</a>
                    <a href="myOrders.jsp">My Orders</a>
                    <a href="feedback.jsp">Feedback</a>
                    <a href="controller.jsp?page=logout">Logout</a>
                </div>
            </div>
        </div>
   