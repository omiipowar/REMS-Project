<%-- 
    Document   : view_payment_maker
    Created on : Feb 6, 2022, 7:45:42 PM
    Author     : Comptech
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view_booking </title>
        <%@include file="Amenubar.jsp" %>
    </head>
    <body>
<style>
table {
  
  border-collapse: collapse;
  width: 90%;
  margin-left: auto;
  margin-right: auto;
  
}

td, th {
  border: 2px solid black;
  text-align: left;
  padding: 8px;
}
 h1
            {
                text-align: center;
                font-family: aerial;
                color: black;
                margin-top: 6%;
                
            }
tr:nth-child(even) {
  background-color:lavenderblush;
}
</style>
</head>
<body>

<h1 style="font-size:12px solid "> VIEW PAYMENT DETAILS</h1>

<table>
  <tr>
    <th>ID</th>
    <th>Username</th>
    <th> Password</th>
    <th>Contact</th>
    <th> Flat Details</th>
    <th>Total Prize </th>
    <th>Select card</th>
    <th>Card Name</th>
    <th>Cvv</th>
    <th>Expiry Date</th>
    
  </tr>
  
   <%
   int id=1;
  String event=request.getParameter("btninsert");
  Connection cn=null;
  Statement st=null;
 
         try{
              Class.forName("com.mysql.jdbc.Driver");
    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_real_estate_portfolio_management_system","root","root");
   
              st=cn.createStatement();
   String sql="Select * from user_paymentmaker ";
   ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                                       { 
                    String Id=rs.getString("pid");                      
                    String p_username=rs.getString("p_username"); 
                    String pass=rs.getString("ppassword");
                    String p_cno=rs.getString("p_cno");
                    String fdetails=rs.getString("p_flatdetails");
                    String tprice=rs.getString("p_total_price");
                    String spayment=rs.getString("p_selectpayment_type");
                    String cname=rs.getString("card_h_name");
                    String cv=rs.getString("cvv");
                    String exdate=rs.getString("exp_date");
                    
               %>
  <tr>
    <td><%=id++%></td>
    <td><%=p_username%></td>
    <td><%=pass%></td>
    <td><%=p_cno%></td>
    <td><%=fdetails%></td>
    <td><%=tprice%></td>
    <td><%=spayment%></td>
    <td><%=cname%></td>
    <td><%=cv%></td>
    <td><%=exdate%></td>
    
  </tr>
  <%                                
                                       
                }
         }catch(Exception e)
                                 {
             out.println(e.toString());
         }
                 
 

%>     

</table>

</body>
</html>