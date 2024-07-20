<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style2.css">
</head>
<body>
	<div class="signup">
		<form method="post" action="addUser.jsp">
			<h2>Sign Up</h2>
			<input type="text" placeholder="Full Name" name="fullname" required>
			<input type="text" placeholder="Mobile No." maxlength="10" name="mob" required>
			<input type="text" placeholder="Username" name="user" required>
			<input type="password" placeholder="Password" name="pwd" required>
			<input type="submit" value="Sign Up">
            <h6>Already have an account? <a href="index.jsp">Login</a></h6>
		</form>
	</div>
</body>
</html>