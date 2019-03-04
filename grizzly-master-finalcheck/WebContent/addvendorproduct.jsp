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


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

   <link rel="stylesheet" type="text/css" href="styles/center.css">
<style>

.checked {
  color: orange;
}

</style>

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
				 gr=grizz.readPage1(ses.getAttribute("username").toString());
				
			%>
			
			 Welcome, <%=gr.getUsername() %>
			 
			 
			 
			 
			 
			 
			 
			 
			 
			 
			 
			  &emsp;&emsp;<a href="vendorindex.jsp"><button
					type="button" class="btn btn-secondary round btn-sm">Logout</button></a>

		</header>
	</div>


	<div class="navi">
		<header class="btn btn-tertiary"
			style="color: white; background-color: lightgray">PROFILE
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; Edit</header>
		<br> <br>
		<div class="text-center">
			 <img src="images/user.png"  alt="picture" width="100px" height="100px"/><br><br>
			<br>
			<h3><%=gr.getUsername()%></h3>
			<br>
			
			
			  <h3 style="font-size: 20px;color: grey"><span class="fa fa-star checked"></span>  &nbsp;  <%=gr.getVendorrating() %></h3><br>
			
			
			
			<h4>Contact</h4>
			<h4 style="color: grey">
			
			
		<%=gr.getMobile()%>
			
			
			
			
			
			
			
			
			
			
			
			</h4>
			<br>
			<h4>Address</h4>
			<h4 style="color: grey">
		<%=gr.getAddress()%>
			
			
			
			
			
			
			
			
			
			
			
			</h4>
			<br>
						
			
			
			
			
			
			
			
			
			
			
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
			<form action="addvendorproductaction.jsp" method="GET">

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