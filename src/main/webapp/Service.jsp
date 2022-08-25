<%@page import="com.learn.editsdelight.entities.User"%>
<%
User user = (User) session.getAttribute("currentuser");
if (user == null) {
	response.sendRedirect("Login.jsp");
}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Service page</title>
<%@include file="Components/Bootstrap_cdn.jsp"%>
<style>
.card:hover {
	background: #e2e2e2;
	cursor: pointer;
}
body {
	background: url(Service_webpage/bg1.jpg);
	background-size: cover;
	background-attachment: fixed
	}

</style>
</head>

<body>
	<!-- Navbar starting  -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<!-- Container wrapper -->
		<div class="container-fluid">
			<!-- Toggle button -->
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse" data-mdb-target="#navbarLeftAlignExample"
				aria-controls="navbarLeftAlignExample" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>

			<!-- Collapsible wrapper -->
			<div class="collapse navbar-collapse" id="navbarLeftAlignExample">
				<!-- Left links -->
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.html">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Package.jsp">Packages</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Products.jsp"><%=user.getUsername()%></a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Logout">Logout</a></li>
						

				</ul>
				<!-- Left links -->
			</div>
			<!-- Collapsible wrapper -->
		</div>
		<!-- Container wrapper -->
	</nav>
	<!-- Navbar Ending  -->
	<div class="conatiner-fluid mt-3">
		<div class="row mt-3">
			<div class="col-md-4">
				<a href="Foodphotography.jsp">
					<div class="card mt-3">
						<div class="card-body text-center">
							<div class="container">
								<img alt="" src=".." style="max-width: 100px;"
									class="">
							</div>
							<h3>Food Photography</h3>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-4">
			<a href="BabyPhotography.jsp">
				<div class="card mt-3" >
					<div class="card-body text-center">
						<div class="container">
							<img alt="" src=".." style="max-width: 100px;"
								class="img-fluid rounded-circle">
						</div>
						<h3>Baby Photography</h3>
					</div>
				</div>
				</a>
			</div>
			<div class="col-md-4">
			<a href="EventPhotography.jsp">
				<div class="card mt-3">
					<div class="card-body text-center">
						<div class="container">
							<img alt="" src=".." style="max-width: 100px;"
								class="img-fluid rounded-circle">
						</div>
						<h3>Event Photography</h3>
					</div>
				</div>
				</a>
			</div>
			<div class="col-md-4">
			<a href="CandidPhotography.jsp">
				<div class="card mt-3">
					<div class="card-body text-center">
						<div class="container">
						<img alt="" src=".." style="max-width: 100px;"
								class="img-fluid rounded-circle">
						</div>
						<h3>Candid Photography</h3>
					</div>
				</div>
				</a>
			</div>
			<div class="col-md-4">
			<a href="FashionPhotography.jsp">
				<div class="card mt-3">
					<div class="card-body text-center">
						<div class="container">
							<img alt="" src=".." style="max-width: 100px;"
								class="img-fluid rounded-circle">
						</div>

						<h3>Fashion Photography</h3>
					</div>
				</div>
				</a>
			</div>
			<div class="col-md-4">
			<a href="ProductPhotography.jsp">
				<div class="card mt-3" >
					<div class="card-body text-center">
						<div class="container">
							<img alt="" src=".." style="max-width: 100px;"
								class="img-fluid rounded-circle">
						</div>
						<h3>Product Photography</h3>
					</div>
				</div>
				</a>
			</div>
			<div class="col-md-4">
			<a href="PortraitPhotography.jsp">
				<div class="card mt-3" >
					<div class="card-body text-center">
						<div class="container">
							<img alt="" src=".." style="max-width: 100px;"
								class="img-fluid rounded-circle">
						</div>
						<h3>Portrait Photography</h3>
					</div>
				</div>
				</a>
			</div>
			<div class="col-md-4">
			<a href="GlamourPhotography.jsp">
				<div class="card mt-3" >
					<div class="card-body text-center">
						<div class="container">
							<img alt="" src="" style="max-width: 100px;"
								class="img-fluid rounded-circle">
						</div>

						<h3>Glamour Photography</h3>
					</div>
				</div>
				</a>
			</div>
			<div class="col-md-4">
			<a href="MaternityPhotography.jsp">
				<div class="card mt-3" >
					<div class="card-body text-center">
						<div class="container">
							<img alt="" src=".." style="max-width: 100px;"
								class="img-fluid rounded-circle">
						</div>
						<h3>Maternity Photgraphy</h3>
					</div>
				</div>
				</a>
			</div>
					<div class="col-md-4">
			<a href="ConceptualPhotography.jsp">
				<div class="card mt-3" >
					<div class="card-body text-center">
						<div class="container">
							<img alt="" src=".." style="max-width: 100px;"
								class="img-fluid rounded-circle">
						</div>
						<h3>Conceptual Photgraphy</h3>
					</div>
				</div>
				</a>
			</div>
									
					
				
				
			
			<div class="col-md-4">
			<a href="CommercialPhotography.jsp">
				<div class="card mt-3" >
					<div class="card-body text-center">
						<div class="container">
							<img alt="" src=".." style="max-width: 100px;"
								class="img-fluid rounded-circle">
						</div>
						
						<h3>Commercial Photography</h3>
					</div>
				</div>
				</a>
			</div>
			<div class="col-md-4">
			<a href="PreweddingPhotography.jsp">
				<div class="card mt-3" >
					<div class="card-body text-center">
						<div class="container">
							<img alt="" src=".." style="max-width: 100px;"
								class="img-fluid rounded-circle">
								
						</div>

						<h3>Pre-wedding Photography</h3>
					</div>
				</div>
				</a>
			</div>

		</div>
	</div>
	<!-- Start fud modal -->
	<div class="modal fade" id="foodphotography" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header custom-bg text-black">
					<h5 class="modal-title" id="exampleModalLabel">Food
						PhotoGraphy Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="FoodPhotography" method="post">
						<input type="hidden" name="operation" value="addcategory">
						<div class="form-group">
							<input type="text" class="form-control" name="name"
								placeholder="Name" required>
						</div>
						<div class="form-group">
							<input type="number" class="form-control" name="phno"
								placeholder="Phone Number" required>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="email"
								placeholder="E-mail Id" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="cousine"
								placeholder="Cousine" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="loc"
								placeholder="Location or Hotel name for Shot" required>
						</div>
						<div class="form-group">
							<select name="budget" id="" class="form-control">
								<option value="Gold">Gold</option>
								<option value="platinum">platinum</option>
								<option value="silver">silver</option>


							</select>
						</div>


						<div class="container text-center">
							<button class="btn btn-outline-success">Add Category</button>
							<button type="submit" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- End Fud Modal -->
	<!-- Start of baby modal -->
	<div class="modal fade" id="babyphotography" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header custom-bg text-black">
					<h5 class="modal-title" id="exampleModalLabel">Baby
						PhotoGraphy Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="BabyPhotography" method="post">
						<input type="hidden" name="operation" value="addcategory">
						<div class="form-group">
							<input type="text" class="form-control" name="name"
								placeholder="Name" required>
						</div>
						<div class="form-group">
							<input type="number" class="form-control" name="phno"
								placeholder="Phone Number" required>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="email"
								placeholder="E-mail Id" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="requirements"
								placeholder="requirements" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="loc"
								placeholder="city" required>
						</div>
						<div class="form-group">
							<select name="budget" id="" class="form-control">
								<option value="Gold">Gold</option>
								<option value="platinum">platinum</option>
								<option value="silver">silver</option>


							</select>
						</div>


						<div class="container text-center">
							<button class="btn btn-outline-success">Add Category</button>
							<button type="submit" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- End of baby modal -->
	<!-- start of event photography -->
	<div class="modal fade" id="eventphotography" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header custom-bg text-black">
					<h5 class="modal-title" id="exampleModalLabel">Event
						PhotoGraphy Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="EventPhotography" method="post">
						<input type="hidden" name="operation" value="addcategory">
						<div class="form-group">
							<input type="text" class="form-control" name="name"
								placeholder="Name" required>
						</div>
						<div class="form-group">
							<input type="number" class="form-control" name="phno"
								placeholder="Phone Number" required>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="email"
								placeholder="E-mail Id" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="date"
								placeholder="event date" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="time"
								placeholder="event time" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="description"
								placeholder="event description" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="address"
								placeholder="address" required>
						</div>
						<div class="form-group">
							<select name="budget" id="" class="form-control">
								<option value="Gold">Gold</option>
								<option value="platinum">platinum</option>
								<option value="silver">silver</option>


							</select>
						</div>


						<div class="container text-center">
							<button class="btn btn-outline-success">Add Category</button>
							<button type="submit" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end of event photography -->
	<!-- start of candid photography -->
	<div class="modal fade" id="candidphotography" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header custom-bg text-black">
					<h5 class="modal-title" id="exampleModalLabel">Candid
						PhotoGraphy Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="CandidPhotography" method="post">
						<input type="hidden" name="operation" value="addcategory">
						<div class="form-group">
							<input type="text" class="form-control" name="name"
								placeholder="Name" required>
						</div>
						<div class="form-group">
							<input type="number" class="form-control" name="phno"
								placeholder="Phone Number" required>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="email"
								placeholder="E-mail Id" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="date"
								placeholder="event date" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="time"
								placeholder="event time" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="description"
								placeholder="event description" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="address"
								placeholder="address" required>
						</div>
						<div class="form-group">
							<select name="budget" id="" class="form-control">
								<option value="Gold">Gold</option>
								<option value="platinum">platinum</option>
								<option value="silver">silver</option>


							</select>
						</div>


						<div class="container text-center">
							<button class="btn btn-outline-success">Add Category</button>
							<button type="submit" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end of candid picture -->
	<!-- start of fashion photography -->
	<div class="modal fade" id="fashionphotography" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header custom-bg text-black">
					<h5 class="modal-title" id="exampleModalLabel">Fashion
						PhotoGraphy Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="FashionPhotography" method="post">
						<input type="hidden" name="operation" value="addcategory">
						<div class="form-group">
							<input type="text" class="form-control" name="name"
								placeholder="Name" required>
						</div>
						<div class="form-group">
							<input type="number" class="form-control" name="phno"
								placeholder="Phone Number" required>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="email"
								placeholder="E-mail Id" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="date"
								placeholder="event date" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="time"
								placeholder="event time" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="description"
								placeholder="event description" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="address"
								placeholder="address" required>
						</div>
						<div class="form-group">
							<select name="budget" id="" class="form-control">
								<option value="Gold">Gold</option>
								<option value="platinum">platinum</option>
								<option value="silver">silver</option>


							</select>
						</div>


						<div class="container text-center">
							<button class="btn btn-outline-success">Add Category</button>
							<button type="submit" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end of fashion photography -->
	<!-- start of product photography -->
	<div class="modal fade" id="productphotography" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header custom-bg text-black">
					<h5 class="modal-title" id="exampleModalLabel">Product
						PhotoGraphy Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="ProductPhotography" method="post">
						<input type="hidden" name="operation" value="addcategory">
						<div class="form-group">
							<input type="text" class="form-control" name="name"
								placeholder="Name" required>
						</div>
						<div class="form-group">
							<input type="number" class="form-control" name="phno"
								placeholder="Phone Number" required>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="email"
								placeholder="E-mail Id" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="pname"
								placeholder="product name" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="desc"
								placeholder="product decription" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="address"
								placeholder="address" required>
						</div>

						<div class="form-group">
							<select name="budget" id="" class="form-control">
								<option value="Gold">Gold</option>
								<option value="platinum">platinum</option>
								<option value="silver">silver</option>


							</select>
						</div>


						<div class="container  text-center">
							<button class="btn btn-outline-success">Add Category</button>
							<button type="submit" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end of product photography -->
	<!--  start of portrait photography -->
	<div class="modal fade" id="portraitphotography" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header custom-bg text-black">
					<h5 class="modal-title" id="exampleModalLabel">Portrait
						PhotoGraphy Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="PortraitPhotography" method="post">
						<input type="hidden" name="operation" value="addcategory">
						<div class="form-group">
							<input type="text" class="form-control" name="name"
								placeholder="Name" required>
						</div>
						<div class="form-group">
							<input type="number" class="form-control" name="phno"
								placeholder="Phone Number" required>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="email"
								placeholder="E-mail Id" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="date"
								placeholder="event date" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="description"
								placeholder="event description" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="address"
								placeholder="address" required>
						</div>
						<div class="form-group">
							<select name="budget" id="" class="form-control">
								<option value="Gold">Gold</option>
								<option value="platinum">platinum</option>
								<option value="silver">silver</option>


							</select>
						</div>


						<div class="container text-center">
							<button class="btn btn-outline-success">Add Category</button>
							<button type="submit" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end of portrait photography -->
	<!-- start of glamour photography -->
	<div class="modal fade" id="glamorphotography" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header custom-bg text-black">
					<h5 class="modal-title" id="exampleModalLabel">Glamour
						PhotoGraphy Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="GlamourPhotography" method="post">
						<input type="hidden" name="operation" value="addcategory">
						<div class="form-group">
							<input type="text" class="form-control" name="name"
								placeholder="Name" required>
						</div>
						<div class="form-group">
							<input type="number" class="form-control" name="phno"
								placeholder="Phone Number" required>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="email"
								placeholder="E-mail Id" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="date"
								placeholder="event date" required>
						</div>

						<div class="form-group">
							<input type="text" class="form-control" name="description"
								placeholder="event description" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="address"
								placeholder="address" required>
						</div>
						<div class="form-group">
							<select name="budget" id="" class="form-control">
								<option value="Gold">Gold</option>
								<option value="platinum">platinum</option>
								<option value="silver">silver</option>


							</select>
						</div>


						<div class="container text-center">
							<button class="btn btn-outline-success">Add Category</button>
							<button type="submit" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end of glamour photography -->
	<!-- start of maternity photography -->
	<div class="modal fade" id="maternityphotography" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header custom-bg text-black">
					<h5 class="modal-title" id="exampleModalLabel">Maternity
						PhotoGraphy Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="MaternityPhotography" method="post">
						<input type="hidden" name="operation" value="addcategory">
						<div class="form-group">
							<input type="text" class="form-control" name="name"
								placeholder="Name" required>
						</div>
						<div class="form-group">
							<input type="number" class="form-control" name="phno"
								placeholder="Phone Number" required>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="email"
								placeholder="E-mail Id" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="date"
								placeholder="event date" required>
						</div>

						<div class="form-group">
							<input type="text" class="form-control" name="description"
								placeholder="event description" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="address"
								placeholder="address" required>
						</div>
						<div class="form-group">
							<select name="budget" id="" class="form-control">
								<option value="Gold">Gold</option>
								<option value="platinum">platinum</option>
								<option value="silver">silver</option>


							</select>
						</div>


						<div class="container text-center">
							<button class="btn btn-outline-success">Add Category</button>
							<button type="submit" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end of maternity photography -->
	<!-- start of conceptual photography -->
	<div class="modal fade" id="conceptualphotography" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header custom-bg text-black">
					<h5 class="modal-title" id="exampleModalLabel">Conceptual
						PhotoGraphy Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="ConceptualPhotography" method="post">
						<input type="hidden" name="operation" value="addcategory">
						<div class="form-group">
							<input type="text" class="form-control" name="name"
								placeholder="Name" required>
						</div>
						<div class="form-group">
							<input type="number" class="form-control" name="phno"
								placeholder="Phone Number" required>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="email"
								placeholder="E-mail Id" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="date"
								placeholder="event date" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="time"
								placeholder="event time" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="description"
								placeholder="event description" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="adress"
								placeholder="address" required>
						</div>
						<div class="form-group">
							<select name="budget" id="" class="form-control">
								<option value="Gold">Gold</option>
								<option value="platinum">platinum</option>
								<option value="silver">silver</option>


							</select>
						</div>


						<div class="container text-center">
							<button class="btn btn-outline-success">Add Category</button>
							<button type="submit" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end of conceptual photography -->
	<!-- start of commercial photography -->
	<div class="modal fade" id="commercialphotography" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header custom-bg text-black">
					<h5 class="modal-title" id="exampleModalLabel">Commercial
						PhotoGraphy Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="CommercialPhotography" method="post">
						<input type="hidden" name="operation" value="addcategory">
						<div class="form-group">
							<input type="text" class="form-control" name="name"
								placeholder="Name" required>
						</div>
						<div class="form-group">
							<input type="number" class="form-control" name="phno"
								placeholder="Phone Number" required>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="email"
								placeholder="E-mail Id" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="date"
								placeholder="event date" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="time"
								placeholder="event time" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="description"
								placeholder="event description" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="adress"
								placeholder="address" required>
						</div>
						<div class="form-group">
							<select name="budget" id="" class="form-control">
								<option value="Gold">Gold</option>
								<option value="platinum">platinum</option>
								<option value="silver">silver</option>


							</select>
						</div>


						<div class="container text-center">
							<button class="btn btn-outline-success">Add Category</button>
							<button type="submit" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end of commercial photography -->
	<!--  start pre-wedding photography -->
	<div class="modal fade" id="pre-weddingphotography" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header custom-bg text-black">
					<h5 class="modal-title" id="exampleModalLabel">Pre-wedding
						PhotoGraphy Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="PreweddingPhotography" method="post">
						<input type="hidden" name="operation" value="addcategory">
						<div class="form-group">
							<input type="text" class="form-control" name="name"
								placeholder="Name" required>
						</div>
						<div class="form-group">
							<input type="number" class="form-control" name="phno"
								placeholder="Phone Number" required>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="email"
								placeholder="E-mail Id" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="date"
								placeholder="event date" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="time"
								placeholder="event time" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="description"
								placeholder="event description" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="adress"
								placeholder="address" required>
						</div>
						<div class="form-group">
							<select name="budget" id="" class="form-control">
								<option value="Gold">Gold</option>
								<option value="platinum">platinum</option>
								<option value="silver">silver</option>


							</select>
						</div>


						<div class="container text-center">
							<button class="btn btn-outline-success">Add Category</button>
							<button type="submit" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end of pre-wedding photography -->
	
</body>
</html>