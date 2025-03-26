/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.lang.model.element.Name;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Comptech
 */
public class Category extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        PrintWriter out=resp.getWriter();
        
        String id=req.getParameter("Id");
        String name=req.getParameter("Name");
        String desc=req.getParameter("descption");
        String image=req.getParameter("choose image");
        String button=req.getParameter("btn");
        
        out.println(id);
        out.println(name);
        out.print(desc);
        out.println(image);
        
        Database db=new Database();
        out.println(db.connectbd());
        
       if(button.equals("Save"))
           
           
       {
          if(id.toString().equals("")||name.toString().equals("")||desc.toString().equals("")||image.toString().equals(""))
          {
              resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Some Field Are Empty');");
        out.println("location='v_add_property.jsp';");
        out.println("</script>"); 
          }
          else
        {
            String abc=db.Insert("Insert into category(c_name,c_desc,c_image)values('"+name.toString()+"','"+desc.toString()+"','images/"+image.toString()+"')");
            out.println(abc);
            
             resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('category insert Successfull');");
        out.println("category.jsp';");
        out.println("</script>");
        }
       }
           
        if (button.equals("Update"))
        {
            String update=db.Update("update category set c_name='"+name.toString()+"',c_desc='"+desc.toString()+"',c_image='"+image.toString()+"' where c_id='"+id.toString()+"'");
             out.println(update);
              resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('category updated Successfull');");
        out.println("category.jsp';");
        out.println("</script>");
       
        }
        if(button.equals("Delate"))
        {
          String delete=db.Delete("Delete from  category where c_id='"+id.toString()+"'");
          out.println(delete);
          
          resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Delete Successfull');");
        out.println("category.jsp';");
        out.println("</script>");
       
        }

       
       if(button.equals("Search"))
       {
           Connection cn=null;
           Statement st=null;
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_real_estate_portfolio_management_system","root","root");
               st=cn.createStatement();
               String sql="select * from category where c_id='"+id.toString()+"'";
              
               ResultSet rs=st.executeQuery(sql);
               
              while(rs.next())
                {
                  req.setAttribute("name", rs.getString("c_name"));
                  req.setAttribute("desc", rs.getString("c_desc"));
                  req.setAttribute("image", rs.getString("c_image"));
                  
                  req.getRequestDispatcher("category.jsp").forward(req, resp);
                  
               }  
             }
            catch(Exception ex)
            {
                out.println(ex.toString());
            }
       }
}
}

  
