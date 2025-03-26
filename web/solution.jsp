<%-- 
    Document   : solution
    Created on : May 12, 2022, 11:15:20 AM
    Author     : Comptech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>solution </title>
          <link rel="stylesheet" href="bootstrap_1.css">
           <script src="validation.js"></script>
           <%@include file="Amenubar.jsp" %>
        <style>
            .container
            {
               
                background-color: white;
                box-shadow: 3px 3px 3px 3px black;
                border-radius: 5px 5px 5px 5px;
                width: 38%;
                margin-left: 250px;
                margin-top: 40px;
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
        <form name="abc" action="solution" method="post">
        <div class="container">
            <br>
            <h1 style="font-size:12px solid "> Solution Form</h1>
            <br>
            
            <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-10">
                     <label>Solution Name</label>
                     <input type="text" class="form-control" name="name" placeholder="Solution Name" value="<%=request.getParameter("type")%>" onkeypress="javascript :return isString(event)">
            </div>
        </div>
            <br> <br>
            
            <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-10">
                     <label>Solution Subject</label>
                     <input type="text" class="form-control" name="subject" placeholder="Solution Subject" value="<%=request.getParameter("sub")%>" onkeypress="javascript :return isString(event)">
                 </div>
            </div>
            <br><br>
                
                 <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-10">
                     <label>Description</label>
                     <td> <textarea class="form-control" name="descption" placeholder="description" style="box-shadow: 1px 1px 1px 1px; border-bottom:  1px solid;  background-color: lavenderblush;  border-radius: 8px 8px 8px 8px "placeholder="Description" onkeypress="javascript :return isAlphanumric(event)"><%=request.getParameter("des")%></textarea></td>
                 </div></div>
                <br><br>
                 <div class="row">
                 <div class="col-sm-1"></div>
                 <div class="col-sm-10">
                     <label>Solution</label>
                     <input type="text" class="form-control" name="solution" placeholder="solution" onkeypress="javascript :return isString(event)">
                 </div>
            </div>
            <br><br>
                 <div class="row">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-8">
                <input type="submit" class="btn btn-primary form-control" name="btn" value="Solution">
          
            </div>
        </div>
                <br>
        </div>
        <br>
        </form>
    </body>
</html>

    