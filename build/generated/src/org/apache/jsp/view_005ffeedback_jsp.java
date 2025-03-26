package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class view_005ffeedback_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Amenubar.jsp");
  }

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>view feedback</title>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Amenubar</title>\n");
      out.write("         <link rel=\"stylesheet\" href=\"bootstrap.min.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <nav class=\"navbar navbar-expand-lg navbar-dark bg-primary\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <a class=\"navbar-brand\" href=\"index.html\">Home</a>\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarColor01\" aria-controls=\"navbarColor01\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarColor01\">\n");
      out.write("      <ul class=\"navbar-nav me-auto\">\n");
      out.write("        \n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"category.jsp\">Category</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"v_add_property.jsp\">Add Property</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"Admin_ViewBooking.jsp\">View Booking</a>\n");
      out.write("           \n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"view_payment_details.jsp\">View Payment Details</a>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("         <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"view_feedback.jsp\">View Feedback</a>\n");
      out.write("        </li>\n");
      out.write("         <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"view_complint.jsp\">View Complaint</a>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("<!--         <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"report.jsp\">Report</a>\n");
      out.write("        </li>-->\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"index.html\">Log Out</a>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("    \n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("   </head>\n");
      out.write("    <body>\n");
      out.write("       <style>\n");
      out.write("table {\n");
      out.write("  \n");
      out.write("  border-collapse: collapse;\n");
      out.write("  width: 90%;\n");
      out.write("  margin-left: auto;\n");
      out.write("  margin-right: auto;\n");
      out.write("  \n");
      out.write("}\n");
      out.write("\n");
      out.write("td, th {\n");
      out.write("  border: 2px solid black;\n");
      out.write("  text-align: left;\n");
      out.write("  padding: 8px;\n");
      out.write("}\n");
      out.write(" h1\n");
      out.write("            {\n");
      out.write("                text-align: center;\n");
      out.write("                font-family: aerial;\n");
      out.write("                color: black;\n");
      out.write("                margin-top: 2px;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("tr:nth-child(even) {\n");
      out.write("  background-color:lavenderblush;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<h1 style=\"font-size:12px solid \"> VIEW Feedback</h1>\n");
      out.write("\n");
      out.write("<table>\n");
      out.write("  <tr>\n");
      out.write("    <th>Id</th>\n");
      out.write("    <th>Name</th>\n");
      out.write("    <th>Email Id</th>\n");
      out.write("    <th>Title</th>\n");
      out.write("    <th>Description</th>\n");
      out.write("     \n");
      out.write("  </tr>\n");
      out.write("   ");

  String event=request.getParameter("btninsert");
  Connection cn=null;
  Statement st=null;
  
         try{
              Class.forName("com.mysql.jdbc.Driver");
    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_real_estate_portfolio_management_system","root","root");
   
              st=cn.createStatement();
   String sql="Select * from user_feedback ";
   ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                                       {   
                    String id=rs.getString("fid"); 
                    String name=rs.getString("f_name");
                    String mail=rs.getString("f_mailid");
                    String title=rs.getString("f_title");
                    String desc=rs.getString("f_desc");
                    
               
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td>");
      out.print(id);
      out.write("</td>\n");
      out.write("    <td>");
      out.print(name);
      out.write("</td>\n");
      out.write("    <td>");
      out.print(mail);
      out.write("</td>\n");
      out.write("    <td>");
      out.print(title);
      out.write("</td>\n");
      out.write("    <td>");
      out.print(desc);
      out.write("</td>\n");
      out.write("  </tr>\n");
      out.write("  ");
                                
                                       
                }
         }catch(Exception e)
                                 {
             out.println(e.toString());
         }
                 
 


      out.write("     \n");
      out.write("\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("</body>\n");
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
