package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.service.CourseDAO;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class CourseController {

    @Autowired
    private CourseDAO courseDAO;
    @GetMapping("/")
    public ModelAndView home() {
        return new ModelAndView("home");    }

    @GetMapping("addcourse")
    public ModelAndView addCourseForm() {
        return new ModelAndView("addcourse");
    }

    @GetMapping("updatecourse")
    public ModelAndView updateCourseForm() {
        return new ModelAndView("updatecourse");
    }

    @GetMapping("deletecourse")
    public ModelAndView deleteCourseForm() {
        return new ModelAndView("deletecourse");
    }

    @GetMapping("viewallcourses")
    public ModelAndView viewAllCourses() {
        ModelAndView mv = new ModelAndView("viewallcourses");
        List<Course> courses = courseDAO.viewAllCourses();
        mv.addObject("courses", courses);
        return mv;
    }

 

    @PostMapping("add")
    public ModelAndView addCourse(HttpServletRequest request) {
        Course course = new Course();
        course.setCourseId(request.getParameter("courseId"));
        course.setCourseName(request.getParameter("courseName"));
        course.setCourseDescription(request.getParameter("courseDescription"));
        course.setCategory(request.getParameter("category"));
        course.setCourseCreator(request.getParameter("courseCreator"));
        course.setStartDate(request.getParameter("startDate"));
        course.setEndDate(request.getParameter("endDate"));
        String message = courseDAO.addCourse(course);
        return new ModelAndView("addsuccess", "message", message);
    }

    @PostMapping("delete")
    public String deleteCourse(@RequestParam("id") int id) {
        String message = courseDAO.deleteCourse(id);
        return "redirect:/viewallcourses?message=" + message; // Redirect to view all courses with success message
    }

    @PostMapping("update")
    public String updateCourse(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        Course course = new Course();
        course.setCourseId(request.getParameter("courseId"));
        course.setCourseName(request.getParameter("courseName"));
        course.setCourseDescription(request.getParameter("courseDescription"));
        course.setCategory(request.getParameter("category"));
        course.setCourseCreator(request.getParameter("courseCreator"));
        course.setStartDate(request.getParameter("startDate"));
        course.setEndDate(request.getParameter("endDate"));
        String message = courseDAO.updateCourse(id, course);
        return "redirect:/viewallcourses?message=" + message; // Redirect to view all courses with success message
    }
    
    @GetMapping("registercourse")
    public ModelAndView registercourse() {
        ModelAndView mv = new ModelAndView("registercourse");
        List<Course> courses = courseDAO.viewAllCourses();
        mv.addObject("courses", courses);
        return mv;
    }
}