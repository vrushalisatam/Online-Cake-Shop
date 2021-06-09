<%-- 
    Document   : mycart1
    Created on : 19 Mar, 2021, 10:29:38 PM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                .nav-link{
                    font-size: 20px;
                }
                p{
                    font-family: Amaranth;
                    font-size: 15px;
                }
        </style>
        
    </head>
        <title>JSP Page</title>
    </head>
    <body  style="background-color: #8D021F">
        
        <br><br><br><br>
        <%
            String loginConfirm=session.getAttribute("userStatus").toString();
            if(loginConfirm.equals("1")){
                String email = session.getAttribute("emailId").toString();
                %>
                <jsp:include page="home1.jsp"/>
                <%
                try{
                    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/celebakeation?autoReconnect=true&useSSL=false","root","system");
                    String cmd = "select customer_id from users where email ='"+email+"'";
                    PreparedStatement pstm = con.prepareStatement(cmd);
                    ResultSet rs=pstm.executeQuery();
                    int tot_amt = 0;
                    while(rs.next()){
                        int cid = rs.getInt("customer_id");
                        String sql = "select prod_ID,quantity from bookings where status ='booked' and customer_ID='"+cid+"'";
                        PreparedStatement pst = con.prepareStatement(sql);
                        ResultSet rs1=pst.executeQuery();
                        
                        while(rs1.next()){
                            int pid=rs1.getInt("prod_ID");                        
                            String sql1 = "select price,Pid,name from products where Pid ='"+pid+"'";
                            PreparedStatement pst1 = con.prepareStatement(sql1);
                            ResultSet rss=pst1.executeQuery();                            
                            while(rss.next()){
                                int quantity = rs1.getInt("quantity");
                                int price = Integer.parseInt(rss.getString("price"));
                                tot_amt = tot_amt+(quantity * price);
                                
                    %>
                    
                <jsp:include page="home1.jsp"/>
                    <form method='post' action="controller.jsp">
                <input type="hidden" name="page" value="updateBooking">
                <div class="media">
                <div class="media-left">
                <img src = "mycategory.jsp?id=<%=pid%>" class="media-object" style="width:200px ; height : 150px; margin-left: 30px; margin-right:  30px">
                </div>
                            <div class="media-body">
                                <h4 class="media-heading" style = "color : #dcb3bb ; font-family : 'Amaranth'"><%= rss.getString("name")%></h4>
<!--                                <p style=" color: white">Quantity:</p>
                                <select id="select1" onclick="getOption()">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                </select>
                                <script type="text/javascript">
                                    function getOption() {
                                        selectElement = document.querySelector('#select1');
                                        output = selectElement.value;
                                        document.querySelector('.output').textContent = output;
                                    }
                                </script>-->
                                <p style=" color:white">Price:<%=price%></p>
                                <!--<p><a href = 'logingift.jsp?giftid=<%--<%= rs.getString("id")%>--%>'>BOOK NOW </a></p>-->
                                <!--<p><a href="mycart.jsp?id=<%--<%=rs.getString("Pid")%>--%>"> BOOK NOW</a> </p>-->
                            </div>
                </div>
                            <hr>
        <%   
            }
                        }
                    }
        %>
                            <center>
                                <div class="fixed-bottom">
                                <p style=" color: white">Total amount : <%= tot_amt %> INR</p>
                               <input type="Submit" value="Confirm Booking" class="button" style="font-family: Playfair Display; font-size: 22px; margin-right: 10px; margin-bottom: 12px" onclick=" return confirm('Your Order Has Been Confirmed!!');">
                            </div>
                            </center>
                                <%
                }
                catch(Exception e)
                {
                    System.out.println(e); 
                }
                }else if(!loginConfirm.equals("1")){
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
                    <!--<li class="nav-item"><a href="mycart.jsp" class="nav-link" style="font-family: Ink free; color: white"><b>My Cart</b></a></li>-->
                </ul>
            </div>
        </nav>
<%
                   try{
                    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/celebakeation?autoReconnect=true&useSSL=false","root","system");
                    int tot_amt = 0;
                    String sql = "select booking_id,prod_ID,quantity from bookings where customer_ID= 100";
                        PreparedStatement pst = con.prepareStatement(sql);
                        ResultSet rs1=pst.executeQuery();
                        while(rs1.next()){
                            int pid=rs1.getInt("prod_ID");                        
                            String sql1 = "select price,Pid,name from products where Pid ='"+pid+"'";
                            PreparedStatement pst1 = con.prepareStatement(sql1);
                            ResultSet rss=pst1.executeQuery();                            
                            while(rss.next()){
                                int quantity = Integer.parseInt(rs1.getString("quantity"));
                                int price = Integer.parseInt(rss.getString("price"));
                                tot_amt = tot_amt+(quantity * price);
                                
                    %>
                    
                    <div class="media">
                <div class="media-left">
                    <img src = "mycategory.jsp?id=<%=pid%>" class="media-object" style="width:200px ; height : 150px; margin-left: 30px; margin-right:  30px">
                </div>
                            <div class="media-body">
                                <h4 class="media-heading" style = "color : #dcb3bb ; font-family : 'Amaranth'"><%= rss.getString("name")%></h4>
                                <p style=" color: white">Quantity:<%=quantity%></p>
                                <p style=" color:white">Price:<%=price%></p>
                                <!--<p><a href = 'logingift.jsp?giftid=<%--<%= rs.getString("id")%>--%>'>BOOK NOW </a></p>-->
                                <!--<p><a href="mycart.jsp?id=<%--<%=rs.getString("Pid")%>--%>"> BOOK NOW</a> </p>-->
                            </div>
                           
                            
                </div>
                            <hr>
                            <%   

            }
                        }
                    
%>
                            <center>
                                <div class="fixed-bottom">
                                <p style=" color: white">Total amount : <%= tot_amt %> INR</p>
                                <button id="myButton" style="font-family: Playfair Display; font-size: 22px; margin-right: 10px; margin-bottom: 12px">Confirm Booking</button>

<script type="text/javascript">
    document.getElementById("myButton").onclick = function () {
        location.href = "login2.jsp";
    };
</script>
                            </div>
                            </center>
   
                                <%
                                    
                }
                catch(Exception e)
                {
                    System.out.println(e); 
                }
            }
            
        %>
    </body>
</html>
