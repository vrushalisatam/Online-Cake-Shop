<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="myPackage.DbClass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="myPackage.DbClass" scope="page"/>

        <% 
            String loginConfirm=session.getAttribute("userStatus").toString();
            if(loginConfirm.equals("1")){
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/celebakeation?autoReconnect=true&useSSL=false","root","system");
                String sql="Select email from users where email=?";
                PreparedStatement pst=con.prepareStatement(sql);
                pst.setString(1, session.getAttribute("emailId").toString());
                ResultSet rs=pst.executeQuery();
                if(rs.next())
                {
                    response.sendRedirect("home.jsp?pgprt=1");
                }
                else if((session.getAttribute("emailId").toString()).equals("admin@gmail.com")){
                    response.sendRedirect("adm-page.jsp?pgprt=1"); 
                }
            }else if(!loginConfirm.equals("1")){
                   response.sendRedirect("login.jsp");
            }
        %>
