<%-- 
    Document   : Feedback
    Created on : Feb 2, 2022, 10:14:27 PM
    Author     : Comptech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback </title>
        
    <link rel="stylesheet" href="bootstrap_1.css">
     <script src="validation.js"></script>
     <%@include file="user_navbar.jsp" %>
        <style>
            .container
            {
               
                background-color: white;
                box-shadow: 3px 3px 3px 3px black;
                border-radius: 5px 5px 5px 5px;
                width: 44%;
                margin-left: 250px;
                margin-top: 45px;
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
        <form name="abc" action="Feedback" method="post">
        <div class="container">
            <br>
            <h1 style="font-size:2px solid ">Feedback Form</h1>
            
            <br>
             
            <div class="row">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-8">
                     <label>Name</label>
                     <input type="text" class="form-control" name="name" placeholder="Name" onkeypress="javascrit: return isString(event)">
            </div>
        </div>
            <br>
             <div class="row">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-8">
                     <label>Email</label>
                     <input type="text" class="form-control" name="mail" placeholder="Email Id">
            </div>
        </div>
            <br>
            
            <br>
             <div class="row">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-8">
                     <label>Feedback</label>
                     <td> <textarea class="form-control" name="desc" style="box-shadow: 1px 1px 1px 1px;  background-color: lavenderblush;  border-radius: 8px 8px 8px 8px; border-bottom: 1px solid" placeholder="Description" ></textarea></td>
            </div>
        </div>
            <br>
            <div class="row">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-8">
                     <input type="Submit" class="btn btn-primary" name="btn" value="Send Feedback">
                      
                 </div>
            </div>
            <br>
        </div>
        <br>
        </form>
    </body>
</html>
