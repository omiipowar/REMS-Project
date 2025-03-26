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
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Comptech
 */
public class login extends HttpServlet {

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
       
             HttpSession session=req.getSession();
        Connection cn=null;
        Statement st=null;
          if(button.equals("Login"))
         {
              try
             {
              Class.forName("com.mysql.jdbc.Driver");
              cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_real_estate_portfolio_management_system","root","root");
              st=cn.createStatement();
              String sql="select * from user_reg where r_username='"+email.toString()+"'and r_password='"+password.toString()+"'";
              ResultSet rs=st.executeQuery(sql);
              if(rs.next())
              {
                  session.setAttribute("user",rs.getString("r_username"));
                  session.setAttribute("fname",rs.getString("r_firstname"));
                   session.setAttribute("add",rs.getString("r_address"));
                    session.setAttribute("cno",rs.getString("r_cno"));
                  
                  
                  
                  resp.sendRedirect("view_category.jsp");
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
