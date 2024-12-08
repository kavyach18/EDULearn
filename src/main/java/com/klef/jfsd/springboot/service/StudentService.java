package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Student;


public interface StudentService {
	   public String  StudentRegistration(Student stud);
	  public Student checkstudentlogin(String email,String spwd );
	  public String updateStudentPofile(Student student);
	  public Student displayStudentbyID(int sid);
	  
}
