<%-- 
    Document   : complaint
    Created on : Feb 3, 2022, 5:36:13 PM
    Author     : Comptech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>complaint </title>
          <link rel="stylesheet" href="bootstrap_1.css">
           <script src="validation.js"></script>
         <%@include file="user_navbar.jsp" %> 
        <style>
            .container
            {
               
                background-color: white;
                box-shadow: 3px 3px 3px 3px black;
                border-radius: 5px 5px 5px 5px;
                width: 38%;
                margin-left: 250px;
                margin-top: 80px;
                opacity: 0.9;
                
            }
            h1
            {
                text-align: center;
                font-family: algerian;
                color: black;
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
    <body style="background-image:url(images/real-estate-16.jpg);background-size: cover">
        <form name="abc" action="complaint" method="post">
        <div class="container">
            <br>
            <h1 style="font-size:12px solid "> Complaint Form</h1>
            <br>
            
            <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-10">
                     <label> Name</label>
                     <input type="text" class="form-control" name="cname" placeholder="Complaint Name"  onkeypress="javascript :return isString(event)">
            </div>
        </div>
            <br> <br>
            
            <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-10">
                     <label>Complaint Subject</label>
                     <input type="text" class="form-control" name="csubject" placeholder="Complaint Subject" onkeypress="javascript :return isString(event)">
                 </div>
            </div><br>
                <br>
                 <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-10">
                     <label>Description</label>
                     <td> <textarea class="form-control" name="descption" placeholder="description" style="box-shadow: 1px 1px 1px 1px; border-bottom:  1px solid;  background-color: lavenderblush;  border-radius: 8px 8px 8px 8px "placeholder="Description" ></textarea></td>
                 </div></div>
                <br><br>
                 <div class="row">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-8">
                <input type="submit" class="btn btn-primary form-control" name="btn" value="Complaint">
          
            </div>
        </div>
                <br>
        </div>
        <br>
        </form>
    </body>
</html>
