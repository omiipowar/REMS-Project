<%-- 
    Document   : view_solution
    Created on : May 12, 2022, 4:16:22 PM
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
        <title> My Booking</title>
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

<h1 style="font-size:12px solid "> VIEW My BOOKING</h1>

<table>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th> Subject</th>
    <th>Description</th>
    <th> Solution</th>
    
    
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
    String sql="Select * from solution where s_name='"+session.getAttribute("fname") +"'";
   ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                                       {   
                    
                    String uname=rs.getString("s_name");
                    String htitle=rs.getString("s_sub");
                    String price=rs.getString("s_desc");
                    String add=rs.getString("s_solution");
                   
               %>
  <tr>
    <td><%=id++%></td>
    <td><%=uname%></td>
    <td><%=htitle%></td>
    <td><%=price%></td>
    <td><%=add%></td>
   
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
