<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style1.css">
</head>
<body>
<%
	String username="",pwd="";
	HttpSession ss = request.getSession();
	Object user = ss.getAttribute("user");
	if(user!=null){
		response.sendRedirect("dashboard.jsp");
	}else{
		Cookie cookies[] = request.getCookies();
		for(int i=0;i<cookies.length;i++){
			if(cookies[i].getName().equals("username")){
				username = cookies[i].getValue();
			}
			if(cookies[i].getName().equals("password")){
				pwd = cookies[i].getValue();
			}
		}
	}
%>
	<div class="login">
		<form method="post" action="checkLogin.jsp">
			<h2>Login</h2>
			<input type="text" placeholder="Username" value="<%=username %>" name="user" required>
			<input type="password" placeholder="Password" value="<%=pwd %>" name="pwd" required>
			<input type="submit" value="Log In">
			<h6>Don't have an account? <a href="signup.jsp">Signup</a></h6>
		</form>
	</div>
</body>
</html>