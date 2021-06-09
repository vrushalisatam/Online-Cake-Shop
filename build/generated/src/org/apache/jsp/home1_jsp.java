package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <div class=\"navbar navbar-expand-sm navbar-dark bg-danger pl-5 fixed-top\">\n");
      out.write("            <b class=\"navbar-brand\">CeleBAKEation</b>\n");
      out.write("            <b><span class=\"navbar-text\"> Love at first bite.</span></b>\n");
      out.write("            <div class=\"dropdown ml-auto\">\n");
      out.write("                <button class=\"dropbtn\">My Account</button>\n");
      out.write("                <div class=\"dropdown-content\">\n");
      out.write("                    <a href=\"profile.jsp\">Edit Profile</a>\n");
      out.write("                    <a href=\"mycart.jsp\">My Cart</a>\n");
      out.write("                    <a href=\"feedback.jsp\">Feedback</a>\n");
      out.write("                    <a href=\"controller.jsp?page=logout\">Logout</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("   ");
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
