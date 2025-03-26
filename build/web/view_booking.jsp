<%-- 
    Document   : view_booking
    Created on : Feb 6, 2022, 8:04:01 PM
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
        <title>view_booking </title>
        <%@include file="user_navbar.jsp" %>   
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

<h1 style="font-size:12px solid "> VIEW BOOKING</h1>

<table>
  <tr>
    <th>ID</th>
    <th>Username</th>
    <th> House Title</th>
    <th>Price</th>
    <th> Address</th>
    <th>Contact No </th>
    <th>Current Date</th>
    
  </tr>
  
   <%
  String event=request.getParameter("btninsert");
  Connection cn=null;
  Statement st=null;
  
         try{
              Class.forName("com.mysql.jdbc.Driver");
    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_real_estate_portfolio_management_system","root","root");
   
              st=cn.createStatement();
   String sql="Select * from user_booking ";
   ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                                       {   
                    String id=rs.getString("bid"); 
                    String uname=rs.getString("b_username");
                    String htitle=rs.getString("b_housetitle");
                    String price=rs.getString("b_price");
                    String add=rs.getString("b_address");
                    String cno=rs.getString("b_cno");
                    String cdate=rs.getString("b_currentdate");
               %>
  <tr>
    <td><%=id%></td>
    <td><%=uname%></td>
    <td><%=htitle%></td>
    <td><%=price%></td>
    <td><%=add%></td>
    <td><%=cno%></td>
    <td><%=cdate%></td>
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
