package com.klef.jfsd.springboot.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.service.AdminService;

import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	
	   @GetMapping("adminlogin")
	   public ModelAndView adminlogin()
	   {
		   ModelAndView mv= new ModelAndView();
		   mv.setViewName("adminlogin");
		   return mv;
	   }
	   @GetMapping("about")
	    public ModelAndView about() {
		   ModelAndView mv= new ModelAndView();
		   mv.setViewName("about");
	        return mv;
	   }
	   
	   @GetMapping("adminhome")
	   public ModelAndView adminhome()
	   {
		   ModelAndView mv= new ModelAndView();
		   mv.setViewName("adminhome");
		   
		   
		   return mv;
	   }
	   
	   
	   
	   @PostMapping("checkadminlogin")
	   //@ResponseBody
	   public ModelAndView checkadminlogin(HttpServletRequest request)
	   {
		   
		 ModelAndView mv=new ModelAndView();
		 
		 String auname= request.getParameter("auname");  
		 String apwd = request.getParameter("apwd");
		 Admin admin= adminService.checkadminlogin(auname, apwd);
		 if(admin!=null)
		 {
//			 return "admin login success";
			 
			 
			  
			 mv.setViewName("adminhome");
		 }
		 else {
//			 return "admin login fail";
			 mv.setViewName("adminloginfail");
			 mv.addObject("message","Login Failed");
		 }
		 return mv;
	   }
	   @Autowired
	   private JavaMailSender mailSender;
	   @PostMapping("sendemail")
	   public ModelAndView sendEmail(HttpServletRequest request) throws Exception
	   {
	   String name = request.getParameter("name");
	   String toemail = request.getParameter("email");
	   String subject = request.getParameter("subject");
	   String msg = request.getParameter("message");
	   MimeMessage mimeMessage = mailSender.createMimeMessage();
	   MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);

	   int otp = (int)(Math.random() * 99999); // random number generation
	   helper.setTo(toemail);
	   helper.setSubject(subject);
	   helper.setFrom("suryakiranmtechcse@gmail.com");
	   String htmlContent =
	   "<h3>Contact Form Details</h3>" +
	   "<p><strong>Name:</strong> " + name + "</p>" +
	   "<p><strong>Email:</strong> " + toemail + "</p>" +
	   "<p><strong>Subject:</strong> " + subject + "</p>" +
	   "<p><strong>Message:</strong> " + msg + "</p>" +
	   "<p><strong>OTP:</strong> " + otp + "</p>";
	   helper.setText(htmlContent, true);
	   mailSender.send(mimeMessage);

	   ModelAndView mv = new ModelAndView("mailsuccess");
	   mv.addObject("message", "Email Sent Successfully");
	   return mv;
	   }
	   
	  
}
