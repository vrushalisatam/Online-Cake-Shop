<%-- 
    Document   : accounts
    Created on : 16 Mar, 2021, 10:20:03 PM
    Author     : Admin
--%>

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
                    <center><h1 style=" color: white; font-family: Caveat Brush; font-size: 50px">All Registered Customers</h1></center>
                    <br><b style=" margin-left: 80px; color: white">Search: <input id="gfg" type="text" placeholder="Search here"></b><br>
                    <br><br>
                    <table id="one-column-emphasis" style="border-style: solid">
                        <colgroup>
                            <col class="oce-first"/>
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Address</th>
<!--                                <th scope="col">Action</th>-->
                            </tr>
                        </thead>
                        <tbody id="geeks" style="overflow-y: auto ;position: absolute; height: 200px; border: 2px solid white">
  
                            <%
                                ArrayList list=pDAO.getAllUsers();
                                User user;
                                for(int i=0;i<list.size();i++){
                                    user=(User)list.get(i);
                            %>
                        <tr>
                            <td><%=user.getName() %></td>
                            <td><%=user.getEmail() %></td>
                            <td><%=user.getAddress() %></td>
                            <!--                            <td><a href="controller.jsp?page=accounts&operation=del&uid=<%--<%=user.getEmail()--%> %>" 
                                onclick="return confirm('Are you sure you want to delete this ?');">
                              <div class="delete-btn" style="font-size: 17px">delete user</div>
                              </a></td>-->
                        </tr> 
                            <% 
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