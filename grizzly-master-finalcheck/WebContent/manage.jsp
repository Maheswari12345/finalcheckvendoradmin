<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.cognizant.dao.GrizzDAO"%>
<%@page import="com.cognizant.bean.Grizz"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="manageaction.jsp">

		<table>
			<tr>
				<th>column name</th>
				<th>value</th>
			</tr>
			<tr>
				<td>NAME</td>
				<td><input type="text" name="Name" value="<%=request.getParameter("name")%>"readonly="readonly"></td>
			</tr>
			
			<tr>
				<td>INSTOCK</td>
				<td><input type="text" name="Instock" value="<%=request.getParameter("instock") %>">
				</td>
			</tr>
			
			<tr>
				<td>BUFFER</td>
				<td><input type="text" name="Buffer" value="<%=request.getParameter("buffer") %>">
				</td>
			</tr>
			
			<tr>
				<td><input type="reset" value="clear"></td>
				<td><input type="submit" value="submit"></td>
			</tr>

		</table>
	</form>

</body>
</html>
