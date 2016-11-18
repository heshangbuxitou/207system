package com.system.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.system.factory.BasicFactory;
import com.system.services.StudentService;

public class DeleteServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		StudentService service = BasicFactory.getFactory().getInstance(StudentService.class);
		
		String str = request.getParameter("id");
		int id = Integer.parseInt(str); 
		
		if(id!=5 && service.findUerById(id)!=null){
			service.deleteUerById(id);
			
			request.getRequestDispatcher("/servlet/InquireServlet").forward(request, response);
		}else{
			throw new RuntimeException("要删除的用户不存在!请勿删除管理员！");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
