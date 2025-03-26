<%-- 
    Document   : payment_maker
    Created on : Feb 2, 2022, 9:50:22 PM
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
        <title>payment_maker </title>
         <link rel="stylesheet" href="bootstrap_1.css">
          <script src="validation.js"></script>
         
        <style>
            .container
            {
               
                background-color: white;
                box-shadow: 3px 3px 3px 3px black;
                border-radius: 5px 5px 5px 5px;
                width: 50%;
                margin-left: 250px;
                margin-top: 5px;
                opacity: 0.9;
            }
           h1
           {
               text-align: center;
               color: black;
               font-family: algerian;
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
    <body style="background-image:url(images/real-estate-16.jpg); background-size: cover">
        <form name="abc" action="payment_maker" method="post">
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
                    
                    
                                         int id=1;
                      try
                        {
                          st=cn.createStatement();
                          String sql="select pid from user_paymentmaker";
                          ResultSet rs=st.executeQuery(sql);
                          while(rs.next())
                           {
                              id=Integer.parseInt(rs.getString("pid"))+1;
                           }
                        }
                      catch(Exception ex)
                         {
                          out.println(ex);
                         }
           %> 
            
        <div class="container">
            
            <h1 style="font-size:2px solid ">Payment Maker Form</h1>
            
             <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-5">
                     <label>Payment Id</label>
                     <input type="text" class="form-control" name="id" value="<%=id%>" placeholder="Payment Id" onkeypress="javascript :return isNumber(event)"></div>
                 &nbsp;&nbsp;&nbsp;
                 <div class="col-sm-5">
                     <label>Username</label>
                     <input type="text" class="form-control" name="uname" placeholder="Username" value="<%=session.getAttribute("fname")%>">  
             </div>
        </div>
            <br>
            <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-5">
                     <label>Password</label>
                     <input type="password" class="form-control" name="pass" placeholder="Password" maxlength="8" style="box-shadow:1px 1px 1px 1px;  background-color: lavenderblush;   border-radius: 8px 8px 8px 8px; border-bottom: 1px solid"></div>
                 &nbsp;&nbsp;&nbsp;
                <div class="col-sm-5"> 
                     <label>Contact Number</label>
                     <input type="text" class="form-control" name="cno" placeholder="Contact Number" value="<%=session.getAttribute("cno")%>" onkeypress="javascript :return isContactno(event)" maxlength="12"></div>
            </div>
        
            <br>
            <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-5">
                     <label>Flat Details</label>
                     <input type="text" class="form-control" name="flatdets" placeholder="Flat Details" value="<%=session.getAttribute("htitle")%>"  onkeypress="javascript :return isAlphanumric(event)"></div>
                &nbsp;&nbsp;&nbsp;
                <div class="col-sm-5">
                     <label>Total Price</label>
                <input type="text" class="form-control" name="tprice" placeholder="Total Price" value="<%=session.getAttribute("priec")%>" onkeypress="javascript :return isFloat(event)">   
            </div>
            </div>
        <br>
        
         <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-8">
                     <label>Select Payment Type</label>
                 <select class="form-control" name="selpayment" style="box-shadow: 1px 1px 1px 1px;  background-color: lavenderblush;  border-radius: 8px 8px 8px 8px; border-bottom: 1px solid">
                         <option>select payment type</option>
                         <option>Debit cards</option>
                         <option>Credit cards</option>
                     </select>
                 </div>
            </div>
        <br>
         <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-5">
                     <label>Card Honlder Name</label>
                     <input type="text" class="form-control" name="tpayment" placeholder="Card Holder Name" onkeypress="javascript :return isString(event)"></div>
                     &nbsp;&nbsp;&nbsp;
                     <div class="col-sm-5">
                        <label>Cvv</label>
                        <input type="password" class="form-control" name="tbalance" placeholder="Cvv No" style="box-shadow:1px 1px 1px 1px;  background-color: lavenderblush;   border-radius: 8px 8px 8px 8px; border-bottom: 1px solid" onkeypress="javascript : return isFloat(event)" maxlength="3"><br></div>
                
            </div>
        
        <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-5">
                     <label>Card Exp Date</label>
                     <input type="date" class="form-control" name="edate" placeholder="Date" style="box-shadow:1px 1px 1px 1px;  background-color: lavenderblush;   border-radius: 8px 8px 8px 8px; border-bottom: 1px solid"></div>
                 &nbsp;&nbsp;&nbsp;
                 </div>
        <br>
        
        <div class="row">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-8">
                     <input type="submit" class="btn btn-primary form-control"  name="btn" value="Pay">
           
            </div>
        </div> <br>
        </div>
        <br>
        </form>
    </body>
</html>
