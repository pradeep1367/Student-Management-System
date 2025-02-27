<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student management system</title>
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
	text-align: center;
}

input {
	width: 90%;
	padding: .5em 1em;
	font-size: 1.3rem;
	font-weight: 500;
	border: 0;
	border-bottom: 3px solid #565656;
}

.btn-container {
	display: flex;
	justify-content: space-between; 
	margin-top: 2rem;
}

.btn {
	width: 45%;
	padding: 10px;
	text-align: center;
	border: 3px solid #565656;
	border-radius: 50px;
	text-decoration: none;
	color: #303030;
	font-weight: 600;
	background: none;
	cursor: pointer;
	font-size: 1rem;
}

.btn:hover {
	background-color: salmon;
	border: 3px solid salmon;
	color: #fff;
}

h2 {
	font-size: 2rem;
}

.btn a {
	text-decoration: none;
	color: inherit;
	display: block;
}

</style>
<body>
	<form action="signUp" method="post">
		<h2>Admin SignUp</h2>
		<input name="AdminName" placeholder="Enter Name:" type="text" required="required"><br><br>
		<input name="AdminEmail" placeholder="Enter Email:" type="email" required="required"><br><br>
		<input name="AdminPassword" placeholder="Enter password" type="password" required="required"><br><br>
		
		<div class="btn-container">
			<button class="btn"><a href="index.html">HOME</a></button>
			<input type="submit" class="btn" value="Sign Up">
		</div>
	</form>
</body>
</html>
