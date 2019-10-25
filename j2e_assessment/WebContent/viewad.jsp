<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<input type="hidden" name="radio" value="${radio}">
<div class="container">
<table class="table table-striped">
		<thead class="thead thead-dark">
			<td>Type</td><td>Title</td><td>City/Neighborhood</td><td>Zip Code</td><td>Description</td><td>Email</td><td>Phone Number</td>
		</thead>
		<tbody>
		<c:forEach var="zip" items="${list}">
			<tr>
				<td>${zip.type}</td>
				<td>${zip.title}</td>
				<td>${zip.city}</td>
				<td>${zip.zpcode}</td>
				<td>${zip.desc}</td>
				<td>${zip.email}</td>
				<td>${zip.number}</td>
				<td><a class="btn btn-primary" href="replies?id=${zip.id }">Reply</a></td>
				</tr>
			
		</c:forEach>
</tbody>
</table>
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