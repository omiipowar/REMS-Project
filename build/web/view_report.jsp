<%-- 
    Document   : view_report
    Created on : May 21, 2022, 10:56:33 AM
    Author     : Comptech
--%>

<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            Connection conn = null;
            String event=request.getParameter("abc");
            String sdate=request.getParameter("sdate");
            String edate=request.getParameter("edate");
            
            
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_real_estate_portfolio_management_system", "root", "root");
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            
            if(event.equals("Category"))
            {
            
            File reportFile = new File(application.getRealPath("Report\\category1.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            
            byte[] bytes =JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
            
            
             if(event.equals("Add Property"))
            {
            
            File reportFile = new File(application.getRealPath("Report\\property1.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            byte[] bytes =JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
            
             if(event.equals("Booking"))
            {
            
            File reportFile = new File(application.getRealPath("Report\\booking.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            parameters.put("date1", sdate);
            parameters.put("date2", edate);
            
            byte[] bytes =JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
             if(event.equals("Payment Maker"))
            {
            
            File reportFile = new File(application.getRealPath("Report\\payment.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            byte[] bytes =JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
            
            if(event.equals("Feedback"))
            {
            
            File reportFile = new File(application.getRealPath("Report\\feedback.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            byte[] bytes =JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
            
        %> 
    </body>
</html>
