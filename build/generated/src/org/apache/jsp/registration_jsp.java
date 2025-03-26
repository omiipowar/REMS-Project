package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registration_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>registration</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap_1.css\">\n");
      out.write("         <script src=\"validation.js\"></script>\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            .container\n");
      out.write("            {\n");
      out.write("               \n");
      out.write("                background-color: white;\n");
      out.write("                box-shadow: 3px 3px 3px 3px black;\n");
      out.write("                border-radius: 5px 5px 5px 5px;\n");
      out.write("                width: 55%;\n");
      out.write("                margin-left: 250px;\n");
      out.write("                margin-top: 10px;\n");
      out.write("                opacity: 0.9;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            h1\n");
      out.write("            {\n");
      out.write("                text-align: center;\n");
      out.write("                font-family: algerian;\n");
      out.write("                color: black;\n");
      out.write("                margin-top: 3px;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            input[type=text]\n");
      out.write("            {\n");
      out.write("                \n");
      out.write("                box-shadow: 1px 1px 1px 1px;\n");
      out.write("                border-bottom: 1px solid;\n");
      out.write("                border-radius: 8px 8px 8px 8px;\n");
      out.write("                background-color: lavenderblush;     \n");
      out.write("            }\n");
      out.write("           \n");
      out.write("            label\n");
      out.write("            {\n");
      out.write("                color: blue;\n");
      out.write("                font-size: 20px;\n");
      out.write("                font-style: Algerian;\n");
      out.write("            }\n");
      out.write("            label:hover\n");
      out.write("            {\n");
      out.write("                color: red;\n");
      out.write("            }    \n");
      out.write("              \n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-image:url(images/real-estate-16.jpg);background-size: cover\">\n");
      out.write("        <form name=\"abc\" action=\"registration\" method=\"post\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <br>\n");
      out.write("            <img src=\"images/register-icon.png\" height=\"70px\" width=\"40%\" style=\"margin-left:160px\">\n");
      out.write("            <h1 style=\"font-size:12px solid \"> Registration Form</h1>\n");
      out.write("            \n");
      out.write("            <div class=\"row\">\n");
      out.write("                 <div class=\"col-sm-1\"></div>\n");
      out.write("                 <div class=\"col-sm-5\">\n");
      out.write("                     <label> Username</label>\n");
      out.write("                <input type=\"text\" class=\"form-control\" name=\"uname\" placeholder=\"Username\"></div>\n");
      out.write("                 &nbsp;&nbsp;&nbsp;\n");
      out.write("                 <div class=\"col-sm-5\">\n");
      out.write("                     <label>Password</label>\n");
      out.write("                     <input type=\"password\" class=\"form-control\" name=\"pass\" placeholder=\"Password\" maxlength=\"8\" style=\"box-shadow:1px 1px 1px 1px;  background-color: lavenderblush;  border-radius: 8px 8px 8px 8px; border-bottom: 1px solid\"></div>\n");
      out.write("            </div>\n");
      out.write("            <br>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                 <div class=\"col-sm-1\"></div>\n");
      out.write("                 <div class=\"col-sm-5\">\n");
      out.write("                     <label>Enter First Name</label>\n");
      out.write("                     <input type=\"text\" class=\"form-control\" name=\"fname\" placeholder=\"Enter First Name\" onkeypress=\"javascript :return isString(event)\"></div>\n");
      out.write("                 &nbsp;&nbsp;&nbsp;\n");
      out.write("                 <div class=\"col-sm-5\">\n");
      out.write("                     <label>Enter last name</label>\n");
      out.write("                     <input type=\"text\" class=\"form-control\" name=\"lname\" placeholder=\"Enter Last Name\" onkeypress=\"javascript :return isString(event)\"></div>\n");
      out.write("                 </div> \n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("                   <div class=\"row\">\n");
      out.write("                 <div class=\"col-sm-1\"></div>\n");
      out.write("                 <div class=\"col-sm-5\"> \n");
      out.write("                     <label>Contact Number</label>\n");
      out.write("                     <input type=\"text\" class=\"form-control\" name=\"cno\" placeholder=\"Contact Number\" onkeypress=\"javascript :return isContactno(event)\" maxlength=\"12\"></div>\n");
      out.write("                 &nbsp;&nbsp;&nbsp;\n");
      out.write("                 <div class=\"col-sm-5\">\n");
      out.write("                     <label>Select gender</label>\n");
      out.write("                      <select class=\"form-control\" name=\"Gender\" style=\"box-shadow:1px 1px 1px 1px;  background-color: lavenderblush;  border-radius: 8px 8px 8px 8px; border-bottom: 1px solid\" >\n");
      out.write("                         <option>select gender</option>\n");
      out.write("                         <option>Male</option>\n");
      out.write("                         <option>Female</option></select></div>\n");
      out.write("                 </div>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-1\"></div>\n");
      out.write("            <div class=\"col-sm-8\">\n");
      out.write("                <label>Address</label>\n");
      out.write("        <td> <textarea class=\"form-control\" name=\"add\" style=\"box-shadow:1px 1px 1px 1px;  background-color: lavenderblush;   border-radius: 8px 8px 8px 8px; border-bottom: 1px solid \"placeholder=\"Address\"></textarea></td>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("            <br>\n");
      out.write("             \n");
      out.write("        <div class=\"row\">\n");
      out.write("                 <div class=\"col-sm-2\"></div>\n");
      out.write("                 <div class=\"col-sm-8\">\n");
      out.write("                     <input type=\"submit\" class=\"btn btn-primary form-control\" name=\"btn\" value=\"Registration\">\n");
      out.write("                \n");
      out.write("                     <label style=\"color: black;font-size: 17px\">Have already an account?</label> <a href=\"login.jsp\" class=\"btn-btn-link\">Login Here</a>\n");
      out.write("                     <br>\n");
      out.write("                     \n");
      out.write("                     \n");
      out.write("                 <br>\n");
      out.write("            </div>\n");
      out.write("        </div>   \n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
