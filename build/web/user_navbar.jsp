<%-- 
    Document   : user_navbar
    Created on : May 12, 2022, 4:01:39 PM
    Author     : Comptech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Real Estate</title>
         <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <body>
       <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.html">User_navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav me-auto">
        
        <li class="nav-item">
          <a class="nav-link" href="view_booking.jsp">View_Booking</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="view_category.jsp">View_Category</a>
        </li>
<!--        <li class="nav-item">
          <a class="nav-link" href="solution.jsp">View_Solution</a>
           
        </li>-->
        <li class="nav-item">
          <a class="nav-link" href="Feedback.jsp">Feedback</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="complaint.jsp">complaint</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="index.html">Logout</a>
        </li>
        
         
         
      </ul>
    
    </div>
  </div>
</nav>
    </body>
</html>
