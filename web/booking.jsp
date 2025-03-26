<%-- 
    Document   : booking
    Created on : Feb 2, 2022, 2:28:44 PM
    Author     : Comptech
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>booking</title>
         <link rel="stylesheet" href="bootstrap_1.css">
          <script src="validation.js"></script>
          
        <style>
            .container
            {
               
                background-color: white;
                box-shadow: 3px 3px 3px 3px black;
                border-radius: 5px 5px 5px 5px;
                width: 44%;
                margin-left: 250px;
                margin-top: 40px;
                opacity: 0.9;
                
            }
            h1
            {
                text-align: center;
                font-family: algerian;
                color: black;
                margin-top: 3px;
                
            }
            input[type=text]
            {
                
                box-shadow: 1px 1px 1px 1px;
                border-bottom: 1px solid;
                 border-radius: 8px 8px 8px 8px;
                 background-color: lavenderblush;
                    
            }
            label
            {
                color: blue;
                font-size: 20px;
                font-style: Algerian;
            }
            label:hover
            {
                color: red;
            }
           
                
              
            
        </style>
    </head>
    <body style="background-image:url(images/real-estate-16.jpg);background-size: cover">
        <form name="abc" action="booking" method="post">
             <%
                    Connection cn=null;
                    Statement st=null;
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
              cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_real_estate_portfolio_management_system","root","root");
                                              }
                    catch(Exception ex)
                    {
                        out.println(ex);
                        
                    }
                    
                    
//                                         int id=1;
                      try
                        {
                          st=cn.createStatement();
                          String sql="select bid from user_booking";
                          ResultSet rs=st.executeQuery(sql);
//                          while(rs.next())
//                           {
//                              id=Integer.parseInt(rs.getString("bid"))+1;
//                           }
                        }
                      catch(Exception ex)
                         {
                          out.println(ex);
                         }
           %> 
           
           
        <div class="container">
            <br>
            <h1 style="font-size:12px solid ">  Booking Form</h1>
            <br>
            <div class="row">
                 <div class="col-sm-1"></div>
                 
                     
                 <div class="col-sm-8">
                     <label>Username</label>
                     <input type="text" class="form-control" name="uname" placeholder="Username" value="<%=session.getAttribute("fname")%>">  
                 </div>
        </div>
            <br>
            
            <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-5">
                     <label>House Title</label>
                     <input type="text" class="form-control" name="htitle" value="<%=request.getParameter("abcd")%>" placeholder="House Title" onkeypress="javascript :return isString(event)"></div>
                     <input type="hidden" name="htitle" value="<%=request.getParameter("abcd")%>">
                     &nbsp;&nbsp;&nbsp;   
                 <div class="col-sm-5">
                     <label>Price</label>
                     <input type="text" class="form-control" name="priec" placeholder="Price" value="<%=request.getParameter("price")%>" onkeypress="javascript :return isFloat(event)">  
                     </div>
        </div>
            <br>
            <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-9">
                     <label>Address</label>
             <td><textarea  class="form-control" name="add" style="box-shadow:1px 1px 1px 1px;  background-color: lavenderblush;   border-radius: 8px 8px 8px 8px; border-bottom: 1px solid "placeholder="Address" onkeypress="javascript :return isAlphanumric(event)"><%=session.getAttribute("add")%></textarea></td>  
                 </div>
            </div>
                <br>
                
                <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-5">
                     <label>Contact Number</label>
                     <input type="text" class="form-control" name="cno" value="<%=session.getAttribute("cno")%>" placeholder="Contact Number" onkeypress="javascript :return isContactno(event)" maxlength="12"></div>
                 &nbsp;&nbsp;&nbsp;
                 <div class="col-sm-5">
                     <label>Current date</label>
                    <input type="Date" class="form-control" name="cdate" style="box-shadow:1px 1px 1px 1px;  background-color: lavenderblush;  border-bottom: 1px solid "placeholder="Current Date"> 
                 </div>
            </div>
                <br><br>
                      <div class="row">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-8">
                     <input type="submit"  name="btn" class="btn btn-primary form-control" value="Book Now">
                     
           
            </div>
        </div>
                     <br>
        </div>    
            <br>
        </form>
    </body>
</html>
