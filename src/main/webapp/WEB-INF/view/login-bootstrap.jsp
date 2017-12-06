<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<meta charset="UTF-8">
<title>Login Page with Bootstrap CSS</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/webjars/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4">
				<div class="card border-primary mt-3">
					<div class="card-header bg-primary text-white">Sign in</div>
					<div class="card-body">
						<form:form
							action="${pageContext.request.contextPath}/authenticateTheUser"
							method="POST">

							<c:if test="${param.error != null}">
								<div class="alert alert-danger mt-1 col-sm-12 text-center">
									<i>Invalid Credentials!</i>
								</div>	
							</c:if>
							<c:if test="${param.logout != null}">
								<div class="alert alert-danger mt-1 col-sm-12 text-center">
									<i>Successfully Logout!</i>
								</div>	
							</c:if>
							<div class="form-group mt-3">
								<div class="input-group margin-bottom-sm">
									<span class="input-group-addon"><i
										class="fa fa-user fa-fw"></i></span> <input class="form-control"
										type="text" name="username" placeholder="Username">
								</div>
							</div>
							<div class="form-group mb-5">
								<div class="input-group margin-bottom-sm">
									<span class="input-group-addon"><i
										class="fa fa-lock fa-fw"></i></span> <input class="form-control"
										type="password" name="password" placeholder="Password">
								</div>
							</div>
							<button type="submit" class="btn btn-success col-sm-4">Login</button>

						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/webjars/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</body>

</html>
