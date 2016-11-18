package com.system.dao;

import java.util.List;

import com.system.domain.Student;

public interface StudentDao {
	/**
	 * 根据名字查学生
	 * @param username
	 * @return	一个学生
	 */
	Student findUerByName(String username);
	/**
	 * 添加学生
	 * @param student
	 */
	void addStudent(Student student);
	/**
	 * 查询学号密码是否正确
	 * @param number
	 * @param password
	 * @return 一个学生
	 */
	Student isStudent(String number, String password);
	/**
	 * 根据学号查学生
	 * @param number
	 * @return	一个学生
	 */
	Student findUerByNumber(String number);
	/**
	 * 根据id查学生
	 * @param id
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

}
