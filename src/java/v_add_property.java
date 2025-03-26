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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Comptech
 */
public class v_add_property extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
       String pid=req.getParameter("id");
        String Name=req.getParameter("name");
        String property_sale=req.getParameter("psale");
        String pro_rental_type=req.getParameter("select_rental_type");
        String Address=req.getParameter("add");
        String length_of_stay=req.getParameter("plength of stay");
        String Date=req.getParameter("date");
        String image=req.getParameter("choose image");
        String contact_no=req.getParameter("cno");
        String cate=req.getParameter("cname");
        String button=req.getParameter("btn");
        
        out.println(pid);
        out.println(Name);
        out.println(property_sale);
        out.println(pro_rental_type);
        out.println(Address);
        out.println(length_of_stay);
        out.println(Date);
        out.println(image);
        out.println(cate);
        out.println(contact_no);
        
        
         Database db=new Database();
       out.println(db.connectbd());
       
       if(button.equals("Save"))
       {
          if(pid.toString().equals("")||Name.toString().equals("")||property_sale.toString().equals("")||pro_rental_type.toString().equals("")||Address.toString().equals("")||length_of_stay.toString().equals("")||Date.toString().equals("")||image.toString().equals("")||cate.toString().equals("")||image.toString().equals("")||contact_no.toString().equals(""))
          {
              resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Some Field Are Empty');");
        out.println("location='v_add_property.jsp';");
        out.println("</script>"); 
          }
          else
       {
         String abc=db.Insert("insert into vender_addproperty(a_name,a_sale,a_rentltype,a_address,a_lengthofstay,a_date,a_image,a_cno,category,status)values('"+Name.toString()+"','"+property_sale.toString()+"','"+pro_rental_type.toString()+"','"+Address.toString()+"','"+length_of_stay.toString()+"',"
                 + "'"+Date.toString()+"','images/"+image.toString()+"','"+contact_no.toString()+"','"+cate.toString()+"','Pending')");
         out.println(abc);
         resp.sendRedirect("v_add_property.jsp");
          resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Add Property successfull');");
        out.println("v_add_property.jsp';");
        out.println("</script>");   
       
         
       }
       }
        
        if (button.equals("Update"))
        {
            String update=db.Update("update vender_addproperty set a_name='"+Name.toString()+"',a_sale='"+property_sale.toString()+"',a_rentltype='"+pro_rental_type.toString()+"',a_address='"+Address.toString()+"',a_lengthofstay='"+length_of_stay.toString()+"',a_date='"+Date.toString()+"',a_image='images/"+image.toString()+"',a_cno='"+contact_no.toString()+"', category='"+cate.toString()+"' where aid='"+pid.toString()+"'");
             out.println(update);
              resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Update Add Property Successfull');");
        out.println("v_add_property.jsp';");
        out.println("</script>");
       
        }
        if(button.equals("Delate"))
        {
          String delete=db.Delete("Delete from  vender_addproperty where aid='"+pid.toString()+"'");
          out.println(delete);
          
          resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Delete Successfull');");
        out.println("v_add_property.jsp';");
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
               String sql="select * from vender_addproperty where aid='"+pid.toString()+"'";
              
               ResultSet rs=st.executeQuery(sql);
               
              while(rs.next())
                {
                  req.setAttribute("name", rs.getString("a_name"));
                  req.setAttribute("sale", rs.getString("a_sale"));
                  req.setAttribute("address", rs.getString("a_address"));
                   req.setAttribute("rental_type", rs.getString("a_rentltype"));
                  req.setAttribute("length", rs.getString("a_lengthofstay"));
                  req.setAttribute("date", rs.getString("a_date"));
                  req.setAttribute("img", rs.getString("a_image"));
                  req.setAttribute("con", rs.getString("a_cno"));
                  req.setAttribute("category", rs.getString("category"));
                  
                  req.getRequestDispatcher("v_add_property.jsp").forward(req, resp);
                  
               }  
             }
            catch(Exception ex)
            {
                out.println(ex.toString());
            }
        }
    }  
   } 
