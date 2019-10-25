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
<title>Post an Ad</title>
</head>
<body>
	<div class="jumbotron" style="color: red">
  <h2 class="display-4">Post Your Ad Here</h2>
  <p class="lead">Please Select the type of Ad that you want to post from the following list.</p>
  <hr class="my-4">
</div>
<div class="container">
	<form action="ad.add" method="get">
		<div class="form-group">
			<input type="radio" name="radio" value="Job Offered">&nbsp;Job Offered
		</div>
		<div class="form-group">
			<input type="radio" name="radio" value="Gig Offered">&nbsp;Gig Offered<p class="small">(I'm hiring for a short-term, small or odd job)</p>
		</div>
		<div class="form-group">
			<input type="radio" name="radio" value="Resume/Job Wanted">&nbsp;Resume/Job Wanted
		</div><br><br>
		<div class="form-group">
			<input type="radio" name="radio" value="House Offered">&nbsp;House Offered
		</div>
		<div class="form-group">
			<input type="radio" name="radio" value="Housing Wanted">&nbsp;Housing Wanted
		</div><br><br>
		<div class="form-group">
			<input type="radio" name="radio" value="For Sale by Owner">&nbsp;For Sale by Owner
		</div>
		<div class="form-group">
			<input type="radio" name="radio" value="For Sale by Dealer">&nbsp;For Sale by Dealer
		</div>
		<div class="form-group">
			<input type="radio" name="radio" value="Wanted by Owner">&nbsp;Wanted by Owner
		</div>
		<div class="form-group">
			<input type="radio" name="radio" value="Wanted by Dealer">&nbsp;Wanted by Dealer
		</div><br><br>
		<div class="form-group">
			<input type="radio" name="radio" value="Service Offered">&nbsp;Service Offered
		</div><br><br>
		<div class="form-group">
			<input type="radio" name="radio" value="Community">&nbsp;Community
		</div>
		<div class="form-group">
		</div>
		<Button type="submit" class="btn btn-primary">Continue</Button>
	</form>
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