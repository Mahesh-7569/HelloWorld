<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">Student Login Form</h1>
	<form action="login" method="post">
		<div align="center">
			<label>UserName: <input type="text" id=" UserName"
				name="UserName"></label>
		</div>
		<br>
		<div align="center">
			<label>PassWord:<input type="text" id="Password"
				name="password"></label>
		</div>
		<br>
		<div align="center">
			<input type="submit" value="login">
		</div>
	</form>
</body>
</html>