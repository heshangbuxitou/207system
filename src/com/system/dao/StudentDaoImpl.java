package com.system.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;


import com.system.domain.Student;
import com.system.utils.DaoUtils;

public class StudentDaoImpl implements StudentDao {

	@Override
	public Student findUerByName(String username) {
		try{
			String sql = "select * from student where username = ?";
			QueryRunner runner = new QueryRunner(DaoUtils.getSource());
			return runner.query(sql, new BeanHandler<Student>(Student.class), username);
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public void addStudent(Student student) {
		String sql = "insert into student values (null,?,?,?,?,?,?,?,?,?)";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		try {
			runner.update(sql, student.getNumber(),student.getUsername(),student.getPassword(),student.getSex(),student.getAge(),student.getClasses(),student.getTeacher(),student.getCourse(),student.getCollege());
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		
	}

	@Override
	public Student isStudent(String number, String password) {
		try{
			String sql = "select * from student where number = ? and password = ?";
			QueryRunner runner = new QueryRunner(DaoUtils.getSource());
			return runner.query(sql, new BeanHandler<Student>(Student.class),number,password);
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public Student findUerByNumber(String number) {
		try{
			String sql = "select * from student where number = ?";
			QueryRunner runner = new QueryRunner(DaoUtils.getSource());
			return runner.query(sql, new BeanHandler<Student>(Student.class), number);
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public Student findUerById(int id) {
		try{
			String sql = "select * from student where id = ?";
			QueryRunner runner = new QueryRunner(DaoUtils.getSource());
			return runner.query(sql, new BeanHandler<Student>(Student.class), id);
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public void UpdateStudent(Student student) {
		String sql = "update student set password = ?,sex = ?, age = ?,classes = ?,teacher = ?,course = ?,college = ? where id = ?";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		try {
			runner.update(sql,student.getPassword(),student.getSex(),student.getAge(),student.getClasses(),student.getTeacher(),student.getCourse(),student.getCollege(),student.getId());
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<Student> findAllStudent() {
		String sql = "select * from student";
		try{
			QueryRunner runner = new QueryRunner(DaoUtils.getSource());
			return runner.query(sql, new BeanListHandler<Student>(Student.class));
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	@Override
	public void deleteUerById(int id) {
		String sql = "delete from student where id = ?";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		try {
			runner.update(sql,id );
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		
	}

}
