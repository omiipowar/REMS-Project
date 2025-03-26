<%-- 
    Document   : forgate
    Created on : May 14, 2022, 8:57:21 PM
    Author     : Comptech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password </title>
          <link rel="stylesheet" href="bootstrap_1.css">
           <script src="validation.js"></script> 
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
        <form name="abc" action="forgate" method="post">
        <div class="container">
            <br>
            <h1 style="font-size:12px solid "> Forgot Password</h1>
            <br>
            
            <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-10">
                     <label>Username </label>
                     <input type="text" class="form-control" name="uname" placeholder="Username "  onkeypress="javascript :return isString(event)">
            </div>
        </div>
            <br> <br>
                  <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-10">
                     <label>Password</label>
                <input type="password" class="form-control" name="pass" placeholder="Password" maxlength="8" style="box-shadow:1px 1px 1px 1px;  background-color: lavenderblush;  border-radius: 8px 8px 8px 8px; border-bottom: 1px solid">
           </div></div>
            
                <br><br>
                 <div class="row">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-8">
                     <input type="submit" class="btn btn-primary" name="btn"  value="Continue">&nbsp;&nbsp;
                     <input type="reset" name="btn" class="btn btn-danger" style="margin-left:60px;" value="Cancel">&nbsp;&nbsp;
            
            </div>
        </div>
                <br>
        </div>
        </form>
        <br>
    </body>
</html>
