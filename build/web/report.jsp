

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report</title>
      <link rel="stylesheet" href="bootstrap_1.css">
      <script src="validation.js"></script>
    <style>      
        .container
        {
            background-color:white;
            height:500px;
            width:35%;
            margin-top:70px;
            margin-left:500px;
            float:right;
            margin-bottom: 50px;
            position:absolute;
            border:solid;
            border-color:black;
            box-shadow: 5px 5px 5px 5px black;
            border-radius:5px;
            opacity:0.9
        }
       
            
         
    </style>
    
    </head>
    <center>
    </head>
    <body style="background-color:whitesmoke">
        <form name="r" action="view_report.jsp" method="post">
           
        <div class="container">
            <h2><b>Report</b></h2>
            <br>
        
                     <div class="row"></div>
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <input type="submit" name="abc" style="width:300px" class="btn btn-primary" value="Category">&nbsp;
                     </div><br>
                     
<!--                    <div class="row"></div>
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <input type="submit" name="abc" style="width:300px" class="btn btn-primary" value="Add Property">&nbsp;
                     </div><br>-->
                     
                  
                     
                    <div class="row"></div>
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <input type="submit" name="abc" style="width:300px" class="btn btn-primary" value="Payment Maker">&nbsp;
                     </div><br>
                     
                     <div class="row"></div>
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <input type="submit" name="abc" style="width:300px" class="btn btn-primary" value="Feedback">&nbsp;
                     </div><br>
                     
                       <div class="row"></div>
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <input type="date" name="sdate" class="form-control"><br>
                    <input type="date" name="edate" class="form-control"><br>
                    <input type="submit" name="abc" style="width:300px" class="btn btn-primary" value="Booking">&nbsp;
                     </div><br>
                </div><br><br><br>               
</center>
        </div> 
        <br>
       
        <br>
         </form>
    </body>
</html>
