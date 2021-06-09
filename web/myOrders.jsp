<%-- 
    Document   : myOrders
    Created on : 25 Mar, 2021, 6:24:20 PM
    Author     : dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="myPackage.classes.User"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DbClass" scope="page"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link href='https://fonts.googleapis.com/css?family=Caveat Brush' rel='stylesheet'>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <title>CeleBAKEation</title>
        <style>
        table {
            border-collapse: separate;
            border-spacing: 0 0;
            border-style: solid;
            border-color: white;
        }
        th {
            background-color: #4287f5;
            color: white;
        }
        th,td {
            width: 150px;
            text-align: center;
            border: 1px solid white;
            padding: 5px;
        }
        td{
            color: white;
        }
    </style>
    </head>
    <body style="background-color: #8D021F">
        <jsp:include page="home1.jsp"/>
        <center>
            <div class="content-area">
                <br><br><br>
                <div class="inner" style="margin-top: 50px">
                    <center><h1 style=" color: white; font-family: Caveat Brush; font-size: 50px">My Orders</h1></center>
                    <br>
                    <b style=" margin-left: 80px; color: white">Search: <input id="gfg" type="text" placeholder="Search here"></b>
                    <br><br>
                    <table id="one-column-emphasis" style="border-style: solid; margin-left: 80px">
                        <colgroup>
                            <col class="oce-first"/>
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">Booking Id</th>
                                <th scope="col">Product Name</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Price per Unit</th>
                                <th scope="col">Total Price</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody id="geeks">
                            <%
                                try{
                                    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/celebakeation?autoReconnect=true&useSSL=false","root","system");
                                    String email=session.getAttribute("emailId").toString();
                                    PreparedStatement pstm = con.prepareStatement("Select customer_id from users where email='"+email+"'");
                                    ResultSet rs=pstm.executeQuery();
                                    while(rs.next())
                                    {
                                    pstm = con.prepareStatement("Select booking_id,prod_ID,prod_Name,quantity from bookings where customer_ID='"+rs.getString("customer_id")+"'");
                                    ResultSet rs1 = pstm.executeQuery();
                                    while(rs1.next()){
                                
                            %>
                        <tr>
                            <td><%=rs1.getString("booking_id") %></td>
                            <%
                                if(rs1.getString("prod_ID")==null)
                                {
                            %>
                            <td><p><%=rs1.getString("product_name") %> Out of Stock</p></td>
                            <%
                            }
                            else
                            {
                            %>
                            <td><%=rs1.getString("prod_Name") %></td>
                            <%
                            }
                            %>
                            <td><%=rs1.getInt("quantity")%></td>
                            <%
                            if(rs1.getString("prod_ID")==null)
                                {
                            %>
                            <td><p>0</p></td>
                            <td><p>0</p></td>
                            <%
                                
                            }
                            else{
                            pstm=con.prepareStatement("Select price from products where Pid="+rs1.getString("prod_ID")+"");
                            ResultSet rss=pstm.executeQuery();
                            while(rss.next()){
                            %>
                            <td><%=rss.getString("price") %></td>
                            <%
                            int total=Integer.parseInt(rss.getString("price"))*rs1.getInt("quantity");
                            %>
                            <td><%=total%></td>
                            <%
                            }
                            
                                    }
%>
<td ><a  href="controller.jsp?page=delorder&id=<%=rs1.getString("booking_id") %>" 
                onclick="return confirm('Are you sure you want to delete this order?');" class="del">
                <div class="delete-btn" style="font-size: 17px">Delete Order</div>
            </a></td>
                        </tr>
                        <%
                                }
                                }
}
                                catch(Exception e)
                                {
                                    System.out.println(e);
                                }
                            %>
                        </tbody>
                    </table>
                        <script>
            $(document).ready(function() {
                $("#gfg").on("keyup", function() {
                    var value = $(this).val().toLowerCase();
                    $("#geeks tr").filter(function() {
                        $(this).toggle($(this).text()
                        .toLowerCase().indexOf(value) > -1)
                    });
                });
            });
        </script>
    </body>
</html>
