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
<div class="container">
<form action="ad.add" method="post">
<input type="hidden" name="radio" value="${radio}">
	<div class="row">
		<div class="col-md-5">
			<label class="col-form-label">Posting Title</label>
			<input type="text" name="title" class="form-control" placeholder="Posting Title">
		</div>
		<div class="col-md-5">
			<label class="col-form-label">City or Neighborhood</label>
			<input type="text" name="city" class="form-control" placeholder="City or Neighborhood">
		</div>
		<div class="col-md-2">
			<label class="col-form-label">Postal Code</label>
			<input type="text" name="code" class="form-control" placeholder="Postal Code">
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<label class="col-form-label">Description</label>
			<textarea name="des" class="form-control" placeholder="Description"></textarea>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<label class="col-form-label">Email ID</label>
			<input type="email" class="form-control" name="email" placeholder="Email ID">
		</div>
		<div class="col-md-6">
			<label class="col-form-label">Phone Number</label>
			<input type="number" class="form-control" name="phone" placeholder="Phone No.">
		</div>
	</div><br>
	<input type="submit" class="btn btn-primary" value="Post Ad">
	</form>
</div>
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