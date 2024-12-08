package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.CourseRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService{
	@Autowired
    private StudentRepository studentRepository;

	@Override
	public String StudentRegistration(Student stud) {
		// TODO Auto-generated method stub
		studentRepository.save(stud);
		return "Student Registered Successfully";
	}

	@Override
	public Student checkstudentlogin(String email, String spwd) {
		// TODO Auto-generated method stub
		return studentRepository.checkstudentlogin(email, spwd);
	}

	@Override
	public String updateStudentPofile(Student student) {
		// TODO Auto-generated method stub
		Student s=studentRepository.findById(student.getId()).get();
		s.setName(student.getName());
		s.setGender(student.getGender());
		s.setPassword(student.getPassword());
		s.setContact(student.getContact());
		studentRepository.save(s);
		return "Student Updated Successfully";
		
		
	}

	@Override
	public Student displayStudentbyID(int sid) {
		// TODO Auto-generated method stub
		return studentRepository.findById(sid).get();
	}

	
    }



