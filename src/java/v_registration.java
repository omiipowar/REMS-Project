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
public class v_registration extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        String username=req.getParameter("uname");
        String password=req.getParameter("pass");
        String firstname=req.getParameter("fname");
        String lastname=req.getParameter("lname");
        String contactno=req.getParameter("cno");
        String sgender=req.getParameter("gender");
        String Address=req.getParameter("add");
        String button=req.getParameter("btn");
        
        
        out.println(username);
        out.println(password);
        out.println(firstname);
        out.println(lastname);
        out.println(contactno);
        out.println(sgender);
        out.println(Address);
        
         Database db=new Database();
       out.println(db.connectbd());
       
       
         if(button.equals("Registration"))
      
       {
          if(username.toString().equals("")||password.toString().equals("")||firstname.toString().equals("")||lastname.toString().equals("")||contactno.toString().equals("")||sgender.toString().equals("")||Address.toString().equals(""))
          {
              resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Some Field Are Empty');");
        out.println("location='v_registration.jsp';");
        out.println("</script>"); 
          }
          else
       {
         String abc=db.Insert("insert into vender_reg(r_username,r_password,r_firstname,r_lastname,r_cno,gender,r_address)values('"+username.toString()+"','"+password.toString()+"','"+firstname.toString()+"','"+lastname.toString()+"','"+contactno.toString()+"','"+sgender.toString()+"','"+Address.toString()+"')");
         out.println(abc);
         
         resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Resitration Successfull');");
        out.println("location='v_login.jsp';");
        out.println("</script>");
       }
       
       
       
       
        
    }

    
    }
}
