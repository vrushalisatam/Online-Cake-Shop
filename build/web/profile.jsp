<%-- 
    Document   : profile
    Created on : 2 Mar, 2021, 4:34:35 PM
    Author     : Vrushali
--%>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page import="myPackage.classes.User"%>
<%@page import="myPackage.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="myPackage.DbClass" scope="page"/>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel ="stylesheet" type ="text/css" href="bootstrap.min.css">
        <script src="jquery-3.3.1.min.js"></script>
        <script type = text/javascript src="bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
        <link href='https://fonts.googleapis.com/css?family=Caveat Brush' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Croissant One' rel='stylesheet'>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
        <title>CeleBAKEtion</title>
        <style>
                .navbar-brand{
                    font-family: Ink free;
                    font-size: 35px;
                }
                .nav-link{
                    font-size: 20px;
                }
                
                #demo{
                    font-family: Croissant One;
                    color: whitesmoke;
                    margin-left: 80px; 
                    margin-top: 10px
                }
                
                .updatebtn{
                    background-color: azure;
                    color: black;
                    padding: 16px 20px;
                    margin: 8px 0;
                    border: none;
                    cursor: pointer;
                    opacity: 0.9;
                    font-family: Croissant One;
                }  
        </style>
  
    <body style="background-color: #8D021F">
        <jsp:include page="home1.jsp"/>
        <br><br><br><br>
        <%
           User user=pDAO.getUserDetails(session.getAttribute("emailId").toString());
        %>
        
        <center>
            <div class="central-div" style="top:10%">
                <form action="controller.jsp">
                    <input type="hidden" name="page" value="update"> 
                        <table>
                            <tr>
                                <td colspan="2">
                            <center><h2 style=" color: white; font-family: Caveat Brush; font-size: 50px;">Edit Your Profile</h2></center>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label id="demo">Full Name: </label>
                                </td>
                                <td>
                                    <input type="text" name="fname" class="text" value="<%= user.getName() %>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label id="demo">Email ID: </label>
                                </td>
                                <td>
                                    <input type="email" name="email" class="text" value="<%= user.getEmail()%>" readonly >
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label id="demo">Password: </label>
                                </td>
                                <td>
                                    <input type="password" name="pass" class="text" value="<%= user.getPassword()%>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label id="demo">Contact No: </label>
                                </td>
                                <td>
                                    <input type="text" name="contactno" class="text" value="<%= user.getContact()%>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label id="demo">Address: </label>
                                </td>
                                <td>
                                    <input type="text" name="address" class="text" value="<%= user.getAddress()%>">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <br>
                                    <center>
                                        <input type="submit" class="updatebtn" value="Update">
                                    </center>
                                </td>
                            </tr>
                        </table>
                </form>
            </div>
        </center>
    </body>
</html>
