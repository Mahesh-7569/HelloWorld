<%@page import="com.example.ums.entity.User"%>
<%@page import="java.util.List"%>
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
		List<User> users = (List<User>) request.getAttribute("user");
	%>

	<table>
		<thead>
			<tr>
				<td>ID</td>
				<td>NAME</td>
				<td>EMAIL</td>
				<td>PASSWORD</td>
				<td>Update</td>
				<td>Delete</td>
			</tr>
		</thead>
		
		<tbody>
			<%
				for(User user: users) {
			%>
			
			<tr>
				<td><%= user.getUserId() %></td>
				<td><%= user.getUsername() %></td>
				<td><%= user.getEmail() %></td>
				<td><%= user.getPassword() %></td>
				<td><a href="update-user?user_id=<%= user.getUserId() %> ">Update</a></td>
				<td><a href="delete-user?user_id=<%= user.getUserId() %> ">Delete</a></td>
			</tr>
			
			<%
				}
			%>
		</tbody>
	</table>

</body>
</html>