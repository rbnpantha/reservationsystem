<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<title>Admin Login</title>
</head>
<body class="jumbotron">
	<div>
		<div class="container">
			<h2 style="color: #a94442; font-size: 300%; font-weight: 700">Welcome
				to our shopping world</h2>
			<br>
			<form action="adminlogin" method="post" modelAttribute="admin">
				<p>
					<span class="glyphicon glyphicon-user"></span> <label>Username</label>
					<input type="text" name="username" value="${cookie.username.value}" required />
				</p>
				<p>
					<span class="glyphicon glyphicon-lock"></span> <label>Password</label>
					<input type="password" name="password" required />
				</p>
				<p>
					<input type="checkbox" name="remember"
						<c:if test="${cookie.containsKey('username')}">checked</c:if> />

					<label style="font-weight: 100; font-size: 70%;">Remember
						me</label>
				</p>

				<p>
					<input class="btn btn-info btn-bg" type="submit" value="Login" />
				</p>


			</form>

			<div>
				<p style="color: #b94470; font-size: 110%;">${loginfail}
				<p>
			</div>


		</div>
	</div>
</body>
</html>