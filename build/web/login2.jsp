<%-- 
    Document   : login
    Created on : 17 Feb, 2021, 8:58:44 PM
    Author     : Vrushali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <script src="jquery-3.3.1.min"></script>
        <script src="bootstrap.min.js"></script>
        <title>CeleBAKEation</title>
        <style>
                .navbar-brand{
                    font-family: Ink free;
                    font-size: 35px;
                }
                .nav-link{
                    font-size: 20px;
                }
                .loginbtn {
                    background-color: azure;
                    color: black;
                    padding: 16px 20px;
                    margin: 8px 0;
                    border: none;
                    cursor: pointer;
                    width: 100%;
                    opacity: 0.9;
                    font-family: Croissant One;
                }
        </style>
    </head>
    <body style="background-color: #8D021F">
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
                    <!--<li class="nav-item"><a href="mycart.jsp" class="nav-link" style="font-family: Ink free; color: white"><b>My Cart</b></a></li>-->
                </ul>
            </div>
        </nav>
        <br><br><br><br>
        <center>
            <div class="container">
                <form method="post" action="controller.jsp">
                    <input type="hidden" name="page" value="login2">
                    <center><h1 style=" color: white; font-family: Caveat Brush; font-size: 50px">Login Form</h1></center>
                    <br>
                    <table>
                        <tr>
                            <td colspan="2">
                                <label style="font-family: Croissant One; color: whitesmoke; font-size: 25px;margin-left: 10px; margin-top: 12px; margin-right: 10px">Email ID: </label>
                            </td>
                            <td>
                                <input type="text" class="text" placeholder="Email Id" name="email" style="font-size: 20px; margin-left: 10px; margin-right: 10px; margin-top: 10px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <br>
                                <label style="font-family: Croissant One; color: whitesmoke; font-size: 25px;margin-left: 10px; margin-bottom: 12px; margin-right: 10px">Password: </label>
                            </td>
                            <td>
                                <br>
                                <input type="password" class="text" placeholder="Password" name="password" style="font-size: 20px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="1">
                                <br>
                                <button type="submit" class="loginbtn" style="margin-left: 10px">Login</button>
                            </td>
                        </tr>
                    </table>
                    <div class="container signin">
                        <p style='color: white'>Don't have an account?<a href="signup.jsp"> Register Here.</a></p>
                    </div>
                </form>
            </div>
        </center>        
    </body>
</html>
