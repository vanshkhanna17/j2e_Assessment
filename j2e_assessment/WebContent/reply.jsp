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
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h1>Send Reply</h1>
<form action="replies" method="post">
	<input type="hidden" name="id" value="${id}">
		<div class="row">
		<div class=col-md-5>
			<label class="col-form-label">Name</label>
			<input type="text" name="name" class="form-control" placeholder="Name">
		
	
			<label class="col-form-label">Email ID</label>
			<input type="email" class="form-control" name="email" placeholder="Email ID">
		
			<label class="col-form-label">Phone Number</label>
			<input type="number" class="form-control" name="phone" placeholder="Phone No.">
		</div>
		</div><br>
		<Button type="submit" class="btn btn-primary">Send</Button>
		
</form>
		<p style="color: red"><% 
			if(request.getAttribute("data")!=null){
			out.print("Reply Added Successfully...");
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