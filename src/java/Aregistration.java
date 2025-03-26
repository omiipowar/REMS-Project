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
public class Aregistration extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         PrintWriter out=resp.getWriter();
        
        String username=req.getParameter("uname");
        String password=req.getParameter("pass");
        String Name=req.getParameter("fname");
        String last_name=req.getParameter("lname");
        String contact_no=req.getParameter("cno");
        String sgender=req.getParameter("Gender");
        String address=req.getParameter("add");
        String button=req.getParameter("btn");
        
        out.println(username);
        out.println(password);
        out.println(Name);
        out.println(last_name);
        out.println(contact_no);
        out.println(sgender);
        out.println(address);
        
         Database db=new Database();
       out.println(db.connectbd());
       
       
          {
          
            String abc=db.Insert("insert into user_reg (A_username,A_password,A_fname,A_name,A_cno,A_gender,A_address)values('"+username.toString()+"','"+password.toString()+"','"+Name.toString()+"','"+last_name.toString()+"','"+contact_no.toString()+"','"+sgender.toString()+"','"+address.toString()+"')");
         out.println(abc);
         
          resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Registration Successfully');");
        out.println("location='login.jsp';");
        out.println("</script>");
         
       
       }
       }
       
       
    

    
    }    
    
    
    
            