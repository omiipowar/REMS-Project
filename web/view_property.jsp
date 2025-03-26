<%-- 
    Document   : view_property
    Created on : Feb 6, 2022, 8:03:37 PM
    Author     : Comptech
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap_1.css">
    </head>
    <body>
         <%@include file="user_navbar.jsp" %>   
        
        <%

               Connection cn=null;
        
       Statement st=null;
         try
        {
         Class.forName("com.mysql.jdbc.Driver");
    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_real_estate_portfolio_management_system","root","root");
   st=cn.createStatement();
        String sql="select * from vender_addproperty where category='"+request.getParameter("cname")+"' and status='Pending'";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next())
                       {
            String cname=rs.getString("a_name");
            String sale=rs.getString("a_sale");
            String renttype=rs.getString("a_rentltype");
            String addr=rs.getString("a_address");
            String lstay=rs.getString("a_lengthofstay");
            String adate=rs.getString("a_date");
            String img=rs.getString("a_image");
            String cno=rs.getString("a_cno");
            String category=rs.getString("category");
                 
  %>
  <div class="container">
  <form name="ad" action="booking.jsp" method="post">
      <div class="well" style="background-color: #d1e0e0; margin-top: 10px;">
          <br>
      <div class="row">
          <div class="col-sm-4">
              <img src="<%=img%>" height="300" width="280" style="margin-left: 10px">
              <input type="hidden" name="image" value="<%=img%>">
          </div>
          <div class="col-sm-7">
              <div class="row">
                  <div class="col-sm-5">
                      <label>Property Name</label>
                  </div>
                  <div class="col-sm-7">
                      <label><%=cname%></label>
                      <input type="hidden" name="abcd" value="<%=cname%>">
                    
                  </div>
              </div>
                  <br>
                  <div class="row">
                  <div class="col-sm-5">
                      <label>Category Name</label>
                  </div>
                  <div class="col-sm-7">
                      <label><%=category%></label>
                    
                  </div>
              </div>
                  <br>
              <div class="row">
                  <div class="col-sm-5">
                      <label>Price</label>
                  </div>
                  <div class="col-sm-7">
                        <label><%=sale%></label><input type="hidden" name="price" value="<%=sale%>">
                      
                  </div>
              </div>
                  <br>
                  <div class="row">
                  <div class="col-sm-5">
                      <label>Rent Type</label>
                  </div>
                  <div class="col-sm-4">
                      <label><%=renttype%></label>
                     
                  </div>
                      <div class="col-sm-3">
                          <input type="submit" name="btn_submit" value="Book Property" class="btn btn-primary">
                      </div>
              </div>
                  
                  <br>
                  <div class="row">
                  <div class="col-sm-5">
                      <label>Address</label>
                  </div>
                  <div class="col-sm-7">
                      <label><%=addr%></label>
                       
                  </div>
              </div>
                  <br>
                  <div class="row">
                  <div class="col-sm-5">
                      <label>Length Of Stay</label>
                  </div>
                  <div class="col-sm-7">
                      <label><%=lstay%></label>
                       
                  </div>
              </div>
                  <br>
                  <div class="row">
                  <div class="col-sm-5">
                      <label>Date</label>
                  </div>
                  <div class="col-sm-7">
                      <label><%=adate%></label>
                       
                  </div>
              </div>
                  <br>
                  <div class="row">
                  <div class="col-sm-5">
                      <label>Contact</label>
                  </div>
                  <div class="col-sm-7">
                      <label><%=cno%></label>
                       
                  </div>
              </div>
                  <br>
                  
                  
          </div>
      </div>
      
  </div>
        
  </form>
                  
        </div>
        
        <%   
        }
        
        }catch(Exception ex)
        {
           out.println(ex.toString());
        }


%>
    </body>
</html>
