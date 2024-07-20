<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
	String fullname,user,pwd,mob;
	fullname=request.getParameter("fullname");
	user=request.getParameter("user");
	pwd=request.getParameter("pwd");
	mob=request.getParameter("mob");
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","Braty@098");
	String sqlQuery="INSERT INTO login (Username,Password,Fullname,mobile) VALUES(?,?,?,?);";
	PreparedStatement stmt=cn.prepareStatement(sqlQuery);
	stmt.setString(1,user);
	stmt.setString(2,pwd);
	stmt.setString(3,fullname);
	stmt.setString(4,mob);
	stmt.executeUpdate();
	stmt.close();
	cn.close();
	response.sendRedirect("index.jsp");
%>