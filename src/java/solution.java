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
public class solution extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
    

    PrintWriter out=resp.getWriter();
        
        String Name=req.getParameter("name");
        String Subject=req.getParameter("subject");
        String descri=req.getParameter("descption");
        String Solution=req.getParameter("solution");
        String button=req.getParameter("btn");
        
        out.println(Name);
        out.println(Subject);
        out.println(descri);
        out.println(Solution);
        
         Database db=new Database();
       out.println(db.connectbd());
       
       if(button.equals("Solution"))
       {
          if(Name.toString().equals("")||Subject.toString().equals("")||descri.toString().equals("")||Solution.toString().equals(""))
          {
              resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Some Field Are Empty');");
        out.println("location='solution.jsp';");
        out.println("</script>"); 
          }
          else
           
       {
         String abc=db.Insert("insert into solution(s_name,s_sub,s_desc,s_solution)values('"+Name.toString()+"','"+Subject.toString()+"','"+descri.toString()+"','"+Solution.toString()+"')");
         out.println(abc);
          resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('solution form Successfull');");
        out.println("location='solution.jsp';");
        out.println("</script>");
       
       }
       
    }
 
    }   
}

