<%-- 
    Document   : view_category
    Created on : Apr 23, 2022, 12:14:33 PM
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
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap_1.css">
         <%@include file="user_navbar.jsp" %>   
        <style>
           .container
           {
               margin-left: 70px;
              padding: 10px;
               margin-top:20px;
               background-color: #E0E0E0;
               width: 90%;
           }
           
            .div1
            {
                display: inline-block;
                margin-left: 60px;
                margin-top: 50px;
                margin-right:0px;
                background-color: white;
                box-shadow:1px 1px 1px 1px black;
                
            }
           
            
        </style>
    </head>
    <body>
         <div class="container">
        <%
        Connection cn=null;
        
       Statement st=null;
         try
        {
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_real_estate_portfolio_management_system","root","root");
   st=cn.createStatement();
        String sql="select * from category";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next())
                       {
            String cname=rs.getString("c_name");
            String des=rs.getString("c_desc");
            String img=rs.getString("c_image");
                 
  %>
  
  <div class="div1">
      <form name="abc" action="view_property.jsp" method="post">
              <img src="<%=img%>" height="250" width="270">
              
              <br><br>
              
              <center>
                  <label>Category:-</label>
                  <label><%=cname%></label></center><br><input type="hidden" name="cname" value="<%=cname%>">
                 <center> 
                      <label>Description:-</label>
                     <label><%=des%></label></center>
        <br>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
        <input type="submit" name="view" value="View Property" class="form-control btn btn-success">
                 </div>     
          </div>    
   <br>
      </form>         
     
  </div>
        <%   
        }
        
        }catch(Exception ex)
        {
           out.println(ex.toString());
        }


%>
</div>
    </body>
</html>
