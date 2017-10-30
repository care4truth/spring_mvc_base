<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>Fitness Tracker Logout Page</title>
	</head>
	<body>
		<h3>Fitness Tracker Custom Logout Page</h3>
		<h1><c:if test="${not empty logoutMsg}">
				${logoutMsg}
			</c:if>
		</h1>
	</body>
</html>