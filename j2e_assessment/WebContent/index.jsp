<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Welcome</title>
</head>
<body>
<div class="container-fluid">
<div class="jumbotron" style="color: orange">
  <h1 class="display-4">Welcome To the Advertisements</h1>
  <p class="lead">You can add your own advertisement or reply to the already posted advertisements.</p>
  <hr class="my-4">
    <a class="btn btn-primary " href="add.jsp" >Post an Ad</a>
    <a class="btn btn-primary " href="view.jsp" >View Ads</a>
</div>
		<p style="color: red"><% 
			if(request.getAttribute("data")!=null){
			out.print("Ad Posted Successfully...");
			}
		if(request.getAttribute("data1")!=null){
			out.print("Reply Posted Successfully...");
			}
			
		%></p>
		</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
		
</body>
</html>