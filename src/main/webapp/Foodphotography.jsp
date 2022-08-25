<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Photography</title>
</head>
<style>
.column {
	float: left;
	width: 25%;
	padding: 10px;
}

/* Style the images inside the grid */
.column img {
	opacity: 0.8;
	cursor: pointer;
}

.column img:hover {
	opacity: 1;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* The expanding image container (positioning is needed to position the close button and the text) */
.container {
	position: relative;
	display: none;
}

/* Expanding image text */
#imgtext {
	position: absolute;
	bottom: 15px;
	left: 15px;
	color: white;
	font-size: 20px;
}

/* Closable button inside the image */
.closebtn {
	position: absolute;
	top: 10px;
	right: 15px;
	color: white;
	font-size: 35px;
	cursor: pointer;
}

#img1 {
	width: 300px;
	height: 200px;
}

#img2 {
	width: 300px;
	height: 200px;
}

#img3 {
	width: 300px;
	height: 200px;
}

#img4 {
	width: 282px;
	height: 200px;
	top: -74px;
	bottom: 73px;
	padding: 36px;
	margin-left: 1004px;
	padding-top: -117px;
	margin-top: -423px;
}

//
form style
    #wrapper {
	width: 450px;
	margin: 0 auto;
	font-family: Verdana, sans-serif;
}

legend {
	color: #0481b1;
	font-size: 16px;
	padding: 0 10px;
	background: #fff;
	-moz-border-radius: 4px;
	box-shadow: 0 1px 5px rgba(4, 129, 177, 0.5);
	padding: 5px 10px;
	text-transform: uppercase;
	font-family: Helvetica, sans-serif;
	font-weight: bold;
}

fieldset {
	border-radius: 4px;
	background: #fff;
	background: -moz-linear-gradient(#fff, #f9fdff);
	background: -o-linear-gradient(#fff, #f9fdff);
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#fff),
		to(#f9fdff)); /
	background: -webkit-linear-gradient(#fff, #f9fdff);
	padding: 20px;
	border-color: rgba(4, 129, 177, 0.4);
}

input, textarea {
	color: #373737;
	background: #fff;
	border: 1px solid #CCCCCC;
	color: #aaa;
	font-size: 14px;
	line-height: 1.2em;
	margin-bottom: 15px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	border-radius: 4px;
	box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1) inset, 0 1px 0
		rgba(255, 255, 255, 0.2);
}

input[type="text"], input[type="email"], input[type="number"] {
	padding: 8px 6px;
	height: 22px;
	width: 280px;
}

input[type="text"]:focus, input[type="email"]:focus, input[type="number"]:focus
	{
	background: #f5fcfe;
	text-indent: 0;
	z-index: 1;
	color: #373737;
	-webkit-transition-duration: 400ms;
	-webkit-transition-property: width, background;
	-webkit-transition-timing-function: ease;
	-moz-transition-duration: 400ms;
	-moz-transition-property: width, background;
	-moz-transition-timing-function: ease;
	-o-transition-duration: 400ms;
	-o-transition-property: width, background;
	-o-transition-timing-function: ease;
	width: 380px;
	border-color: #ccc;
	box-shadow: 0 0 5px rgba(4, 129, 177, 0.5);
	opacity: 0.6;
}

input[type="submit"] {
	background: #222;
	border: none;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.3);
	text-transform: uppercase;
	color: #eee;
	cursor: pointer;
	font-size: 15px;
	margin: 5px 0;
	padding: 5px 22px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	-webkit-border-radius: 4px;
	-webkit-box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.3);
	-moz-box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.3);
}

textarea {
	padding: 3px;
	width: 96%;
	height: 100px;
}

textarea:focus {
	background: #ebf8fd;
	text-indent: 0;
	z-index: 1;
	color: #373737;
	opacity: 0.6;
	box-shadow: 0 0 5px rgba(4, 129, 177, 0.5);
	border-color: #ccc;
}

.small {
	line-height: 14px;
	font-size: 12px;
	color: #999898;
	margin-bottom: 3px;
}

.budget {
	padding: 8px 6px;
	height: 35px;
	width: 280px;
}

.center {
	display: block;
	margin-left: auto;
	margin-right: auto;
	width: 50%;
}

.info {
	display: block;
	margin-left: auto;
	margin-right: auto;
	width: 60%;
	font-size:175%;
	border-color: #000000;
	border-style: double;
	word-spacing: 20px;
	background-color: #696969;
	font-family: Tahoma, Verdana, sans-serif;
}
</style>
<body>

	<div class="row">
		<div class="column">
			<img src="Service_webpage/f1.jpeg" alt="Nature" id="img1"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="Service_webpage/f4.jpg" id="img2" alt="Snow"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="Service_webpage/f5.jpg" id="img3" alt="Mountains"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="Service_webpage/f2.webp" id="img4" alt="Lights"
				onclick="myFunction(this);">
		</div>
	</div>

	<!-- The expanding image container -->
	<div class="container">
		<!-- Close the image -->
		<span onclick="this.parentElement.style.display='none'"
			class="closebtn">&times;</span>

		<!-- Expanded image -->
		<img id="expandedImg" style="width: 50%" class="center">

		<!-- Image text -->
		<div id="imgtext"></div>
	</div>
	<div class="info">
	<center>
	<h2>Food Photography</h2>
	</center>
		<p>Food photography is a still life photography genre used to
			create attractive still life photographs of food. It is a
			specialization of commercial photography, the products of which are
			used in advertisements, magazines, packaging, menus or cookbooks.
			Professional food photography is a collaborative effort, usually
			involving an art director, a photographer, a food stylist, a prop
			stylist and their assistants</p>
	</div>

	<div id="wrapper">
		<form action="FoodPhotography" method="post">
			<fieldset>
				<legend>Register Form</legend>
				<div>
					<input type="text" name="name" placeholder="Name" />
				</div>
				<div>
					<input type="number" name="phno" placeholder="Phone Number" />
				</div>
				<div>
					<input type="email" name="email" placeholder="Email" />
				</div>
				<div>
					<input type="text" name="cousine" placeholder="Cousine" />
				</div>
				<div>
					<input type="text" name="loc" placeholder="Location." />
				</div>
				<div>
					<select name="budget" id="" class="budget">
						<option value="Gold">Gold</option>
						<option value="platinum">Platinum</option>
						<option value="silver">Silver</option>
					</select>
				</div>
				<input type="submit" name="submit" value="Send" />
			</fieldset>
		</form>
	</div>
</body>
<script type="text/javascript">
	function myFunction(imgs) {
		// Get the expanded image
		var expandImg = document.getElementById("expandedImg");
		// Get the image text
		var imgText = document.getElementById("imgtext");
		// Use the same src in the expanded image as the image being clicked on from the grid
		expandImg.src = imgs.src;
		// Use the value of the alt attribute of the clickable image as text inside the expanded image
		imgText.innerHTML = imgs.alt;
		// Show the container element (hidden with CSS)
		expandImg.parentElement.style.display = "block";
	}
</script>
</html>
