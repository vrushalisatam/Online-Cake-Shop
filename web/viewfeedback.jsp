<%-- 
    Document   : viewfeedback
    Created on : 18 Mar, 2021, 8:37:18 PM
    Author     : Admin
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
    <head>
        <link href='https://fonts.googleapis.com/css?family=Caveat Brush' rel='stylesheet'>
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
    <center>
            <div class="content-area">
                <br><br><br>
                <div class="inner" style="margin-top: 50px">
                    <center><h1 style=" color: white; font-family: Caveat Brush; font-size: 50px">Customer's Feedback</h1></center>
                    <br><b style=" margin-left: 80px; color: white">Search: <input id="gfg" type="text" placeholder="Search here"></b><br>
                    <br><br>
                    <table id="one-column-emphasis" style="border-style: solid">
                        <colgroup>
                            <col class="oce-first"/>
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">Name</th>
                                <th scope="col">Feedbacks</th>
                            </tr>
                        </thead>
                        <tbody id="geeks">
                            <%
                                try{
                                    Connection con = null;
                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/celebakeation?autoReconnect=true&useSSL=false","root","system");
                                    PreparedStatement pstm = con.prepareStatement("Select * from feedback");
                                    ResultSet rs = pstm.executeQuery();
                                    while(rs.next()){
                                
                            %>
                        <tr>
                            <td><%=rs.getString("customer_name") %></td>
                            <td><%=rs.getString("feedbacks") %></td>
                            
                
                        </tr> 
                            <% 
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
                        .toLowerCase().indexOf(value) > -1);
                    });
                });
            });
            </script>
                </div>
            </div>
        </center>

