package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.repository.CourseRepository;

@Service
public class CourseDAOImpl implements CourseDAO {

    @Autowired
    private CourseRepository courseRepository;

    @Override
    public String addCourse(Course course) {
        courseRepository.save(course);
        return "Course added successfully!";
    }

    @Override
    public String updateCourse(int id, Course course) {
        Course existingCourse = courseRepository.findById(id).orElse(null);
        if (existingCourse != null) {
            existingCourse.setCourseId(course.getCourseId());
            existingCourse.setCourseName(course.getCourseName());
            existingCourse.setCourseDescription(course.getCourseDescription());
            existingCourse.setCategory(course.getCategory());
            existingCourse.setCourseCreator(course.getCourseCreator());
            existingCourse.setStartDate(course.getStartDate());
            existingCourse.setEndDate(course.getEndDate());
            courseRepository.save(existingCourse);
            return "Course updated successfully!";
        } else {
            return "Course not found for the provided ID!";
        }
    }

    @Override
    public String deleteCourse(int id) {
        if (courseRepository.existsById(id)) {
            courseRepository.deleteById(id);
            return "Course deleted successfully!";
        } else {
            return "Course not found for the provided ID!";
        }
    }

    @Override
    public List<Course> viewAllCourses() {
        return courseRepository.findAll();
    }
}