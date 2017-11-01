<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
</head>
<body>
	<h2>Login success</h2>

	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<!-- content in this tag only visible to ROLE_ADMIN -->
		<br>
		<br>
		<c:url value="/admin/users.html" var="securedUsers" />
		<a href="${securedUsers}">1. Secured users list</a>
	</sec:authorize>
	<br>
	<br>
	<c:url value="/admin/messages.html" var="adminMessages" />
	<a href="${adminMessages}">2. Admin Messages - permitAll</a>
	<sec:authorize access="hasRole('ROLE_ADMIN') and principal.username=='admin2'">
		<br>
		<br>
		<c:url value="/admin/main_messages.html" var="mainAdminMessages" />
		<a href="${mainAdminMessages}">3. Main Admin Messages - permit only admin2 user</a>
	</sec:authorize>
	<sec:authorize access="hasRole('ROLE_ADMIN') or principal.username=='user2'">
		<br>
		<br>
		<c:url value="/admin/other_messages.html" var="otherMessages" />
		<a href="${otherMessages}">4. Other Messages - permit ROLE_ADMIN and user2</a>
	</sec:authorize>
	<br>
	<br>
	<c:url value="/logout.html" var="customLogoutUrl" />
	<a href="${customLogoutUrl}">Logout</a>
</body>
</html>