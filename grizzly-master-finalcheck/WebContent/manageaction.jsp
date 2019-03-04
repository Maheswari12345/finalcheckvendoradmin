 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.cognizant.dao.GrizzDAO"%>
<%@page import="com.cognizant.bean.Grizz"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
       pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editing...</title>
</head>
<body>
       <%
              try {
                     GrizzDAO grDAO=new GrizzDAO();
                     Grizz gr=new Grizz();
                    
                     gr.setName(request.getParameter("Name"));
                     
                     gr.setInstock(Integer.parseInt(request.getParameter("Instock")));
                  
                     gr.setBuffer(Integer.parseInt(request.getParameter("Buffer")));
                    
                     
                     
                     int us = 0;
                     us =grDAO.update1(gr);
                     if (us == 0) {
                           out.println("Error");
                     } else {
                           response.sendRedirect("inventory.jsp");
                     }
              } catch (Exception e) {
                     out.println(e.getMessage());
              }
       %>
</body>
</html>
