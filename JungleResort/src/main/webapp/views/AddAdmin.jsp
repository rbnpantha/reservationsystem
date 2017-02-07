<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Add Admin</title>
<style>
body {
	background-color: #f2f2f2;
}

form {
	width: 50%;
	margin-right: 15%;
	margin-left: 35%;
}

input[type=submit]:hover {
	background-color: #45a049;
}

div {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}

.colorRed {
	color: red;
}
</style>
</head>



<body>
	<div>
		<form:form modelAttribute="admin" method="POST" action="addadmin">
			<!-- 			<h2> Language : <a href="?lang=en">English</a>|<a href="?lang=np">Nepali</a></h2> -->
			<!-- 			<h2>Add Car Information</h2> -->
			<table>

				<tr>
					<td><form:label path="username">UserName</form:label></td>
					<td><form:input path="username" name="username" type="text" /></td>
					<td><form:errors path="username" cssStyle="color:red;" /></td>
				</tr>

				<tr>
					<td><form:label path="password">Password</form:label></td>
					<td><form:input path="password" type="password" value="" /></td>
					<td><form:errors path="password" cssStyle="color:red;" /></td>
				</tr>

				<tr>
					<td><form:label path="confirmPassword">Confirm Password</form:label></td>
					<td><form:input path="confirmPassword" type="password" value="" /></td>
					<td><form:errors path="confirmPassword" cssStyle="color:red;" /></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="Register" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>

