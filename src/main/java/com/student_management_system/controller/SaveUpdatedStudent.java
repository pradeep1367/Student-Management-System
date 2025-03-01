package com.student_management_system.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.student_management_system.dao.StudentDao;
import com.student_management_system.dto.Admin;
import com.student_management_system.dto.Student;

@WebServlet("/saveUpdatedStudent")
public class SaveUpdatedStudent extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Admin admin = (Admin) session.getAttribute("admin");

		if(admin!=null) 
		{
			int studentId = Integer.parseInt(req.getParameter("studentId"));
			String studentName = req.getParameter("studentName");
			String studentEmail = req.getParameter("studentEmail");
			long studentPhoneNumber = Long.parseLong(req.getParameter("studentPhoneNumber"));
			double studentFee = Double.parseDouble(req.getParameter("studentFee"));

			Student student = new Student();
			student.setStudentId(studentId);
			student.setStudentName(studentName);
			student.setStudentEmail(studentEmail);
			student.setStudentPhoneNumber(studentPhoneNumber);
			student.setStudentFee(studentFee);
			student.setAdmin(admin);

			new StudentDao().updateStudent(student);

			List<Student> students = new StudentDao().getAllStudents(admin);
			req.setAttribute("students", students);

			req.getRequestDispatcher("ViewStudents.jsp").forward(req, resp);

		}
		else
		{
			resp.sendRedirect("AdminLogin.jsp");
		}
	}
}
