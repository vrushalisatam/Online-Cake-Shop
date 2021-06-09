<%-- 
    Document   : products
    Created on : 16 Mar, 2021, 10:33:01 PM
    Author     : Admin
--%>

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
            table-layout: fixed;
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
    <br><br><br><br><br>
    <div>
        <center><h1 style=" color: white; font-family: Caveat Brush; font-size: 50px">All Products</h1></center>
        <br>       <b style=" margin-left: 80px; color: white">Search: <input id="gfg" type="text" placeholder="Search here"></b>

        <table style="margin: 5px; margin-top: 35px" >
            <colgroup> <col class="oce-first" /> </colgroup>
        <thead style=" width: 200px">
    	<tr>
            <th scope="col">Products</th>
            <th scope="col">Product Name</th>
            <th scope="col">Image</th>
            <th scope="col">Category</th>
                
            <th scope="col">Price</th>
         <th scope="col">Action</th>
        </tr>
    </thead>
                   
    <tbody id="geeks" style="overflow-y: auto ;position: absolute; height: 340px; border: 2px solid white">
  
        <% 
            ArrayList list=pDAO.getAllGift();
            for(int i=0;i<list.size();i=i+6){
        %>
    
        <tr>
        <td><%=list.get(i)%></td>
        <td><%=list.get(i+1)%></td>
        <td><img src = "mycategory.jsp?id=<%=list.get(i)%>" height = 100 width = 100></td>
<!--         <td><%=list.get(i+2)%></td>-->
         
          <td><%=list.get(i+3)%></td>
           <td><%=list.get(i+4)%></td>
<!--            <td><%--<%=list.get(i+5)%>--%></td>-->
        
        <td ><a  href="controller.jsp?page=product&id=<%=list.get(i)%>" 
                onclick="return confirm('Are you sure you want to delete this ?');" class="del">
                <div class="delete-btn" style="font-size: 17px; color: white">Delete Product</div>
            </a></td>
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
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <hr style=" border: solid black">
    <div >
        <center><h1 style=" color: white; font-family: Caveat Brush; font-size: 50px">Add New Products</h1></center>
            
               <form action="UploadProductImage" enctype="multipart/form-data" method="post">
                   <br>
                   <table style="border-style: ridge; border-color: white">
                       <tr>
                           <td colspan="2"><label style="width: 150px;color: black; font-family: Playfair Display; font-size: 22px;margin-left: 10px; margin-top: 12px; margin-right: 10px"> Product Name</label></td>
                           <td> <input type="text" name="name" class="text" placeholder="Product Name" style="font-size: 22px; margin-left: 5px; margin-right: 10px; margin-top: 10px"></td>
                       </tr>
                       <tr>
                          <td colspan="2"><label style="width: 150px;color: black; font-family: Playfair Display; font-size: 22px;margin-left: 10px; margin-top: 12px; margin-right: 10px">Image</label></td>
                           <td><input type="file" name="file"  style="font-size: 22px; margin-left: 5px; margin-right: 10px; margin-top: 10px" ></td>
                       </tr>
                       <tr>
                           <td colspan="2"><label style="width: 150px;color: black; font-family: Playfair Display; font-size: 22px;margin-left: 10px; margin-top: 12px; margin-right: 10px"> Category</label></td>
                           <td>
                                <select name="category"  style="font-size: 22px; margin-left: 5px; margin-right: 10px; margin-top: 10px">
                                    <option value="Cake">Cake</option>
                                    <option value="Pastry">Pastries</option>
                                    <option value="Cookies">Cookies</option>
                                    <option value="Bread">Breads</option>
                                </select>
                           </td>
                           
                       </tr>
                        <tr>
                           <td colspan="2"><label style="width: 150px;color: black; font-family: Playfair Display; font-size: 22px;margin-left: 10px; margin-top: 12px; margin-right: 10px"> Price</label></td>
                           <td>
                                <input type="text" name="price" class="text" placeholder="Price" style="font-size: 22px; margin-left: 5px; margin-right: 10px; margin-top: 10px">
                           </td>
                           
                       </tr>
                       
                        <tr>
                           <td colspan="2"><label style="width: 150px;color: black; font-family: Playfair Display; font-size: 22px;margin-left: 10px; margin-top: 12px; margin-right: 10px"> Description</label></td>
                           <td>
                                <input type="text" name="description" class="text" placeholder="Description" style="font-size: 22px; margin-left: 5px; margin-right: 10px; margin-top: 10px" >
                           </td>
                           
                       </tr>
                       <tr>
                        <td colspan="3">
                       <center><input type="submit" class="form-button" value="Add" name="submit"  style="font-family: Playfair Display; font-size: 22px; margin-right: 10px; margin-bottom: 12px; margin-top: 10px"></center></td>
                       </tr>
                   </table>
                </form>
              <br><br><br><br>
    </div>
     </div>
</center>
                       

