<%@page import="com.learn.editsdelight.entities.User" %>
<%
User user=(User)session.getAttribute("currentuser");
if(user==null){
	response.sendRedirect("Login.jsp");
}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><%=user.getUsername() %></title>
<%@include file="Components/Bootstrap_cdn.jsp"%>
</head>
 <body style="background-color:MidnightBlue;"> 


<div class="container">
		<div class="jumbotron text-center">
			<h1 class="display-3">
				Thank You!
				<%=user.getUsername()%>
				taking up our service .please check your mail for further details
			</h1>
			<p class="lead">
				<strong>Please Login to the Main Page For Further Details </strong>
			</p>
			<hr>
			<p>
				Having trouble? <a href="">Contact us</a>
			</p>
			<p class="lead">
				<a class="btn btn-primary btn-sm" href="Service.jsp"
					role="button">Continue to Service Page</a>
					<a class="btn btn-primary btn-sm" href="Feedback.jsp"
					role="button">Feed back</a>
			</p>
		</div>

	</div>

</body>
</html>