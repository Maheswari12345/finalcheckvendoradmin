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
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Product-list</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="styles/center.css">

</head>

<body>

	<div style="background-color: #eee">
		<header>
			<b>GRIZZLY</b> <img src="images/logo1.PNG" class="img" alt="logo"
				width="60px" height="60px" /> <b>STORE</b> &emsp;&emsp;&emsp; <input
				type="search"
				placeholder="Search                   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;        &#xf002;"
				class="fa fa-search rounded-pill"
				style="border: 0; width: 300px; height: 40px" role="button">
            
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <a class="btn"><i
				class="fa fa-bell" role="button" style="font-size: 20px"></i></a>
			&emsp;&emsp;&emsp;
			<%try {
				HttpSession ses=request.getSession();
				GrizzDAO grizz = new GrizzDAO();
				Grizz gr= new Grizz();
				 gr=grizz.readPage(ses.getAttribute("username").toString());
				
			%>
			
			 Welcome, <%=gr.getUsername() %>
			 
			 
			 
			 
			 
			 
			 
			 
			 
			 
			 
			  &emsp;&emsp;<a href="index.jsp"><button
					type="button" class="btn btn-secondary round btn-sm">Logout</button></a>

		</header>
	</div>


	<div class="navi">
		<header class="btn btn-tertiary"
			style="color: white; background-color: lightgray">PROFILE
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; Edit</header>
		<br> <br>
		<div class="text-center">
			<img src="images/user.png" alt="picture" width="100px" height="100px" /><br>
			<br>
			<h3><%=gr.getUsername()%></h3>
			<br>
			
			
			<h4>ID</h4>
			<h4 style="color: grey">
			
			
		<%=gr.getUserid()%>
			
			
			
			
			
			
			
			
			
			
			
			</h4>
			<br>
			<h4>Designation</h4>
			<h4 style="color: grey">
		<%=gr.getDesignation()%>
			
			
			
			
			
			
			
			
			
			
			
			</h4>
			<br>
			<h4>Office</h4>
			<h4 style="color: grey">
			
			
			<%=gr.getOffice()%>
			
			
			
			
			
			
			
			
			
			
			
			</h4>
		</div>
			<%
							
							} catch (Exception e) {
								out.println(e.getMessage());
							}
			%>
	</div>

	<div class="col ">
		<div class="container">
			<div class="row">
				<div>
					<form method="get"
						action="file:///D:/grizzly/static/admin/list.html">
						<button type="submit" class="btn btn-secondary btn-lg  gr"
							style="background-color: darkgrey; box-shadow: 0px 10px grey; height: 58px; width: 334px; color: black">
							<h3>PRODUCT</h3>
						</button>
					</form>
				</div>
				<div class="btn btn-tertiary  col-sm-4 gr"
					style="background-color: lightgray">
					<h3>VENDORS</h3>
				</div>
				<div class="btn btn-tertiary  col-sm-3 gr"
					style="background-color: #eee">
					<h3></h3>
				</div>


			</div>

			<div class="row top-buffer">
				<div class="dropdown">
					<button type="button" class="btn btn-light dropdown-toggle round"
						style="padding-top: 10px; width: 226px; font-size: 20px"
						data-toggle="dropdown">Choose Action</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Link 1</a> <a
							class="dropdown-item" href="#">Link 2</a> <a
							class="dropdown-item" href="#">Link 3</a>
					</div>
				</div>
				&emsp;&emsp; <input type="search"
					placeholder="Category list                     &#xf002"
					class="fa fa-search rounded-pill"
					style="border: 0; width: 200px; height: 40px" role="button">





				&emsp;&emsp;&emsp;&emsp;
				<div class="dropdown">
					<button type="button" class="btn btn-light dropdown-toggle round"
						style="padding-top: 10px; width: 226px; font-size: 20px"
						data-toggle="dropdown">Sort By</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="#">Product</a> <a
							class="dropdown-item" href="#">Brand</a> <a class="dropdown-item"
							href="#">Category</a> <a class="dropdown-item" href="#">Rating</a>
					</div>
				</div>
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				<a href="add.jsp"><button type="button" class="btn btn-standard round"
					style="padding-top: 10px; width: 226px; font-size: 20px; background-color: grey; padding-inline-end: 2em; color: white">
					Add Products</button></a>


				<!--table-->
			</div>


			<%
				try {
					GrizzDAO grDAO = new GrizzDAO();

					List<Grizz> grList = new ArrayList<Grizz>();
					grList = grDAO.readAll();
			%>
			<div class="table-wrapper-scroll-y">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th scope="col"></th>
							<th scope="col">Product List</th>
							<th scope="col">Category</th>
							<th scope="col">Brand</th>
							<th scope="col">Rating</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody>

						<%
							for (Grizz gr : grList) {
						%>
						<tr>
							 <td id="noborder"><label class="container1"> <input
                                                                type="checkbox" checked="checked"> <span
                                                                class="checkmark"></span></td>

							<td><%=gr.getName()%></td>
							<td><%=gr.getCategory()%></td>
							<td><%=gr.getBrand()%></td>
							<td><%=gr.getRating()%></td>





							<td><a href="view.jsp?name=<%=gr.getName() %>" class="btn btn-light round view">view</a>
								<button type="button" class="btn btn-light round view">Block</button>
								<a href="remove.jsp?name=<%=gr.getName()%>" class="btn btn-light round view">Remove</a></td>


						</tr>


						<%
							}
							} catch (Exception e) {
								out.println(e.getMessage());
							}
						%>
					</tbody>
				</table>

			</div>


		</div>
	</div>
</body>
</html>