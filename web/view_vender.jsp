<%-- 
    Document   : view_vender
    Created on : Feb 6, 2022, 8:03:14 PM
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
        <title>view_vender</title>
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

<h1 style="font-size:12px solid "> VIEW VENDER</h1>

<table>
  <tr>
    <th>Id</th>
    <th>Username</th>
    <th>Password</th>
    <th>First Name</th>
     <th>Last Name</th>
    <th>Contact No</th>
    <th>Gender</th>
    <th>Address </th>
  </tr>
   <%
  String event=request.getParameter("btninsert");
  Connection cn=null;
  Statement st=null;
  
         try{
              Class.forName("com.mysql.jdbc.Driver");
    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_real_estate_portfolio_management_system","root","root");
   
              st=cn.createStatement();
   String sql="Select * from vender_reg ";
   ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                                       {   
                    String id=rs.getString("rid"); 
                    String uname=rs.getString("r_username");
                    String pass=rs.getString("r_password");
                    String fname=rs.getString("r_firstname");
                    String lname=rs.getString("r_lastname"); 
                    String cno=rs.getString("r_cno");
                    String Gender=rs.getString("r_gender");
                    String add=rs.getString("r_address");
               %>
  <tr>
    <td><%=id%></td>
    <td><%=uname%></td>
    <td><%=pass%></td>
    <td><%=fname%></td>
    <td><%=lname%></td>
    <td><%=cno%></td>
    <td><%=Gender%></td>
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

