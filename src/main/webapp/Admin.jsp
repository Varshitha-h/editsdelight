<%@page import="com.learn.editsdelight.entities.User"%>
<%@page import="com.learn.editsdelight.entities.Feedback"%>
<%@page import="java.util.List"%>
<%@page import="com.learn.editsdelight.dao.Userdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<%@include file="Components/Bootstrap_cdn.jsp"%>

</head>
<body style="background-color:#c8c3cc;">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <!-- Container wrapper -->
  <div class="container-fluid">
    <!-- Toggle button -->
    <button
      class="navbar-toggler"
      type="button"
      data-mdb-toggle="collapse"
      data-mdb-target="#navbarLeftAlignExample"
      aria-controls="navbarLeftAlignExample"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <i class="fas fa-bars"></i>
    </button>

    <!-- Collapsible wrapper -->
    <div class="collapse navbar-collapse" id="navbarLeftAlignExample">
      <!-- Left links -->
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.html">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Registration.jsp">Registration</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Products.jsp">Product</a>
        </li>
          </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Service.jsp">Service</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.html" >Logout</a>
        </li>
      </ul>
      <!-- Left links -->
    </div>
    <!-- Collapsible wrapper -->
  </div>
  <!-- Container wrapper -->
</nav>
	<div class="row">
		<div class="col-md-6">
			<div class="card" data-toggle="modal" data-target="#user">
				<div class="card-body text-center">
					<div class="container">
						<img alt="" src="#" style="max-width: 100px;"
							class="img-fluid rounded-circle">
					</div>
					<h1>Customer Count</h1>

				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="card" data-toggle="modal" data-target="#Remove">
				<div class="card-body text-center">
					<div class="container">
						<img alt="" src="#" style="max-width: 100px;"
							class="img-fluid rounded-circle">
					</div>
					<h1>Remove Customer</h1>

				</div>
			</div>
		</div>
		<div class="col-md-6 mt-5">
			<div class="card" data-toggle="modal" data-target="#service">
				<div class="card-body text-center">
					<div class="container">
						<img alt="" src="#" style="max-width: 100px;"
							class="img-fluid rounded-circle">
					</div>
					<h1>FeedBack From Customer</h1>
				</div>
			</div>
		</div>
		<div class="col-md-6 mt-5">
			<div class="card" data-toggle="modal" data-target="#rc">
				<div class="card-body text-center">
					<div class="container">
						<img alt="" src="Images/group.png" style="max-width: 100px;"
							class="img-fluid rounded-circle">
					</div>
					<h1>Registered Customer</h1>

				</div>
			</div>
		</div>

	</div>
</body>

<!-- Start of user count model -->
<!-- Modal -->
<%
Userdao ud = new Userdao();
%>
<div class="modal fade" id="user" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Customer Count</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<h5>
					The Number of Customer is
					<%=ud.countuser()%></h5>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div>
<!-- end of user count model -->
<!-- Start of remove customer model -->
<div class="modal fade" id="Remove" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Customer Count</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="DeleteServlet" method="get">
					<div class="form-group">
						<label for="exampleFormControlTextarea1">Enter the Userid
							to Remove Customer</label> <input type="number" name="userid">
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary">Submit</button>

					</div>

				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<!-- end of remove customer model -->
<!-- Start of service available model -->
<div class="modal fade" id="service" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Customer Count</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<%
				Userdao userdao = new Userdao();
				List<Feedback> list = userdao.getallBlogPosts();
				for (Feedback fb : list) {
				%>
				<table class="table">
					<tbody>
						<tr>
							<th scope="row">ID</th>
							<td><%=fb.getFeedbackid()%></td>

						</tr>
						<tr>
							<th scope="row">UserName</th>
							<td><%=fb.getUsername()%></td>

						</tr>
						<tr>
							<th scope="row">FeedBack</th>
							<td><%=fb.getFeedbackString()%></td>
						</tr>
						<tr>
							<th scope="row">Rating</th>
							<td><%=fb.getRating()%></td>
						</tr>
						<tr>
							<th scope="row">Improvement</th>
							<td><%=fb.getImprovementString()%></td>
						</tr>
					</tbody>
				</table>
				<%
				}
				%>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div>
<!-- end of Service available model -->
<!-- Start of Registered customer model -->
<div class="modal fade" id="rc" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Customer Count</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<%
				Userdao userdao2 = new Userdao();
				List<User> list1 = userdao2.getallUsers();
				for (User u : list1) {
				%>
				<table class="table">
					<tbody>
						<tr>
							<th scope="row">ID</th>
							<td><%=u.getUid()%></td>

						</tr>
						<tr>
							<th scope="row">UserName</th>
							<td><%=u.getUsername()%></td>

						</tr>
						<tr>
							<th scope="row">Email</th>
							<td><%=u.getUemail()%></td>
						</tr>
						<tr>
							<th scope="row">Phone Number</th>
							<td><%=u.getUphoneno()%></td>
						</tr>
					</tbody>
				</table>
				<%
				}
				%>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div>
<!-- end of Registered customer model -->
<!-- Start of Service Taken customer model -->
<div class="modal fade" id="stc" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Customer Count</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
			
			
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div>
<!-- end of Service Taken customer model -->
</html>