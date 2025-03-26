<%-- 
    Document   : v_registration
    Created on : Feb 3, 2022, 5:40:31 PM
    Author     : Comptech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>v_registration</title>
        <link rel="stylesheet" href="bootstrap_1.css">
         <script src="validation.js"></script>
        <style>
            .container
            {
               
                background-color: white;
                box-shadow: 3px 3px 3px 3px black;
                border-radius: 5px 5px 5px 5px;
                width: 55%;
                margin-left: 250px;
                margin-top: 10px;
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
        <form name="abc" action="v_registration" method="post">
        <div class="container">
            <br>
            <img src="images/register-icon.png" height="70px" width="40%" style="margin-left:160px">
            <h1 style="font-size:12px solid "> Registration Form</h1>
            
            <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-5">
                     <label> Username</label>
                <input type="text"  class="form-control"  name="uname" placeholder="Username" ></div>
                 &nbsp;&nbsp;&nbsp;
                 <div class="col-sm-5">
                     <label>Password</label>
                     <input type="password" class="form-control" name="pass" placeholder="Password" maxlength="8" style="box-shadow:1px 1px 1px 1px;  background-color: lavenderblush;   border-radius: 8px 8px 8px 8px; border-bottom: 1px solid"></div>
            </div>
            <br>
            <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-5">
                     <label>Enter First Name</label>
                     <input type="text" class="form-control" name="fname" placeholder="Enter First Name" onkeypress="javascript :return isString(event)"></div>
                 &nbsp;&nbsp;&nbsp;
                 <div class="col-sm-5">
                     <label>Enter last name</label>
                     <input type="text" class="form-control" name="lname" placeholder="Enter Last Name" onkeypress="javascript :return isString(event)"></div>
                 </div> 
            <br>
            
                   <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-5"> 
                     <label>Contact Number</label>
                     <input type="text" class="form-control" name="cno" placeholder="Contact Number" onkeypress="javascript :return isContactno(event)" maxlength="12"></div>
                 &nbsp;&nbsp;&nbsp;
                 <div class="col-sm-5">
                     <label>Select gender</label>
                      <select class="form-control" name="gender" style="box-shadow:1px 1px 1px 1px;  background-color: lavenderblush;  border-radius: 8px 8px 8px 8px; border-bottom: 1px solid" >
                         <option>select gender</option>
                         <option>Male</option>
                         <option>Female</option></select></div>
                 </div>
        <br>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-8">
                <label>Address</label>
        <td> <textarea class="form-control" name="add" style="box-shadow:1px 1px 1px 1px;  background-color: lavenderblush;  border-radius: 8px 8px 8px 8px; border-bottom: 1px solid "placeholder="Address"></textarea></td>
         
        <input type="checkbox"> I accepts the <label style=" color: 
           blue;border-bottom: 2px solid black;
          ont-size: 18px;  font-family: bold;">Terms of Use & privacy policy</label>
            </div>
        </div>
            <br>
             
        <div class="row">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-8">
                     <input type="submit" class="btn btn-primary form-control" name="btn" value="Registration">
                
           <label style="color: black;font-size: 17px">Have already an account?</label> <a href="v_login.jsp" class="btn-btn-link">Login Here</a>
           <br><br>
            </div>
        </div>   
        </div>
        <br>
        </form>
    </body>
</html>



    

