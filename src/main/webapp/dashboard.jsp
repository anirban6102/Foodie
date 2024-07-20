<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<%
	HttpSession ss = request.getSession();
	Object user = ss.getAttribute("user");
	String username = "";
	if(user!=null){
		username = user.toString();
	}else{
		response.sendRedirect("index.jsp");
	}
%>
	<div class="header">
		<div class="left">
			<h1>F<img src="https://icons.iconarchive.com/icons/pixelkit/tasty-bites/512/donuts-icon.png">die</h1>
			<div class="field">
                <select name="location">
                    <option value="" selected>Select Location</option>
                    <option value="Kulti">Kulti</option>
                    <option value="Asansol">Asansol</option>
                    <option value="Raniganj">Raniganj</option>
                    <option value="Durgapur">Durgapur</option>
                    <option value="Kolkata">Kolkata</option>
                </select>
            </div>
            <div class="field">
            	<input type="submit" value="What's on Foodie">
            </div>
            <div class="field">
            	<input type="submit" value="Today's Menu">
            </div>
            <div class="field">
            	<input type="submit" value="Reserve Table"  id="dv">
            </div>
		</div>
		<button onclick="toggle()"><i class="fa-regular fa-user"></i>Profile</button>
	</div>
	<div class="profile" id="profile">
		<div class="details">
			<i class="fa-solid fa-user"></i>
			<h4><%=username %></h4>
		</div>
		<div class="hid">
			<a href="reservation.jsp">Reservations</a>
			<a href="logout.jsp">Logout</a>
		</div>
	</div>
	<div class="bg">
		<h1>Let us serve you better :)</h1>
	</div>
	<form action="addReservation.jsp">
			<h2>Let us serve you better !!</h2>
			<p>Don't wait in line to serve your meal.Reserve a table in advance with us.</p>
			<select name="location">
                    <option value="" selected>Select Location</option>
                    <option value="Kulti">Kulti</option>
                    <option value="Asansol">Asansol</option>
                    <option value="Raniganj">Raniganj</option>
                    <option value="Durgapur">Durgapur</option>
                    <option value="Kolkata">Kolkata</option>
            </select>
			<input type="date" name="plan" required>
			<select name="time">
                    <option value="" selected>Select time</option>
                    <option value="10 AM">10 AM</option>
                    <option value="12 PM">12 PM</option>
                    <option value="02 PM">02 PM</option>
                    <option value="04 PM">04 PM</option>
                    <option value="06 PM">06 PM</option>
                    <option value="08 PM">08 PM</option>
            </select>
            <input type="submit" value="Reserve Table">
	</form>
	<div class="card">
		<h2>Happiness Card For You</h2>
		<div class="bot">
			<div class="field">
				<div class="text">
					<h4>Happiness Gift Card-Treat For Twelve</h4>
					<h3>Rs 10,999/-</h3>
					<a href="#">BUY NOW</a>
				</div>
			</div>
			<div class="field">
				<div class="text">
					<h4>Happiness Gift Card-Treat For Eight</h4>
					<h3>Rs 6,999/-</h3>
					<a href="#">BUY NOW</a>
				</div>
			</div>
			<div class="field">
				<div class="text">
					<h4>Happiness Gift Card-Treat For Four</h4>
					<h3>Rs 3,999/-</h3>
					<a href="#">BUY NOW</a>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
        <div class="brand"><h1>Foodie</h1></div>
        <div class="item">
            <div class="box">
                <!-- <div class="social">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/1200px-Facebook_f_logo_%282019%29.svg.png">
                    <a href="#">Facebook</a>
                </div>
                <div class="social">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/1200px-Instagram_logo_2022.svg.png">
                    <a href="#">Instagram</a>
                </div>
                <div class="social">
                    <img src="https://img.freepik.com/free-vector/twitter-app-new-logo-x-black-background_1017-45425.jpg">
                    <a href="#">X</a>
                </div>
                <div class="social">
                    <img src="https://cdn.pixabay.com/photo/2017/08/23/22/59/linked-in-2674741_960_720.png">
                    <a href="#">Linkedin</a>
                </div> -->
                <a href="#">Facebook</a>
                <a href="#">Instagram</a>
                <a href="#">X</a>
                <a href="#">Linkedin</a>
            </div>
            <div class="box">
                <a href="#">Home</a>
                <a href="#">About</a>
                <a href="#">Services</a>
                <a href="#">Contact</a>
            </div>
            <div class="box">
                <a href="#">PayPal</a>
                <a href="#">PhonePe</a>
                <a href="#">Google Pay</a>
                <a href="#">UPI</a>
            </div>
        </div>
        <div class="credit"><p>Developed by Bratya Roy & Anirban Sinha</p></div>
    </div>
    <script>
        window.onload = toggle();
        function toggle(){
            var profile = document.querySelector("#profile")
            if (profile.style.display == 'none') {
                profile.style.display = 'block'
            } else {
                profile.style.display = 'none'
            }
        }
    </script>
</body>
</html>