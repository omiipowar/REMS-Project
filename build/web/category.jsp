<%-- 
    Document   : category
    Created on : Apr 20, 2022, 8:09:08 PMA
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
        <title>category </title>
        
         <link rel="stylesheet" href="bootstrap_1.css">
     <script src="validation.js"></script>
     <%@include file="Amenubar.jsp" %>
        <style>
            .container
            {
               
                background-color: white;
                box-shadow: 3px 3px 3px 3px black;
                border-radius: 5px 5px 5px 5px;
                width: 48%;
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
         <script>
            function clear()
            {
                document.getElementById("name").value="";
                document.getElementById("desc").value="";
                document.getElementById("image").value="";
            }
           
        </script>
    </head>
    <body style="background-image:url(images/real-estate-16.jpg); background-size: cover">
        <form name="abc" action="Category" method="post">
            
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
                          String sql="select c_id from category";
                          ResultSet rs=st.executeQuery(sql);
                          while(rs.next())
                           {
                              id=Integer.parseInt(rs.getString("c_id"))+1;
                           }
                        }
                      catch(Exception ex)
                         {
                          out.println(ex);
                         }
           %> 
        <div class="container">
            <br>
            <h1 style="font-size:2px solid ">Category Form</h1>
            
            <br>
             
            <div class="row">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-8">
                     <label>Category Id</label>
                     <input type="text" class="form-control" name="Id" value="<%=id%>" placeholder="Category Id" onkeypress="javascrit: return isNumber(event)">
            </div>
        </div>
            <br>
             <div class="row">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-8">
                     <label>Name</label>
                     <input type="text" class="form-control" name="Name" id="name" placeholder="Name" onkeypress="javascrit: return isString(event)" value="<%=request.getAttribute("name")%>">
            </div>
        </div>  
            <br>
            
           <div class="row">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-8">
                     <label>Description</label>
                     <td> <textarea class="form-control" name="descption" placeholder="description" style="box-shadow: 1px 1px 1px 1px; border-bottom:  1px solid;  background-color: lavenderblush;  border-radius: 8px 8px 8px 8px "placeholder="Description" onkeypress="javascript :return isAlphanumric(event)"></textarea></td>
                 </div></div>
            <br>
              <div class="row">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-4">
                     <label>Choose your image</label>
                     <input type="file" class="form-control" name="choose image"  style="box-shadow:1px 1px 1px 1px;  background-color: lavenderblush;  border-radius: 8px 8px 8px 8px; border-bottom: 1px solid "placeholder="choose your image"></div>
                 <br><br>
                  <div class="col-sm-1"></div>
                 <div class="col-sm-5">
                 <img src="<%=request.getAttribute("img")%>" width="180px" height="170px" >
                      
                 </div>
        </div>
            <br>

            <div class="row">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-8">
                     <input type="submit" class="btn btn-primary" name="btn" value="Save">&nbsp;&nbsp;
                     <input type="submit" name="btn" class="btn btn-success" value="Update">&nbsp;&nbsp;
                     <input type="submit"  name="btn" class="btn btn-danger" value="Delate">&nbsp;&nbsp;
                     <input type="submit"  name="btn" class="btn btn-info" value="Search">&nbsp;&nbsp;
                 </div>
            </div>
            <br>
        </div>
        <br>
        <%
        if(request.getAttribute("desc")==null)
{           
%>
<script>
    clear();
</script>
<%
}
%>
        </form>
    </body>
</html>
