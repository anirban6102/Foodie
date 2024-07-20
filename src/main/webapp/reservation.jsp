<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Data Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<style>
@import url('https://fonts.googleapis.com/css?family=Poppins');
body {
  background-color: #fff;
  color: #333;
  margin: 0;
  padding: 20px;
  font-family: Poppins;
}
a {
  color: white;
  text-decoration: none;
  padding: 10px 15px;
  background-color: #d58b03;
  border-radius: 5px;
  display: inline-block;
  margin-bottom: 20px;
}

table {
  width: 80%; /* Adjust the width as needed */
  margin: 20px 10%;
  border-collapse: collapse;
}

th, td {
  border: 1px solid #ddd;
  padding: 10px;
  text-align: center;
  font-size:18px;
}

th {
  background-color: #d58b03;
  color: #fff;
  font-size:20px;
}

tr:nth-child(even) {
  background-color: #f9f9f9;
}

td#action{
	display:flex;
	align-items:center;
	justify-content:center;
}
td a{
	height:18px;
	background:white;
	padding:0;
	
}

i.fa-solid.fa-trash {
  color: #d58b03;
  border: none;
  padding: 5px 10px;
  cursor: pointer;
  font-size:27px;
}
</style>
</head>
<body>
<%@ page import="java.sql.*" %>
    <a href="dashboard.jsp">Back</a>
    <table>
        <thead>
            <tr>
                <th>Location</th>
                <th>Plan Date</th>
                <th>Time</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        <%
        	HttpSession ss = request.getSession();
    		Object user = ss.getAttribute("user");
    		String	username = user.toString();
        	Class.forName("com.mysql.jdbc.Driver");
        	String psw = "Braty@098";
        	String userId = "root";
        	String server = "jdbc:mysql://localhost:3306/projectdb";
        	Connection con = DriverManager.getConnection(server,userId,psw);
        	String sql = "SELECT * FROM reservation WHERE Username=?;";
        	PreparedStatement ps = con.prepareStatement(sql);
        	ps.setString(1, username);
        	ResultSet rs = ps.executeQuery();
        	String location="",plan="",time="";
                    while(rs.next()){
                    	location = rs.getString(2);
                    	plan = rs.getString(3);
                    	time = rs.getString(4);
                        %>
                        <tr>
                            <td><%=location%></td>
                            <td><%=plan%></td>
                            <td><%=time%></td>
                            <td id="action">
                            	<a href="delete.jsp?time=<%=time%>"><i class="fa-solid fa-trash"></i></a>
                            </td>
                        </tr>
                        <%
                    }
        %>
        </tbody>
    </table>
</body>
</html>