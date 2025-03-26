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
public class Admin_login extends HttpServlet {

   @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        
       PrintWriter out=resp.getWriter();
        
       String Email=req.getParameter("mail");
       String password=req.getParameter("pass");
       String button=req.getParameter("btn");
       
       out.println(Email);
       out.println(password);
       
       
       Database db=new Database();
       out.println(db.connectbd());
      
       if(button.equals("Login"))
         {
             try
             {
               if(Email.toString().equals("Admin")&& password.toString().equals("Password"))
        {
        out.println("Login Success");
        resp.sendRedirect("category.jsp");
        }
        else
        {
         out.println("Login Faild");
        }  
             }catch(Exception ex)
             {
                 out.println(ex.toString());
             }
         
         }
        
       
       
      
   }
}