package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import myPackage.DbClass;

public final class mycart_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href='https://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet'>\n");
      out.write("        <script src=\"jquery-3.3.1.min\"></script>\n");
      out.write("        <script src=\"bootstrap.min.js\"></script>  \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>CeleBAKEation</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String loginConfirm=session.getAttribute("userStatus").toString();
            if(loginConfirm.equals("1")){
                String email = session.getAttribute("emailId").toString();
                String id = request.getParameter("id");
                try
                {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/celebakeation?autoReconnect=true&useSSL=false","root","system");
                    String cmd = "select customer_id, name from users where email ='"+email+"'";
                    PreparedStatement pstm = con.prepareStatement(cmd);
                    ResultSet rs=pstm.executeQuery();
                    while(rs.next()){
                        String cid = rs.getString("customer_id");
                        String cname = rs.getString("name");
                        String sql = "select name from products where Pid ='"+id+"'";
                        PreparedStatement pstt = con.prepareStatement(sql);
                        ResultSet rs1=pstt.executeQuery();
                        while(rs1.next()){
                            String pname = rs1.getString("name");
                            String sql1="insert into bookings(customer_ID, customer_NAME, prod_ID, prod_Name, quantity, status) values(?,?,?,?,?,?)";
                            PreparedStatement pst=con.prepareStatement(sql1);
                            pst.setInt(1,Integer.parseInt(cid));
                            pst.setString(2,cname);
                            pst.setInt(3,Integer.parseInt(id));
                            pst.setString(4,pname);
                            pst.setInt(5,1);
                            pst.setString(6,"Booked");
                            pst.executeUpdate();
                        }
                    }
                    response.sendRedirect("mycart1.jsp");
                }
                catch(Exception e)
                {
                    System.out.println(e); 
                }
            }else if(!loginConfirm.equals("1")){
                   String id = request.getParameter("id");
                try
                {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/celebakeation?autoReconnect=true&useSSL=false","root","system");
                    String sql = "select name from products where Pid ='"+id+"'";
                    PreparedStatement pstt = con.prepareStatement(sql);
                    ResultSet rs1=pstt.executeQuery();
                    while(rs1.next()){
                        String pname = rs1.getString("name");
                        String sql1="insert into bookings(customer_ID, prod_ID, prod_Name, quantity, status) values(?,?,?,?,?)";
                        PreparedStatement pst=con.prepareStatement(sql1);
                        pst.setInt(1,100);
                        pst.setInt(2,Integer.parseInt(id));
                        pst.setString(3,pname);
                        pst.setInt(4,1);
                        pst.setString(5,"booked");
                        pst.executeUpdate();
                        System.out.println("It is called");
                    }
                    response.sendRedirect("mycart1.jsp");
                }
                catch(Exception e)
                {
                    System.out.println(e); 
                }
            }  
        
      out.write("\n");
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
