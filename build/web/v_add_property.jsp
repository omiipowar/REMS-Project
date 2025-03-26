    

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : add
    Created on : Feb 3, 2022, 5:40:59 PM
    Author     : Comptech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add</title>
      <link rel="stylesheet" href="bootstrap_1.css">
       <script src="validation.js"></script>
       <%@include file="Amenubar.jsp" %>
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
        <script>
            function clear()
            {
                document.getElementById("name").value="";
                document.getElementById("sale").value="";
                document.getElementById("type").value="";
                document.getElementById("add").value="";
                document.getElementById("stay").value="";
                document.getElementById("cno").value="";
                document.getElementById("category").value="";
            }
           
        </script>
    </head>
    <body style="background-image:url(images/real-estate-16.jpg); background-size: cover">
        <form name="abc" action="v_add_property" method="post">
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
                          String sql="select aid from vender_addproperty";
                          ResultSet rs=st.executeQuery(sql);
                          while(rs.next())
                           {
                              id=Integer.parseInt(rs.getString("aid"))+1;
                           }
                        }
                      catch(Exception ex)
                         {
                          out.println(ex);
                         }
           %> 

            
        <div class="container">
           
            <h1 style="font-size:2px solid ">Add Property Form</h1>
            
             <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-5">
                     <label>Property Id</label>
                     <input type="text" class="form-control" name="id" value="<%=id%>" placeholder="Property Id" onkeypress="javascript :return isNumber(event)"></div>
                 &nbsp;&nbsp;&nbsp;
                 <div class="col-sm-5">
                     <label>Name</label>
                     <input type="text" class="form-control" id="name"  name="name" placeholder="Name" onkeypress="javascript :return isString(event)" value="<%=request.getAttribute("name")%>">
                 </div>
             </div>
            
            <br>
            <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-5">
                     <label>Expected Price</label>
                     <input type="text" class="form-control" id="sale" name="psale" placeholder="Property Sales" value="<%=request.getAttribute("sale")%>"></div>    
                 &nbsp;&nbsp;&nbsp;
                 <div class="col-sm-5">
                     <label>Select Rental type</label>
                     <select class="form-control" id="type" name="select_rental_type"  style="box-shadow: 1px 1px 1px 1px;  background-color: lavenderblush;  border-radius: 8px 8px 8px 8px; border-bottom: 1px solid" >
                        
                          <%
if(request.getAttribute("rental_type")!=null)
{                   

%>
                <option  selected><%=request.getAttribute("rental_type")%></option>
                <%
                
}
 else
{

%>
<option selected>select property Rental type</option>

<%

}
%>
                        
                         <option>Economic Rent</option>
                         <option>Gross Rent</option>
                         <option>Scarcity Rent</option>
                         <option>Differential Rent</option>
                         <option>Contract Rent </option>
                     </select>
        </div>
        </div>
            <br>
            <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-10">
                     <label>Address</label>
                     <td><textarea  class="form-control" name="add" id="add"  style="box-shadow:1px 1px 1px 1px;  background-color: lavenderblush;   border-radius: 8px 8px 8px 8px; border-bottom: 1px solid "placeholder="Address"  ><%=request.getAttribute("address")%></textarea></td>  
               
            </div>
        </div>
            <br>
            <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-5">
                     <label>Property Area</label>
                     <input type="text" class="form-control" name="plength of stay" id="stay" placeholder="Property Length Of Stay" onkeypress="javascript :return isFloat(event)" value="<%=request.getAttribute("length")%>"></div>
                 &nbsp;&nbsp;&nbsp;
                 <div class="col-sm-5">
                     <label>Date</label>
                                                      <%
                                 Date date2=new Date();
                                 SimpleDateFormat format1=new SimpleDateFormat("yyyy-MM-dd");
                                 String datee=format1.format(date2);
                                 %>


                                 
                     <input type="date" class="form-control"  min="<%=datee%>" name="date" style="box-shadow:1px 1px 1px 1px;  background-color: lavenderblush;  border-radius: 8px 8px 8px 8px; border-bottom: 1px solid "placeholder="date" value="<%=request.getAttribute("date")%>">  
                 </div>
        </div>
            <br>
         
            <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-5">
                     <label>Choose your image</label>
                     <input type="file" class="form-control" name="choose image"  style="box-shadow:1px 1px 1px 1px;  background-color: lavenderblush;  border-radius: 8px 8px 8px 8px; border-bottom: 1px solid "placeholder="choose your image"></div>
                 <br><br>
                  <div class="col-sm-1"></div>
                 <div class="col-sm-5">
                 <img src="<%=request.getAttribute("img")%>" width="100px" height="100px" >
                      
                 </div>
                 <div class="row">
                     <div class="col-sm-1"></div>
                 <div class="col-sm-5">
                     <label>Contact Number</label>
                     <input type="text" class="form-control" id="cno" name="cno" placeholder="Contact Number" onkeypress="javascript :return isContactno(event)" maxlength="12" value="<%=request.getAttribute("con")%>">  
                 </div>
       
                 <div class="col-sm-1"></div>
                 <div class="col-sm-5">
                     <label>Category</label>
                     <select class="form-control" name="cname">
                         <%
                        
             try
             {
               Class.forName("com.mysql.jdbc.Driver");
              cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_real_estate_portfolio_management_system","root","root");
               st=cn.createStatement();
               String sql="select c_name from category";
               ResultSet rs=st.executeQuery(sql);
               while(rs.next())
               {
%>
                         <option><%=rs.getString("c_name")%></option>
                         <%
                                    }             
  }catch(Exception ex)
             {
                 out.println(ex.toString());
             } %>
                         </select>
                 
                  </div>
            </div>
                     <br><br><br><br>
       
                 <div class="row">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-8">
                     <input type="submit" name="btn" class="btn btn-primary" value="Save">&nbsp;&nbsp;
                     <input type="submit" name="btn" class="btn btn-success" value="Update">&nbsp;&nbsp;
                     <input type="submit"  name="btn" class="btn btn-danger" value="Delate">&nbsp;&nbsp;
                     <input type="submit"  name="btn" class="btn btn-info" value="Search">&nbsp;&nbsp;
            </div>
        </div>
            <br>        
        </div> 
        <br>
        <%
if(request.getAttribute("con")==null)
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

