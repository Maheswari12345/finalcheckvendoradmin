


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.cognizant.dao.GrizzDAO"%>
<%@page import="com.cognizant.bean.Grizz"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DELETE PAGE</title>
</head>
<body>
<%
GrizzDAO grDAO=new GrizzDAO();
int status=0,s=0;
status=grDAO.delete(request.getParameter("name"));
s=grDAO.delete1(request.getParameter("name"));
if(status==0){
     out.println("Error");
}
     else{
           response.sendRedirect("list.jsp");
           
     }
%>
</body>
</html>