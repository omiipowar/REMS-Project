<%-- 
    Document   : login
    Created on : Feb 1, 2022, 4:06:55 PM
    Author     : Comptech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> login</title>
          <link rel="stylesheet" href="bootstrap_1.css">
        <style>
          .container
            {
               
                background-color: white;
                box-shadow: 3px 3px 3px 3px black;
                border-radius: 5px 5px 5px 5px;
                width: 50%;
                margin-left: 250px;
                margin-top: 15px;
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
           a
           {
            border-bottom: black;
            font-size: 20px;
            font-style: Algerian;
           }
                
              
            
        </style>
    </head>
    <body style="background-image:url(images/real-estate-16.jpg); background-size: cover">
        <form name="abc" action="login" method="post">
        <div class="container">
            
           <img src="images/img.jpg" height="140px" width="140px" style="margin-left:200px">
            <h1 style="font-size:12px solid "> Login Form</h1>
            <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-9">
                     <label>Username</label>
                <input type="text" class="form-control" name="mail" placeholder="Username">
            </div>
        </div>
            <br> 
            <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-9">
                     <label>Password</label>
                <input type="password" class="form-control" name="pass" placeholder="Password" maxlength="8" style="box-shadow:1px 1px 1px 1px;  background-color: lavenderblush;  border-radius: 8px 8px 8px 8px; border-bottom: 1px solid">
<!--                <input type="checkbox"> <label style="font-size: 22px; font-family: bold; color:black">Remember Me</label>-->
                 </div>
            </div>
            <br>
                 <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-9">
                     <input type="Submit" class="btn btn-primary form-control" name="btn" value="Login"<label style="font-size: 20px"></label><br>
                     <label style="color:purple; font-size: 20px;font-family: Bold; margin-left: 300px"><a href="forgot_password.jsp" class="btn-btn-link">Forgot Password?</a></label>
                      <br>
                 </div>
                 </div>
                            <div class="row">
                       <div class="col-sm-1"></div>
                         <div class="col-sm-9">
                             <p>-----------------------------------------OR-------------------------------------------</p>
                         </div></div>
             <div class="row">
                       <div class="col-sm-2"></div>
                       <div class="col-sm-8">
                          <a href="https://www.google.co.in/"> <img src="images/goo.png" height="50px" width="50px" style="margin-left: 30px"> 
                          <a href="https://www.linkedin.com/signup"> <img src="images/in.jpg" height="50px" width="50px" style="margin-left: 30px"> 
                          <a href="https://www.facebook.com/">  <img src="images/fc.png" height="50px" width="50px" style="margin-left: 30px">
                           <br><br>
                           <label style="color: black;font-size: 21px">Need an account?</label>  <a href="registration.jsp" class="btn-btn-link">Sign Up</a>
                                                                                           
                                       </div>
        </div>
                 <br>
        </div>
            <br>
        </form>
    </body>
</html>

