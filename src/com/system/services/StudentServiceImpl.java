package com.system.services;

import java.util.List;

import com.system.dao.StudentDao;
import com.system.domain.Student;
import com.system.factory.BasicFactory;

public class StudentServiceImpl implements StudentService {
	StudentDao dao = BasicFactory.getFactory().getInstance(StudentDao.class);
	/**
	 * 添加学生
	 */
	@Override
	public void AddStudent(Student student) {
		if(dao.findUerByNumber(student.getNumber())!=null){
			throw new RuntimeException("这个学生已经存在！");
		}
		dao.addStudent(student);
	}
	@Override
	public Student isStudent(String number, String password) {
		return dao.isStudent(number,password);
	}
	@Override
	public Student findUerById(int id) {
		return dao.findUerById(id);
	}
	@Override
	public void UpdateStudent(Student student) {
		dao.UpdateStudent(student);
		
	}
	@Override
	public List<Student> findAllStudent() {
		return dao.findAllStudent();
	}
	@Override
	public void deleteUerById(int id) {
		dao.deleteUerById(id);
		
	}
	@Override
	public Student findUerName(String username) {
		return dao.findUerByName(username);
	}

}
