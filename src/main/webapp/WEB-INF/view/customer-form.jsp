<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Customer</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/webjars/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Customer</h3>
		
		<form:form action="saveCustomer" modelAttribute="customer" method="POST">
			<!-- need to associate this data with customer id -->
			<form:hidden path="id"/>
			
			<table>
				<tbody>
					<tr>
						<td><label>First Name: </label></td>
						<td><form:input path="firstName" /></td>
					</tr>
					<tr>
						<td><label>Last Name: </label></td>
						<td><form:input path="lastName" /></td>
					</tr>
					<tr>
						<td><label>Email: </label></td>
						<td><form:input path="email" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Save" class="save"/></td>
					</tr>
				</tbody>
			</table>
		</form:form>
		
		<div style="clear; both;">
			<a href="${pageContext.request.contextPath}/customer/list"> Back to List </a>
		</div>
	</div>
	
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/webjars/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</body>
</html>