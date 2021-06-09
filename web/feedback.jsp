<%-- 
    Document   : feedback
    Created on : 8 Mar, 2021, 7:21:51 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="myPackage.classes.User"%>
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
        <link href='https://fonts.googleapis.com/css?family=Caveat Brush' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Croissant One' rel='stylesheet'>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
        
        <title>CeleBAKEation</title>
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
                
                .fdbkbtn{
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
    </head>
    <body style="background-color: #8D021F" >
        <%
           User user=pDAO.getUserDetails(session.getAttribute("emailId").toString());
        %>
        <jsp:include page="home1.jsp"/>
        <br><br><br><br>
        <center>
            <div class="central-div" style="top:10%">
                <form action="controller.jsp">
                <input type="hidden" name="page" value="feedback">                 
                <table>
                    <tr>
                        <td colspan="2">
                            <center><h2 style="color: white; font-family: Caveat Brush; font-size: 50px; ">Feedback</h2></center>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label id="demo">Full Name: </label>
                        </td>
                        <td>
                            <input type="text" name="fname" class="text" value="<%= user.getName() %>" readonly>
                        </td>
                    </tr>                         
                    <tr>
                        <td>
                            <br>
                            <label id="demo"> Your Feedback: </label>
                        </td>
                    </tr>
                    <tr>                              
                        <td colspan="2">
                            <textarea rows="4" cols="40" name="feedback" style=" margin-left: 80px"> 
                            </textarea>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            <br>
                            <input type="submit" class="fdbkbtn" value="Submit" style=" margin-left: 80px">
                        </td>
                    </tr>
                </table>
                </form>
            </div>
        </center>
    </body>
</html>
