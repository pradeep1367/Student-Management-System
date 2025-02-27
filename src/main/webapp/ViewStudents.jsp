<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page import="com.student_management_system.dto.Admin"%>
<%@ page import="java.util.List"%>
<%@ page import="com.student_management_system.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student management system</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap"
	rel="stylesheet">
</head>
<style>
html {
	overflow: hidden;
}

body {
	display: flex;
	flex-direction: column;
	align-items: center;
	font-family: 'Poppins', sans-serif;
	width: 100vw;
}

h1 {
	font-size: 3rem;
}

a {
	padding: .5em 1em;
	font-size: 1.3rem;
	text-decoration: none;
	color: #202020;
	margin: .5rem 2rem;
	font-weight: 600;
}

a:hover {
	color: salmon;
}

div {
	width: 100%;
	position: fixed;
}
</style>
<body>
	<%
	Admin admin = (Admin) session.getAttribute("admin");
	if (admin != null) {
		List<Student> students = (List) request.getAttribute("students");
	%>
	<h1>Students List</h1>

	<table border="2px">
		<thead>
			<tr>
				<th>Student_Id</th>
				<th>Student_Name</th>
				<th>Student_Email</th>
				<th>Student_Phno</th>
				<th>Student_Fee</th>
				<th>Update_Student</th>
				<th>Delete_Student</th>
			</tr>
		</thead>

		<tbody>
			<%
			for (Student student : students) {
			%>
			<tr>
				<td><%=student.getStudentId()%></td>
				<td><%=student.getStudentName()%></td>
				<td><%=student.getStudentEmail()%></td>
				<td><%=student.getStudentPhoneNumber()%></td>
				<td><%=student.getStudentFee()%></td>
				<td><a
					href="updateStudent?studentId=<%=student.getStudentId()%>">Update</a></td>
				<td><a
					href="deleteStudent?studentId=<%=student.getStudentId()%>">Delete</a></td>
			</tr>
		</tbody>
		<%
		}
		%>

	</table>
	<div>
		<a href="Dashboard.jsp">BACK</a>
	</div>

	<%
	} else {
	response.sendRedirect("AdminLogin.jsp");
	}
	%>
</body>
</html>