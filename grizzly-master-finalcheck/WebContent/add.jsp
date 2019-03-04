<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.cognizant.dao.GrizzDAO"%>
<%@page import="com.cognizant.bean.Grizz"%>

<!DOCTYPE html>
<html>
<head>
<title>Add-Products</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
			 
			<h3></h3>
			&emsp;&emsp; <a href="vendorindex.jsp"><button
					type="button" class="btn btn-secondary round btn-sm">Logout</button></a>

		</header>
	</div>


	<div class="navi">
		<header class="btn btn-tertiary"
			style="color: white; background-color: lightgray">PROFILE
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; Edit</header>
		<br>
		<br>
		<div class="text-center">
			<img src="images/user.png" alt="picture" width="100px" height="100px" /><br>
			<br>
			<h3>
				<%=gr.getUsername()%>

			</h3>
			<br>

			<h4>ID</h4>
			<h4 style="color: grey">
				<%=gr.getUserid()%>

			</h4>

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
					
						<button type="submit" class="btn btn-secondary btn-lg  gr"
							style="background-color: darkgrey; box-shadow: 0px 10px grey; height: 58px; width: 334px; color: black">
							<h3>PRODUCT</h3>
						</button>
					
				</div>

				<div class="btn btn-tertiary  col-sm-4 "
					style="background-color: lightgray">
					<h3>VENDORS</h3>
				</div>
				<div class="btn btn-tertiary  col-sm-3 gr"
					style="background-color: #eee">
					<h3></h3>
				</div>


			</div>

			<!--<ul class="nav nav-tabs row" id="myTab" role="tablist">
      <li class="nav-item bg">
<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true" style="background-color: grey;width:500px;color: black ">PRODUCT</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false" style="background-color:#eee;color: grey;width:500px ">VENDOR</a>
                                </li>
            
                            </ul>-->
			<form action="addaction.jsp" method="GET">

				<div class="row top-buffer">
					<div class="col">
						<img src="images/add.PNG" alt="product-image"><br> <img
							src="images/add1.PNG" alt="product-image">

					</div>

					<div class="col-sm-6">
				

						<input type="text" name="id" class="form-control"
							placeholder="Enter Product ID" />
						<hr>
						<input type="text" list="category" class="form-control"
							name="category" placeholder="category" />

						<datalist id="category">
							<option value="Electronics">
							<option value="Books">
							<option value="Toys">
						</datalist>
						<hr />
						<input type="text" name="name" class="form-control"
							placeholder="Name" />
						<hr />
						<input type="text" name="description" class="form-control"
							placeholder="Description" />
						<hr />
						<input type="text" name="price" class="form-control"
							placeholder="Price" />
						<hr />

					</div>
					<div style="padding-left: 1000px">
						<button type="submit" class="btn btn-secondary btn-rounded round">Add</button>
						<br>
						<br>
						<button type="reset" class="btn btn-light btn-rounded round">Cancel</button>
						<br>

					</div>
			</form>




			<!--  <div class="row align-items-end" style="margin-top: 150px;">
    <div class="col align-items-start" >
        <div >
            <button type="submit" class="btn btn-secondary btn-rounded"><span style="color:black">Add</span>
</button>
</div>
<div class="row">
    </br><button type="clear" class="btn card-title btn-rounded"><span style="color:black">Cancel</span>
</button>
</div>
</div>
</div>-->
		</div>
	</div>
	</div>
</body>
</html>