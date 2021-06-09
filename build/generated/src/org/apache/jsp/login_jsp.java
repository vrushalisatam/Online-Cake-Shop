package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("\t<meta http-equiv=\"X-UA-compatible\" content = \"IE-edge\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel =\"stylesheet\" type =\"text/css\" href=\"bootstrap.min.css\">\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Caveat Brush' rel='stylesheet'>\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Croissant One' rel='stylesheet'>\n");
      out.write("        <script src=\"jquery-3.3.1.min\"></script>\n");
      out.write("        <script src=\"bootstrap.min.js\"></script>\n");
      out.write("        <title>CeleBAKEation</title>\n");
      out.write("        <style>\n");
      out.write("                .navbar-brand{\n");
      out.write("                    font-family: Ink free;\n");
      out.write("                    font-size: 35px;\n");
      out.write("                }\n");
      out.write("                .nav-link{\n");
      out.write("                    font-size: 20px;\n");
      out.write("                }\n");
      out.write("                .loginbtn {\n");
      out.write("                    background-color: azure;\n");
      out.write("                    color: black;\n");
      out.write("                    padding: 16px 20px;\n");
      out.write("                    margin: 8px 0;\n");
      out.write("                    border: none;\n");
      out.write("                    cursor: pointer;\n");
      out.write("                    width: 100%;\n");
      out.write("                    opacity: 0.9;\n");
      out.write("                    font-family: Croissant One;\n");
      out.write("                }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: #8D021F\">\n");
      out.write("        <nav class=\"navbar navbar-expand-sm navbar-dark bg-danger pl-5 fixed-top\">\n");
      out.write("            <b><a href=\"home.jsp\" class=\"navbar-brand\" >CeleBAKEation</a></b>   \n");
      out.write("            <b><span class=\"navbar-text\"> Love at first bite.</span></b>\n");
      out.write("            <button type=\"button\" class=\"navbar-toggler\" data-toggle=\"collapse\" data-target=\"#myMenu\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"myMenu\">\n");
      out.write("                <ul class=\"navbar-nav pl-5 custom-nav ml-auto\">\n");
      out.write("                    <li class=\"nav-item \"><a href=\"home.jsp\" class=\"nav-link\" style=\"font-family: Ink free; color: white\"><b>Home</b></a></li>\n");
      out.write("                    <li class=\"nav-item\"><a href=\"login.jsp\" class=\"nav-link\" style=\"font-family: Ink free; color: white\"><b>Login</b></a></li>\n");
      out.write("                    <!--<li class=\"nav-item\"><a href=\"mycart.jsp\" class=\"nav-link\" style=\"font-family: Ink free; color: white\"><b>My Cart</b></a></li>-->\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <br><br><br><br>\n");
      out.write("        <center>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <form method=\"post\" action=\"controller.jsp\">\n");
      out.write("                    <input type=\"hidden\" name=\"page\" value=\"login\">\n");
      out.write("                    <center><h1 style=\" color: white; font-family: Caveat Brush; font-size: 50px\">Login Form</h1></center>\n");
      out.write("                    <br>\n");
      out.write("                    <table>\n");
      out.write("                        <tr>\n");
      out.write("                            <td colspan=\"2\">\n");
      out.write("                                <label style=\"font-family: Croissant One; color: whitesmoke; font-size: 25px;margin-left: 10px; margin-top: 12px; margin-right: 10px\">Email ID: </label>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <input type=\"text\" class=\"text\" placeholder=\"Email Id\" name=\"email\" style=\"font-size: 20px; margin-left: 10px; margin-right: 10px; margin-top: 10px\">\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td colspan=\"2\">\n");
      out.write("                                <br>\n");
      out.write("                                <label style=\"font-family: Croissant One; color: whitesmoke; font-size: 25px;margin-left: 10px; margin-bottom: 12px; margin-right: 10px\">Password: </label>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <br>\n");
      out.write("                                <input type=\"password\" class=\"text\" placeholder=\"Password\" name=\"password\" style=\"font-size: 20px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px\">\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td colspan=\"1\">\n");
      out.write("                                <br>\n");
      out.write("                                <button type=\"submit\" class=\"loginbtn\" style=\"margin-left: 10px\">Login</button>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                    <div class=\"container signin\">\n");
      out.write("                        <p style='color: white'>Don't have an account?<a href=\"signup.jsp\"> Register Here.</a></p>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </center>        \n");
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
