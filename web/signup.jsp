<%-- 
    Document   : signup
    Created on : 24 Feb, 2021, 9:02:01 PM
    Author     : Vrushali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                
                .signupbtn{
                    background-color: azure;
                    color: black;
                    padding: 16px 20px;
                    margin: 8px 0;
                    border: none;
                    cursor: pointer;
                    opacity: 0.9;
                    font-family: Croissant One;
                }
                
                h2{
                    color: white; 
                    font-family: Caveat Brush; 
                    font-size: 50px;      
                }      
        </style>
  
    <body style="background-color: #8D021F">
        <nav class="navbar navbar-expand-sm navbar-dark bg-danger pl-5 fixed-top">
            <b><a href="home.jsp" class="navbar-brand" >CeleBAKEation</a></b>   
            <b><span class="navbar-text"> Love at first bite.</span></b>
        </nav>
        <br><br><br><br>
        <center>
            <div class="central-div" style="top:10%">
                <form action="controller.jsp">
                    <input type="hidden" name="page" value="register"> 
                        <table>
                            <tr>
                                <td colspan="2">
                                <center><h2>Registration For CeleBAKEation</h2></center>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label id="demo">Full Name: </label>
                                </td>
                                <td>
                                    <input type="text" name="fname" class="text" placeholder="Full Name">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label id="demo">Email ID: </label>
                                </td>
                                <td>
                                    <input type="email" name="email" class="text" placeholder="Email">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label id="demo">Password: </label>
                                </td>
                                <td>
                                    <input type="password" name="pass" class="text" placeholder="Password">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label id="demo">Contact No: </label>
                                </td>
                                <td>
                                    <input type="text" name="contactno" class="text" placeholder="Contact No">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label id="demo">Address: </label>
                                </td>
                                <td>
                                    <input type="text" name="address" class="text" placeholder="Address">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <br>
                                    <center>
                                        <input type="submit" class="signupbtn" value="Register Now" class="button">
                                    </center>
                                </td>
                            </tr>
                        </table>
                </form>
            </div>
        </center>
    </body>
</html>
