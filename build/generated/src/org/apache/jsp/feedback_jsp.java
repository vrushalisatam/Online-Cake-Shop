package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import myPackage.classes.User;

public final class feedback_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      myPackage.DatabaseClass pDAO = null;
      synchronized (_jspx_page_context) {
        pDAO = (myPackage.DatabaseClass) _jspx_page_context.getAttribute("pDAO", PageContext.PAGE_SCOPE);
        if (pDAO == null){
          pDAO = new myPackage.DatabaseClass();
          _jspx_page_context.setAttribute("pDAO", pDAO, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("        <title>CeleBAKEation</title>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: #8D021F\" >\n");
      out.write("        ");

           User user=pDAO.getUserDetails(session.getAttribute("emailId").toString());
        
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "home1.jsp", out, false);
      out.write("\n");
      out.write("        <center>\n");
      out.write("            <div class=\"central-div\" style=\"top:10%\">\n");
      out.write("                <table>\n");
      out.write("                        <tr>\n");
      out.write("                            <td colspan=\"2\">\n");
      out.write("                                <center><h2>Feedback</h2></center>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    <label id=\"demo\">Full Name: </label>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\" name=\"fname\" class=\"text\" value=\"");
      out.print( user.getName() );
      out.write("\">\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    <label id=\"demo\"> Your Feedback: </label>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <textarea rows=\"4\" cols=\"50\" name=\"feedback\" placeholder=\"Enter your feedback here\"> \n");
      out.write("                                    </textarea>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("        </center>\n");
      out.write("\n");
      out.write("        \n");
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
