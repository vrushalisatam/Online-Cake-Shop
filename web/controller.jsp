<%-- 
    Document   : controller
    Created on : 25 Feb, 2021, 8:12:52 PM
    Author     : Vrushali
--%>
<%--<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalTime"%>--%>
<%@page import="myPackage.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="myPackage.DbClass" scope="page"/>
<%
if(request.getParameter("page").toString().equals("login")){
    if(pDAO.loginValidate(request.getParameter("email").toString(), request.getParameter("password").toString())){
        session.setAttribute("userStatus", "1");
        session.setAttribute("emailId",pDAO.getEmailId(request.getParameter("email")));
        response.sendRedirect("dashboard.jsp");

    }else{
        response.sendRedirect("login.jsp");
    }
}
else if(request.getParameter("page").toString().equals("register")){
    String Name = request.getParameter("fname");
    String email = request.getParameter("email");
    String pass = request.getParameter("pass");
    String contactNo = request.getParameter("contactno");
    String address = request.getParameter("address");
            
    pDAO.addNewUser(Name,email,pass,contactNo,address);
    response.sendRedirect("login.jsp");
}
else if(request.getParameter("page").toString().equals("update")){
    String Name = request.getParameter("fname");
    String email = request.getParameter("email");
    String pass = request.getParameter("pass");
    String contactNo = request.getParameter("contactno");
    String address = request.getParameter("address");
            
    pDAO.updateUser(Name,email,pass,contactNo,address);
    response.sendRedirect("profile.jsp");
}
else if(request.getParameter("page").toString().equals("logout")){
    session.setAttribute("userStatus","0");
    session.invalidate();
    response.sendRedirect("home.jsp");
}

else if(request.getParameter("page").toString().equals("feedback")){
    String Name = request.getParameter("fname");
    String email = pDAO.getEmailId(session.getAttribute("emailId").toString());
    String fdbk = request.getParameter("feedback");
    
    pDAO.addFeedback(Name,email,fdbk);
    response.sendRedirect("feedback.jsp");
}
else if(request.getParameter("page").toString().equals("login1")){
if(pDAO.loginValidate(request.getParameter("email").toString(), request.getParameter("password").toString())){
    session.setAttribute("userStatus", "1");
    session.setAttribute("emailId",pDAO.getEmailId(request.getParameter("email")));
    response.sendRedirect("buy.jsp");

}else{
    response.sendRedirect("login1.jsp");
}
}
else if(request.getParameter("page").toString().equals("updateBooking")){
    String email = pDAO.getEmailId(session.getAttribute("emailId").toString());
    
    pDAO.updateBooking(email);
    response.sendRedirect("home.jsp?pgprt=1");
}

else if(request.getParameter("page").toString().equals("login2")){
if(pDAO.loginValidate(request.getParameter("email").toString(), request.getParameter("password").toString())){
    session.setAttribute("userStatus", "1");
    session.setAttribute("emailId",pDAO.getEmailId(request.getParameter("email")));
    
    pDAO.confirmBooking(request.getParameter("email"));
    response.sendRedirect("home.jsp?pgprt=1");
}else{
    response.sendRedirect("login1.jsp");
}
}

else if(request.getParameter("page").toString().equals("product")){
     pDAO.delGift(Integer.parseInt(request.getParameter("id")));
    response.sendRedirect("adm-page.jsp?pgprt=1");
}

else if(request.getParameter("page").toString().equals("delorder")){
     pDAO.delBooking(Integer.parseInt(request.getParameter("id")));
    response.sendRedirect("myOrders.jsp");
}

%>