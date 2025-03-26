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
public class Feedback extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        
       PrintWriter out=resp.getWriter();
        
       String Name=req.getParameter("name");
       String Email=req.getParameter("mail");
      
       String description=req.getParameter("desc");
       String button=req.getParameter("btn");
       
       out.println(Name);
       out.println(Email);
       
       out.println(description);
       
       
        Database db=new Database();
       out.println(db.connectbd());
       
       
         if(button.equals("Send Feedback"))
       {
          if(Name.toString().equals("")||Email.toString().equals("")||description.toString().equals(""))
          {
              resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Some Field Are Empty');");
        out.println("location='Feedback.jsp';");
        out.println("</script>"); 
          }
          else
             
       {
         String abc=db.Insert("insert into user_feedback(f_name,f_mailid,f_desc)values('"+Name.toString()+"','"+Email.toString()+"','"+description.toString()+"')");
         out.println(abc);
         
          resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Feedback Successfull');");
        out.println("location='complaint.jsp';");
        out.println("</script>");
       
       }
    }
}
}
    