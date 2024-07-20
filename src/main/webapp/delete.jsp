<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
	String time = request.getParameter("time");
	Class.forName("com.mysql.jdbc.Driver");
	
	String psw = "Braty@098";
	String user = "root";
	String server = "jdbc:mysql://localhost:3306/projectdb";
	Connection con = DriverManager.getConnection(server,user,psw);
	
	String sql = "DELETE FROM reservation WHERE Time=?;";
	PreparedStatement ps = con.prepareStatement(sql);
	
	ps.setString(1, time);
	
	ps.executeUpdate();
	ps.close();
	con.close();
	
%>

<script>
	alert("Student Registered Successfully !!");
</script>

<%
	response.sendRedirect("reservation.jsp");
%>