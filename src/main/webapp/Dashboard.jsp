<%@ page import="com.student_management_system.dto.Admin" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student management system</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
<style>
	body {
		height: 100vh;
		width: 100vw;
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		font-family: 'Poppins', sans-serif;
		background-color: #f6f6f6;
		margin: 0;
	}

	.header {
		width: 100%;
		background-color: #565656;
		color: white;
		text-align: center;
		padding: 20px 0;
		font-size: 2rem;
		font-weight: 500;
		position: relative;
	}

	.logout {
		position: absolute;
		top: 50%;
		right: 20px;
		transform: translateY(-50%);
		background-color: #ff4d4d;
		padding: 10px 20px;
		border-radius: 20px;
		text-decoration: none;
		color: white;
		font-weight: 600;
		font-size: 1rem;
		transition: 0.3s;
	}

	.logout:hover {
		background-color: #cc0000;
	}

	.sub-header {
		margin-top: 20px;
		font-size: 1.5rem;
		font-weight: 500;
		color: #333;
		text-align: center;
	}

	.btn-container {
		margin-top: 2rem;
		display: flex;
		gap: 20px;
	}

	a {
		padding: 0.7em 1.5em;
		font-size: 1.2rem;
		border: 3px solid #565656;
		border-radius: 50px;
		text-decoration: none;
		color: #303030;
		font-weight: 600;
		transition: 0.3s;
	}

	a:hover {
		background-color: salmon;
		color: white;
		border: 3px solid salmon;
	}

</style>
</head>
<body>
	<% Admin admin = (Admin) session.getAttribute("admin");
		if(admin != null) { %>

	<div class="header">
		Welcome, Admin  
		<a href="logout" class="logout">Logout</a>
	</div>

	<h2 class="sub-header">Manage Student Data Easily!</h2>

	<div class="btn-container">
		<a href="saveStudent.jsp">Save Student</a>
		<a href="viewStudents">View Students</a>
	</div>

	<% } else { response.sendRedirect("AdminLogin.jsp"); } %>

</body>
</html>
