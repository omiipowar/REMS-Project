/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Comptech
 */
public class v_login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     
        PrintWriter out=resp.getWriter();
      String email=req.getParameter("mail");
      String password=req.getParameter("pass");
      String button=req.getParameter("btn");
      
      out.println(email);
      out.println(password);
      
      
       Database db=new Database();
       out.println(db.connectbd());
       
       if(button.equals("Login"))
         {
             Pattern regexPattern;
              Matcher regMatcher;
         regexPattern = Pattern.compile("^[(a-zA-Z-0-9-\\_\\+\\.)]+@[(a-z-A-z)]+\\.[(a-zA-z)]{2,3}$");
        regMatcher   = regexPattern.matcher(email.toString());
         if(!regMatcher.matches())
        {
        resp.setContentType("text/html;charset=UTF-8");
       out.println("<script type=\"text/javascript\">");
       out.println("alert('Enter Valid Email Address');");
        out.println("location='v_login.jsp';");
       out.println("</script>");
        }
         else
         {
             out.println("Login Faild");
         }
       
       resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Login Successfull');");
        out.println("location='v_registration.jsp';");
        out.println("</script>");
       }
    }
}

