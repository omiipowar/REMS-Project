<%-- 
    Document   : theams
    Created on : May 4, 2022, 7:41:06 PM
    Author     : Comptech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amenubar</title>
         <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <body>
       <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.html">Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav me-auto">
        
        <li class="nav-item">
          <a class="nav-link" href="category.jsp">Category</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="v_add_property.jsp">Add Property</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Admin_ViewBooking.jsp">View Booking</a>
           
        </li>
        <li class="nav-item">
          <a class="nav-link" href="view_payment_details.jsp">View Payment Details</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link" href="view_feedback.jsp">View Feedback</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="view_complint.jsp">View Complaint</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link" href="report.jsp">Report</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="index.html">Log Out</a>
        </li>
      </ul>
    
    </div>
  </div>
</nav>
    </body>
</html>
