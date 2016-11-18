package com.system.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.system.domain.Student;
import com.system.factory.BasicFactory;
import com.system.services.StudentService;

public class InquireServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		StudentService service = BasicFactory.getFactory().getInstance(StudentService.class);
		List<Student> list = service.findAllStudent();
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("/inquire.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
