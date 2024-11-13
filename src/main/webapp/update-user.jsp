<%@page import="com.example.ums.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		User user = (User) request.getAttribute("user"); 
	%>
	
	<h1>Update User</h1>
	<form action="update-user" method="post">
		<input type="text" name="userId" readonly="readonly" hidden="true" value="<%= user.getUserId() %>"><br>
		<input type="text" name="username" placeholder="Enter Username: " value="<%= user.getUsername() %>"><br>
		<input type="text" name="email" placeholder="Enter Email: " value="<%= user.getEmail() %>"><br>
		<input type="text" name="password" placeholder="Enter Password: " value="<%= user.getPassword() %>"><br>
		<input type="submit" name="Update">
	</form>

</body>
</html>