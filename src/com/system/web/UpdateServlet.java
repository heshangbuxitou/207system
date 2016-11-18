package com.system.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.system.domain.Student;
import com.system.factory.BasicFactory;
import com.system.services.StudentService;

public class UpdateServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		StudentService service = BasicFactory.getFactory().getInstance(StudentService.class);
		
		String valistr = request.getParameter("valistr");
		String valistr2 = (String) request.getSession().getAttribute("srand");
		if(valistr==null || valistr2==null ||!valistr.equals(valistr2)){
			request.setAttribute("msg", "验证码不正确");
			//Student student = (Student) request.getSession().getAttribute("student");
			request.getRequestDispatcher("/servlet/ModifyServlet?id="+request.getParameter("id")).forward(request, response);
			return;
		}
		//验证输入的信息属否有空
		String str2 = request.getParameter("password");
		String str3 = request.getParameter("age");
		String str4 = request.getParameter("classes");
		String str6 = request.getParameter("course");
		if(str2==null || str2.equals("") || str3==null || str3.equals("") || str4==null || str4.equals("")||str6==null || str6.equals("")  ){
			request.setAttribute("msg", "你输入的信息格式有误！");
			//Student student = (Student) request.getSession().getAttribute("student");
			request.getRequestDispatcher("/servlet/ModifyServlet?id="+request.getParameter("id")).forward(request, response);
			return;
		}
		
		try{
			/**
			 * 修改用户
			 */
			Student student = new Student();
			BeanUtils.populate(student, request.getParameterMap());
			service.UpdateStudent(student);
			
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
