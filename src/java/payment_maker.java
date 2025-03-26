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
public class payment_maker extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
       PrintWriter out=resp.getWriter();
       
        String pid=req.getParameter("id");
        String username=req.getParameter("uname");
        String password=req.getParameter("pass");
        String contact_no =req.getParameter("cno");
        String flat_details =req.getParameter("flatdets");
        String total_price=req.getParameter("tprice");
        String select_tpayment =req.getParameter("selpayment");
        String total_payment=req.getParameter("tpayment");
        String total_balance=req.getParameter("tbalance");
        String expd=req.getParameter("edate");
        String button=req.getParameter("btn");
        
        out.println(pid);
        out.println(username);
        out.println(password);
        out.println(contact_no);
        out.println(flat_details);
        out.println(total_price);
        out.println(select_tpayment);
        out.println(total_payment);
        out.println(total_balance);
        out.println(expd);
        
         Database db=new Database();
       out.println(db.connectbd());
       
        if(button.equals("Pay"))
       {
          if(pid.toString().equals("")||username.toString().equals("")||password.toString().equals("")||contact_no.toString().equals("")||flat_details.toString().equals("")||total_price.toString().equals("")||select_tpayment.toString().equals("")||total_payment.toString().equals("")||total_balance.toString().equals(""))
          {
              resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Some Field Are Empty');");
        out.println("location='Feedback.jsp';");
        out.println("</script>"); 
          }
          else
            
       {
         String abc=db.Insert("insert into user_paymentmaker (p_username,ppassword,p_cno,p_flatdetails,p_total_price,p_selectpayment_type,card_h_name,cvv,exp_date)values('"+username.toString()+"','"+password.toString()+"','"+contact_no.toString()+"','"+flat_details.toString()+"','"+total_price.toString()+"','"+select_tpayment.toString()+"','"+total_payment.toString()+"','"+total_balance.toString()+"','"+expd.toString()+"')");
         out.println(abc);
         
          resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('payment Successfull');");
        out.println("location='Feedback.jsp';");
        out.println("</script>");
       
       }
       
       
       
       
       
        
    }

    }
    
}
