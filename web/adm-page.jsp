<%@page import="myPackage.classes.User"%>
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
        <style>
           .navbar-brand{
                font-family: Ink free;
                font-size: 45px;
            }
            
            .sidebar {
                height: 100%;
                width: 0;
                position: fixed;
                z-index: 1;
                top: 80px;
                left: 0;
                background-color: #111;
                overflow-x: hidden;
                transition: 0.5s;
                padding-top: 60px;
            }

            .sidebar a {
                padding: 8px 8px 8px 32px;
                text-decoration: none;
                color: #818181;
                display: block;
                transition: 0.3s;
            }

            .sidebar a:hover {
                color: #f1f1f1;
            }

            .sidebar .closebtn {
                position: absolute;
                top: 0;
                right: 25px;
                font-size: 36px;
                margin-left: 50px;
            }

            .openbtn {
                font-size: 20px;
                cursor: pointer;
                background-color: #111;
                color: white;
                padding: 5px 10px;
                border: none;
            }

            .openbtn:hover {
                background-color: #444;
            }

            #main {
                transition: margin-left .5s;
                padding: 16px;
            }

            @media screen and (max-height: 450px) {
                .sidebar {padding-top: 15px;}
            }
        </style>
    </head>
    <body style=" background: #8D021F">    
       	<nav class="navbar navbar-expand-sm navbar-dark bg-danger pl-5 fixed-top">
            <button class="openbtn" onclick="openNav()">☰</button>
            <b class="navbar-brand mx-auto">CeleBAKEation</b>  
        </nav>
        <%
            if(session.getAttribute("emailId").toString().equals("admin@gmail.com")){
        %>
        	
            <div id="mySidebar" class="sidebar">
                <h3 style="color: white;padding: 8px 8px 8px 32px">Admin Panel</h3>
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
		<a href="adm-page.jsp?pgprt=1" style=" font-size: 20px">Products</a>
                <a href="adm-page.jsp?pgprt=2" style=" font-size: 20px">Booking</a>
		<a href="adm-page.jsp?pgprt=3" style=" font-size: 20px">Accounts</a>
                <a href="adm-page.jsp?pgprt=4" style=" font-size: 20px">Feedbacks</a>
                <a href="controller.jsp?page=logout" style="font-size: 20px">Logout</a>
            </div>
            <script>
                function closeNav() {
                    document.getElementById("mySidebar").style.width = "0";
                    document.getElementById("main").style.marginLeft= "0";
                }
            </script>
        
            <%
                }
            %>
            <script>
                function openNav() {
                    document.getElementById("mySidebar").style.width = "250px";
                    document.getElementById("main").style.marginLeft = "250px";
                }
            </script>
	
            <%
                if(session.getAttribute("userStatus").toString().equals("1")){
            %>
        
            <% 
                if(request.getParameter("pgprt").equals("1")){      
            %>
            
                <jsp:include page="products.jsp"/>
        
            <%
                }else if(request.getParameter("pgprt").equals("2")){
            %>
            
            <jsp:include page="viewbookings.jsp"/>
                
            <%
                }else if(request.getParameter("pgprt").equals("3")){
            %>
            
                <jsp:include page="accounts.jsp"/>
            <%
                }else if(request.getParameter("pgprt").equals("4")){
            %>
            
                <jsp:include page="viewfeedback.jsp"/>
            <%
                }
                }else response.sendRedirect("login.jsp");
            %>
    </body>
</html>
