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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Comptech
 */
public class booking extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
       
       
        String username=req.getParameter("uname");
        String house_title=req.getParameter("htitle");
        String price=req.getParameter("priec");
        String address=req.getParameter("add");
        String contact_no=req.getParameter("cno");
        String current_date=req.getParameter("cdate");
        String button=req.getParameter("btn");
        
       
        out.println(username);
        out.println(house_title);
        out.println(price);
        out.println(address);
        out.println(contact_no);
        out.println(current_date);
        out.println(button);
        
         Database db=new Database();
       out.println(db.connectbd());
        HttpSession session=req.getSession();
        if(button.equals("Book Now"))
       {
          
         String abc=db.Insert("insert into user_booking(b_username,b_housetitle,b_price,b_address,b_cno,b_currentdate)values('"+username.toString()+"','"+house_title.toString()+"','"+price.toString()+"','"+address.toString()+"','"+contact_no.toString()+"','"+current_date.toString()+"')");
         out.println(abc);
         
         String update=db.Update("update vender_addproperty set status='Booked' where a_name='"+req.getParameter("htitle")+"'");
         out.println(update);
        
          session.setAttribute("htitle",req.getParameter("htitle"));
          session.setAttribute("priec",req.getParameter("priec"));
          resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Booking Successfull');");
        out.println("location='payment_maker.jsp';");
        out.println("</script>");
     
       
       
       
       
    }
    }
  }