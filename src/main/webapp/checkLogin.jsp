<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
	String user,pwd;
	user=request.getParameter("user");
	pwd=request.getParameter("pwd");
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","Braty@098");
	String sqlQuery="SELECT * FROM login WHERE Username=? and Password=?";
	PreparedStatement stmt=cn.prepareStatement(sqlQuery);
	stmt.setString(1,user);
	stmt.setString(2,pwd);
	ResultSet rs=stmt.executeQuery();
	if(rs.next()){
		HttpSession ss = request.getSession();
		ss.setAttribute("user",user);
		
		Cookie userCookies = new Cookie("username",user);
		userCookies.setMaxAge(24*60*60);
		response.addCookie(userCookies);
		
		Cookie passwordCookies = new Cookie("password",pwd);
		passwordCookies.setMaxAge(24*60*60);
		response.addCookie(passwordCookies);
		
		response.sendRedirect("dashboard.jsp");
	}
	else{
		%>
		<script>
			alert("Failed to Login")
			window.location.href="http://localhost:8081/foodie/index.jsp";
		</script>
		<%
	}
	stmt.close();
	cn.close();
%>