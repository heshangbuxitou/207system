package com.system.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.system.domain.Student;
import com.system.factory.BasicFactory;
import com.system.services.StudentService;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String valistr = request.getParameter("valistr");
		String valistr2 = (String) request.getSession().getAttribute("srand");
		if(valistr==null || valistr2==null ||!valistr.equals(valistr2)){
			request.setAttribute("msg", "验证码不正确！");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			return;
		}
		
		String number = request.getParameter("number");
		String password = request.getParameter("password");
		
		StudentService service = BasicFactory.getFactory().getInstance(StudentService.class);
		Student student = service.isStudent(number,password);
		if(student==null){
			request.setAttribute("msg", "用户名密码不正确!");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			return;
		}else{
			request.getSession().setAttribute("student", student);
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
