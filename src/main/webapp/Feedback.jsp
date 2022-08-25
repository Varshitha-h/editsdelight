<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feed Back Form</title>
<%@include file="Components/Bootstrap_cdn.jsp"%>
<style type="text/css">
.feedback {
	display: block;
	margin-left: auto;
	margin-right: auto;
	width: 60%;
	font-size: 175%;
	border-color: #000000;
	border-style: solid;
	margin-top:10%;
	word-spacing: 20px;
	background-color: #563f46;
	font-family: Tahoma, Verdana, sans-serif;
}
.body {
	background: url(img/bg2.jpg);
	background-size: cover;
	background-attachment: fixed
	}
 

</style>
</head>
<body style="background-color:#c8c3cc;">
	<div class="feedback">
		<div class="container">
			<form action="FeedbackServlet" method="get">
				<div class="form-group">
					<label for="exampleFormControlTextarea1">Feedback</label>
					<textarea class="form-control" id="exampleFormControlTextarea1"
						rows="3" name="feedback"></textarea>
				</div>
				<div class="form-group">
					<label for="exampleFormControlSelect1">Rating</label> <select
						class="form-control" id="exampleFormControlSelect1" name="rate">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>7</option>
						<option>9</option>
						<option>10</option>
					</select>
				</div>
				<div class="form-group">
					<label for="exampleFormControlTextarea1">Suggestion/Improvement</label>
					<textarea class="form-control" id="exampleFormControlTextarea1"
						rows="3" name="improvement"></textarea>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary">Submit</button>
					<button type="button" class="btn btn-dark">Cancel</button>
				</div>
				

			</form>



		</div>



	</div>
</body>
</html>