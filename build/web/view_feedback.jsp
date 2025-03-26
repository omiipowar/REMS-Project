<%-- 
    Document   : view_feedback
    Created on : Feb 15, 2022, 1:18:28 PM
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
        <title>view feedback</title>
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
                margin-top: 2px;
                
            }
tr:nth-child(even) {
  background-color:lavenderblush;
}
</style>
</head>
<body>

<h1 style="font-size:12px solid "> VIEW Feedback</h1>

<table>
  <tr>
    <th>Id</th>
    <th>Name</th>
    <th>Email Id</th>
    <th>Title</th>
    <th>Description</th>
     
  </tr>
   <%
  String event=request.getParameter("btninsert");
  Connection cn=null;
  Statement st=null;
  
         try{
              Class.forName("com.mysql.jdbc.Driver");
    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_real_estate_portfolio_management_system","root","root");
   
              st=cn.createStatement();
   String sql="Select * from user_feedback ";
   ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                                       {   
                    String id=rs.getString("fid"); 
                    String name=rs.getString("f_name");
                    String mail=rs.getString("f_mailid");
                    String title=rs.getString("f_title");
                    String desc=rs.getString("f_desc");
                    
               %>
  <tr>
    <td><%=id%></td>
    <td><%=name%></td>
    <td><%=mail%></td>
    <td><%=title%></td>
    <td><%=desc%></td>
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
