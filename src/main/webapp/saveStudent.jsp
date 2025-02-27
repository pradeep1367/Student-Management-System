<%@ page import="com.student_management_system.dto.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management System</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
</head>
<style>
html {
	overflow: hidden;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100vw;
	height: 90vh;
	font-family: 'Poppins', sans-serif;
}

form {
	width: 40%;
	height: max-content;
	border: 3px solid #565656;
	border-radius: 20px;
	padding: 1rem;
}

input {
	width: 90%;
	padding: .5em 1em;
	font-size: 1.3rem;
	font-weight: 500;
	border: 0;
	border-bottom: 3px solid #565656;
}

.btn {
	width: 30%;
	height: 2.5rem;
	display: flex;
	justify-content: center;
	align-items: center;
	border: 3px solid #565656;
	border-radius: 50px;
	text-decoration: none;
	color: #303030;
	margin-top: 2rem;
	font-weight: 600;
	padding: 0.5rem;
	cursor: pointer;
	text-align: center;
	background: none;
}

.btn:hover {
	background-color: salmon;
	border: 3px solid salmon;
	color: #fff;
}

h2 {
	font-size: 2rem;
	text-align: center;
}

.btn-container {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-top: 1rem;
}

.btn-container a {
	text-decoration: none;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 25%;
	height: 1.5rem;
}
</style>
<body>
	<%
		Admin admin = (Admin) session.getAttribute("admin");
	if (admin != null) {
	%>

	<form action="save" method="post">
		<h2>Save Student</h2>
		<input name="studentName" placeholder="Enter Student Name:" type="text"><br><br>
		<input name="studentPhoneNumber" placeholder="Enter Student Phone Number" type="text" minlength="10" maxlength="10"><br><br>
		<input name="studentEmail" placeholder="Enter Student Email" type="email"><br><br>
		
		<div class="btn-container">
			<button type="submit" class="btn">SAVE</button>
			<a href="Dashboard.jsp" class="btn">BACK</a>
		</div>
	</form>

	<%
	} else {
		response.sendRedirect("AdminLogin.jsp");
	}
	%>
</body>
</html>
