<%-- 
    Document   : view_complint
    Created on : Feb 15, 2022, 1:18:05 PM
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
        <title> view_complint</title>
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

<h1 style="font-size:12px so
    lid "> VIEW COMPLAINT</h1>

<table>
  <tr>
    <th>Id</th>
    <th>Complaint Name</th>
    <th>Complaint Subject</th>
    <th>Description</th>
     <th>Status</th>
     
  </tr>
   <%
  String event=request.getParameter("btninsert");
  Connection cn=null;
  Statement st=null;
  
         try{
              Class.forName("com.mysql.jdbc.Driver");
    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_real_estate_portfolio_management_system","root","root");
   
              st=cn.createStatement();
   String sql="Select * from user_complaint ";
   ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                                       {   
                    String cid=rs.getString("cid"); 
                    String type=rs.getString("c_type");
                    String sub=rs.getString("sub");
                    String des=rs.getString("descri");
                    
               %>
  <tr>
  <form name="abc" action="solution.jsp" method="post">
      <td><%=cid%></td><input type="hidden" name="type" value="<%=type%>">
    <td><%=type%></td>
    <td><%=sub%></td><input type="hidden" name="sub" value="<%=sub%>">
    <td><%=des%></td><input type="hidden" name="des" value="<%=des%>">
    <td><input type="submit" value="Solution" name="solution" class="form-control btn btn-secondary"></td>
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
