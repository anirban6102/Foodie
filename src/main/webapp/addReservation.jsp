<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
	HttpSession ss = request.getSession();
	Object user = ss.getAttribute("user");
	String	username = user.toString();

	String location,plan,time;
	location = request.getParameter("location");
	plan = request.getParameter("plan");
	time = request.getParameter("time");
	
	Class.forName("com.mysql.jdbc.Driver");
	
	String psw = "Braty@098";
	String userId = "root";
	String server = "jdbc:mysql://localhost:3306/projectdb";
	Connection con = DriverManager.getConnection(server,userId,psw);
	
	String sql = "INSERT INTO reservation VALUES(?,?,?,?);";
	PreparedStatement ps = con.prepareStatement(sql);
	
	ps.setString(1,username);
	ps.setString(2,location);
	ps.setString(3,plan);
	ps.setString(4,time);
	
	ps.executeUpdate();
	ps.close();
	con.close();
	
%>

<script>
	alert("Student Registered Successfully !!");
</script>

<%
	response.sendRedirect("index.jsp");
%>