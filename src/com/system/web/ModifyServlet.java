package com.system.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.system.domain.Student;
import com.system.factory.BasicFactory;
import com.system.services.StudentService;
import com.system.utils.DaoUtils;

public class ModifyServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String str = request.getParameter("id");
		int id = Integer.parseInt(str);
		
		StudentService service = BasicFactory.getFactory().getInstance(StudentService.class);
		Student student2 = service.findUerById(id);
		if(student2 == null){
			throw new RuntimeException("找不到该客户!");
		}
		request.setAttribute("student2", student2);
		
		request.getRequestDispatcher("/modify.jsp").forward(request, response);
		return;
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
