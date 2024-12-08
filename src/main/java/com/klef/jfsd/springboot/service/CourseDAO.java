package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Course;

public interface CourseDAO {

    String addCourse(Course course);
    String updateCourse(int id, Course course);
    String deleteCourse(int id);
    List<Course> viewAllCourses();
}