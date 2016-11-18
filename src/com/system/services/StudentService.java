package com.system.services;

import java.util.List;

import com.system.domain.Student;

public interface StudentService {
	/**
	 * 添加学生
	 * @param student
	 */
	void AddStudent(Student student);
	/**
	 * 查询学号密码是否正确
	 * @param number
	 * @param password
	 * @return	一个学生
	 */
	Student isStudent(String number, String password);
	/**
	 * 根据id查找学生
	 * @return 一个学生
	 */
	Student findUerById(int id);
	/**
	 * 修改学生信息
	 * @param student
	 */
	void UpdateStudent(Student student);
	/**
	 * 返回所有学生信息
	 * @return
	 */
	List<Student> findAllStudent();
	/**
	 * 根据id删除学生
	 * @param id
	 */
	void deleteUerById(int id);
	/**
	 * 根据用户名查找学生
	 * @param username
	 * @return 一个学生
	 */
	Student findUerName(String username);

}
