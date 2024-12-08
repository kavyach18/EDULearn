package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.CourseDAO;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;




@Controller
public class StudentController {
	@Autowired
	private StudentService studentService;

    @Autowired
    private CourseDAO courseDAO;
	@GetMapping("/h")
	   public ModelAndView home()
	   {
		 ModelAndView mv= new ModelAndView();
		 mv.setViewName("Home");
		 return mv;
	   }
	   
	   @GetMapping("studreg")
	   public ModelAndView empreg()
	   {
		 ModelAndView mv= new ModelAndView();
		 mv.setViewName("studreg");
		 return mv;
	   }
	 
	   @GetMapping("studentlogin")
	   public ModelAndView studreg()
	   {
		   ModelAndView mv=new ModelAndView();
		   mv.setViewName("studentlogin");
		   return mv;
	   }
	   
	   
	   @PostMapping("insertstud")
	   public ModelAndView insertstud(HttpServletRequest request)
	   {
		    String name = request.getParameter("sname");
		    String gender = request.getParameter("sgender");
		    String email = request.getParameter("semail");
		    String password = request.getParameter("spwd");
		    String contact = request.getParameter("scontact");
		    String department = request.getParameter("department"); 

	
		    Student stud = new Student();
		    stud.setName(name);
		    stud.setGender(gender);
		    stud.setEmail(email);
		    stud.setPassword(password);
		    stud.setContact(contact);
		    stud.setDepartment(department);

		    String msg = studentService.StudentRegistration(stud);

		    ModelAndView mv = new ModelAndView("studentlogin");
		    mv.addObject("message", msg);

		    
		    return mv;

	   }
	   
	   // Submit assignment - Use studentId from session
	    @PostMapping("checkstudentlogin")
	    public ModelAndView checkstudentlogin(HttpServletRequest request) {
	        // TODO: process POST request
	        ModelAndView mv = new ModelAndView();
	        String semail = request.getParameter("semail");
	        String spwd = request.getParameter("spwd");
	        Student stud = studentService.checkstudentlogin(semail, spwd);

	        if (stud != null) {
	            // Session handling
	            HttpSession session = request.getSession();
	            session.setAttribute("stud", stud); // Store the student in session

	            mv.setViewName("studenthome");
	        } else {
	            mv.setViewName("studentlogin");
	            mv.addObject("message", "Login Failed");
	        }

	        return mv;
	    }
	   
	   @GetMapping("updatestudent")
	   public ModelAndView updatestudent()
	   {
		   ModelAndView mv= new ModelAndView();
			 mv.setViewName("updatestudent");
			 return mv;
	   }
	     
	   @PostMapping("updatestudprofile")
	   public ModelAndView  updatestudprofile(HttpServletRequest request)
	   {
		   ModelAndView mv=new ModelAndView();
		   try {
			   int id=Integer.parseInt(request.getParameter("sid"));
			   String name=request.getParameter("sname");
			   String gender=request.getParameter("sgender");
			   String password=request.getParameter("spwd");
			   String contact=request.getParameter("scontact");
			   Student stud=new Student();
			   Student s = studentService.displayStudentbyID(id);
		        
		         HttpSession session = request.getSession();
		         session.setAttribute("student",s); //employee is session variable
		       
               s.setId(id);
               s.setName(name);
               s.setGender(gender);
               s.setPassword(password);
               s.setContact(contact);
               
               String msg=studentService.updateStudentPofile(stud);
               mv.setViewName("updatesuccess");
               mv.addObject("message",msg);
               
               
		   }
		   catch(Exception e)
		   {
			   mv.setViewName("updateerror");
			   mv.addObject("message",e);
			   
		   }
		   return mv;
	   }
	   @GetMapping("studprofile")
	   public ModelAndView studprofile()
	   {
		   ModelAndView mv=new ModelAndView();
		   mv.setViewName("studprofile");
		   return mv;
		   
	   }
	   @GetMapping("studsessionexpiry")
	   public ModelAndView studsessionexpiry()
	   {
		 ModelAndView mv= new ModelAndView();
		 mv.setViewName("studsessionexpiry");
		 return mv;
	   }
	   

	   

}