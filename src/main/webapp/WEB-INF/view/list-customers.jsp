<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Customers</title>

<!-- referrence our stylesheet -->
<!-- <link type="text/css" rel="stylesheet" -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/webjars/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="container">
		<div id="header" class="bg-dark text-white py-3 mb-3 text-center">
			<h1>CRM - Customer Relationship Manager</h1>
		</div>
		<!-- button for add customer -->
		<input type="button" value="Add Customer"
			class="add-button btn btn-info mb-3"
			onclick="window.location.href='showFormAdd'; result=false;">

		<!-- HTML Table here -->
		<table class="table table-dark table-striped table-hover text-center">
			<thead>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Action</th>
			</thead>
			<tbody>
				<c:forEach var="tempCustomer" items="${customers}">
					<!-- construct an "update" link with customer id -->
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>

					<!-- construct an "delete" link with customer id -->
					<c:url var="deleteLink" value="/customer/delete">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>

					<tr>
						<td>${tempCustomer.firstName}</td>
						<td>${tempCustomer.lastName}</td>
						<td>${tempCustomer.email}</td>
						<td>
							<!-- display the update link --> <a class="text-warning"
							href="${updateLink}">Update</a> <strong>|</strong> <a
							class="text-warning" href="${deleteLink}"
							onclick="if(!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<form:form action="${pageContext.request.contextPath}/logout"
							method="POST">
							
			<button type="submit" class="btn btn-primary">Logout</button>
		
		</form:form>

	</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/webjars/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

</body>
</html>