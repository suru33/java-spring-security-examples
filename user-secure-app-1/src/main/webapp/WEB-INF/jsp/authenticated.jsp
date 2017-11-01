<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
</head>
<body>

	<h2>Login success</h2>
	<br>
	<br>

	<c:url value="/admin/users.html" var="securedUsers" />
	<a href="${securedUsers}">Secured users list</a>

	<br>
	<br>
	<c:url value="/logout.html" var="customLogoutUrl" />
	<a href="${customLogoutUrl}">Logout</a>

</body>
</html>