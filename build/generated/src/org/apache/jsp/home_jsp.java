package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import myPackage.DbClass;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      myPackage.DbClass pDAO = null;
      synchronized (_jspx_page_context) {
        pDAO = (myPackage.DbClass) _jspx_page_context.getAttribute("pDAO", PageContext.PAGE_SCOPE);
        if (pDAO == null){
          pDAO = new myPackage.DbClass();
          _jspx_page_context.setAttribute("pDAO", pDAO, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel =\"stylesheet\" type =\"text/css\" href=\"bootstrap.min.css\">\n");
      out.write("        <script src=\"jquery-3.3.1.min.js\"></script>\n");
      out.write("        <script type = text/javascript src=\"bootstrap.min.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <title>CeleBAKEtion</title>\n");
      out.write("        <style>\n");
      out.write("                .carousel-inner img {\n");
      out.write("                    width: 100%;\n");
      out.write("                    height: 400px;\n");
      out.write("                }\n");
      out.write("                .navbar-brand{\n");
      out.write("                    font-family: Ink free;\n");
      out.write("                    font-size: 35px;\n");
      out.write("                }\n");
      out.write("                .nav-link{\n");
      out.write("                    font-size: 20px;\n");
      out.write("                }\n");
      out.write("               .carousel-inner img {\n");
      out.write("                    width: 100%;\n");
      out.write("                    height: 400px;\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("                .navbar-brand{\n");
      out.write("                    font-family: Ink free;\n");
      out.write("                    font-size: 35px;\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("                .dropbtn {\n");
      out.write("                    background-color: black;\n");
      out.write("                    color: white;\n");
      out.write("                    padding: 16px;\n");
      out.write("                    font-size: 16px;\n");
      out.write("                    border: none;\n");
      out.write("                    cursor: pointer;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                .dropdown {\n");
      out.write("                    position: relative;\n");
      out.write("                    display: inline-block;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                .dropdown-content {\n");
      out.write("                    display: none;\n");
      out.write("                    position: absolute;\n");
      out.write("                    background-color: #f9f9f9;\n");
      out.write("                    min-width: 160px;\n");
      out.write("                    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("                    z-index: 1;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                .dropdown-content a {\n");
      out.write("                    color: black;\n");
      out.write("                    padding: 12px 16px;\n");
      out.write("                    text-decoration: none;\n");
      out.write("                    display: block;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                .dropdown-content a:hover {background-color: #f1f1f1}\n");
      out.write("\n");
      out.write("                .dropdown:hover .dropdown-content {\n");
      out.write("                    display: block;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                .dropdown:hover .dropbtn {\n");
      out.write("                    background-color: #3e8e41;\n");
      out.write("                }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: #8D021F\">\n");
      out.write("            ");

                if(request.getParameter("pgprt")==null){
                    session.setAttribute("userStatus", "0");
            
      out.write("\n");
      out.write("            <nav class=\"navbar navbar-expand-sm navbar-dark bg-danger pl-5 fixed-top\">\n");
      out.write("            <b><a href=\"home.jsp\" class=\"navbar-brand\" >CeleBAKEation</a></b>   \n");
      out.write("            <b><span class=\"navbar-text\"> Love at first bite.</span></b>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"myMenu\">\n");
      out.write("                <ul class=\"navbar-nav pl-5 custom-nav ml-auto\">\n");
      out.write("                    <li class=\"nav-item \"><a href=\"home.jsp\" class=\"nav-link\" style=\"font-family: Ink free; color: white\"><b>Home</b></a></li>\n");
      out.write("                    <li class=\"nav-item\"><a href=\"login.jsp\" class=\"nav-link\" style=\"font-family: Ink free; color: white\"><b>Login</b></a></li>\n");
      out.write("                    <li class=\"nav-item\"><a href=\"mycart1.jsp\" class=\"nav-link\" style=\"font-family: Ink free; color: white\"><b>My Cart</b></a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            </nav>\n");
      out.write("            ");

                }
                else{
            
      out.write("\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "home1.jsp", out, false);
      out.write("\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("            <div id=\"demo\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("                <ul class=\"carousel-indicators\">\n");
      out.write("                    <li data-target=\"#demo\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                    <li data-target=\"#demo\" data-slide-to=\"1\"></li>\n");
      out.write("                    <li data-target=\"#demo\" data-slide-to=\"2\"></li>\n");
      out.write("                    <li data-target=\"#demo\" data-slide-to=\"3\"></li>\n");
      out.write("                    <li data-target=\"#demo\" data-slide-to=\"4\"></li>\n");
      out.write("                </ul>\n");
      out.write("                <div class=\"carousel-inner\">\n");
      out.write("                    <div class=\"carousel-item active\">\n");
      out.write("                        <img src=\"images/b1.jpg\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"carousel-item\">\n");
      out.write("                      <img src=\"images/b2.jpg\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"carousel-item\">\n");
      out.write("                      <img src=\"images/b3.jpg\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"carousel-item\">\n");
      out.write("                      <img src=\"images/b4.jpg\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"carousel-item\">\n");
      out.write("                      <img src=\"images/b5.jpg\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <a class=\"carousel-control-prev\" href=\"#demo\" data-slide=\"prev\">\n");
      out.write("                <span class=\"carousel-control-prev-icon\"></span></a>\n");
      out.write("                <a class=\"carousel-control-next\" href=\"#demo\" data-slide=\"next\">\n");
      out.write("                <span class=\"carousel-control-next-icon\"></span></a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"container\" style = \"margin-top : 60px\">\n");
      out.write("                <div class = row>\n");
      out.write("                    <div class = col-sm-3>\n");
      out.write("                        <h1 class = text-center style = \"font-family : Gabriola ; color : #f4c2c2\"><b>Breads</b></h1>\n");
      out.write("                        <a href = \"category.jsp?category=b\"><img src=\"images/bread.jpg\" class=\"img-thumbnail\" alt=\"Breads\" style = \"width:304px; height : 236px\"></a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class = col-sm-3>\n");
      out.write("                        <h1 class = text-center style = \"font-family : Gabriola ; color :#f4c2c2 \"><b>Cakes</b></h1>\n");
      out.write("                        <a href = \"category.jsp?category=c\"><img src=\"images/cake.jpg\" class=\"img-thumbnail\" alt=\"Cakes\" style = \"width:304px; height : 236px\"> </a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class = col-sm-3>\n");
      out.write("                        <h1 class = text-center style = \"font-family : Gabriola ; color : #f4c2c2\"><b>Pastries</b></h1>\n");
      out.write("                        <a href = \"category.jsp?category=p\"><img src=\"images/pastry.jpg\" class=\"img-thumbnail\" alt=\"Pastries\" style = \"width:304px; height : 236px\"> </a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class = col-sm-3>\n");
      out.write("                        <h1  class = text-center style = \"font-family : Gabriola ; color : #f4c2c2\"><b>Cookies</b></h1>\n");
      out.write("                        <a href = \"category.jsp?category=coo\"><img src=\"images/cookie.jpg\" class=\"img-thumbnail\" alt=\"cookies\" style = \"width:304px; height : 236px\"> </a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        <br><br><br><br><br>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
