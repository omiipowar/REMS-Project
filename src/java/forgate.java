/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Comptech
 */
public class forgate extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
       
        String username=req.getParameter("uname");
        String password=req.getParameter("pass");
        String button=req.getParameter("btn");
        
        out.println(username);
        out.println(password);
        
        
         Database db=new Database();
       out.println(db.connectbd());
       
    if (button.equals("Continue"))
        {
            String update=db.Update("update user_reg set r_username='"+username.toString()+"',r_password='"+password.toString()+"'");
                         out.println(update);
              resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('password created');");
        out.println("location='forgot_password.jsp';");
        out.println("</script>");
       
        }
    }
    }