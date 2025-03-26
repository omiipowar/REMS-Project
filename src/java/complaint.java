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
public class complaint extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String complaint_name=req.getParameter("cname");
        String complaint_subject=req.getParameter("csubject");
        String descri=req.getParameter("descption");
        String button=req.getParameter("btn");
        
        out.println(complaint_name);
        out.println(complaint_subject);
        out.println(descri);
        
         Database db=new Database();
       out.println(db.connectbd());
       
       if(button.equals("Complaint"))
       {
          if(complaint_name.toString().equals("")||complaint_subject.toString().equals("")||descri.toString().equals(""))
          {
              resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Some Field Are Empty');");
        out.println("location='complaint.jsp';");
        out.println("</script>"); 
          }
          else
           
       {
         String abc=db.Insert("insert into user_complaint(c_type,sub,descri)values('"+complaint_name.toString()+"','"+complaint_subject.toString()+"','"+descri.toString()+"')");
         out.println(abc);
          resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('complaint Successfull');");
        out.println("location='complaint.jsp';");
        out.println("</script>");
       
       }
       
    }
 
    }   
    
}
