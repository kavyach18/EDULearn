package com.klef.jfsd.springboot.controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Assignment;
import com.klef.jfsd.springboot.model.Submission;
import com.klef.jfsd.springboot.service.AssignmentDAO;
import com.klef.jfsd.springboot.service.SubmissionDAO;

import jakarta.servlet.http.*;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.util.List;

@Controller
public class SubmissionController {

    @Autowired
    private SubmissionDAO submissionDAO;

    @Autowired
    private AssignmentDAO assignmentDAO;

    // View all assignments for submission
    @GetMapping("viewassignments")
    public ModelAndView viewAssignments() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("student_assignments");
        List<Assignment> assignments = assignmentDAO.viewAllAssignments();
        mv.addObject("assignments", assignments);
        return mv;
    }

    // Submit assignment - Use studentId from session
    @PostMapping("submit")
    public ModelAndView submitAssignment(@RequestParam("assignmentId") int assignmentId,
                                         @RequestParam("solutionPdf") MultipartFile solutionPdf,
                                         HttpSession session) {

        // Retrieve the studentId (username) from the session
        String studentId = (String) session.getAttribute("username");

        if (studentId == null) {
            return new ModelAndView("redirect:/slogin"); // Redirect to login if studentId is not found in session
        }

        Submission submission = new Submission();

        // Retrieve the assignment from the database using the assignmentId
        Assignment assignment = assignmentDAO.viewAllAssignments()
                .stream()
                .filter(a -> a.getId() == assignmentId)
                .findFirst()
                .orElseThrow();

        // Handle file upload
        String solutionPdfPath = uploadFile(solutionPdf);

        // Set the submission details
        submission.setAssignment(assignment);
        submission.setStudentId(studentId); // Set studentId from session
        submission.setSubmissionDate(LocalDate.now());
        submission.setSolutionPdfPath(solutionPdfPath);

        // Save the submission
        String message = submissionDAO.addSubmission(submission);

        // Prepare success message
        ModelAndView mv = new ModelAndView();
        mv.setViewName("submission_success");
        mv.addObject("message", message);

        return mv;
    }

    // Helper method to handle file upload
    private String uploadFile(MultipartFile file) {
        String folderPath = "D:/uploads/solutions/";

        File folder = new File(folderPath);
        if (!folder.exists()) {
            folder.mkdir();
        }

        String fileName = file.getOriginalFilename();
        Path path = Paths.get(folderPath + fileName);
        try {
            Files.write(path, file.getBytes());
            return fileName;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    // View submissions for an assignment (teacher side)
    @GetMapping("/viewSubmissions")
    public ModelAndView viewSubmissions(@RequestParam("assignmentId") int assignmentId) {
        ModelAndView mv = new ModelAndView();
        List<Submission> submissions = submissionDAO.viewSubmissionsByAssignment(assignmentId);
        mv.setViewName("teacher_submissions");
        mv.addObject("submissions", submissions);
        return mv;
    }
    
    /*
    @GetMapping("/viewSubmissions")
    public ModelAndView viewSubmissions(HttpSession session) {
        Integer assignmentId = (Integer) session.getAttribute("selectedAssignmentId"); // Get assignmentId from session
        if (assignmentId == null) {
            // If assignmentId is not found in session, redirect to view assignments page
            return new ModelAndView("redirect:/viewAssignments");
        }
        
        ModelAndView mv = new ModelAndView();
        List<Submission> submissions = submissionDAO.viewSubmissionsByAssignment(assignmentId); // Fetch submissions
        mv.setViewName("teacher_submissions"); // Display submissions on teacher_submissions.jsp
        mv.addObject("submissions", submissions);
        return mv;
    }
*/

    // Download solution PDF
    @PostMapping("/downloadSolution")
    public ResponseEntity<Resource> downloadSolution(@RequestParam("fileName") String fileName) {
        try {
            String folderPath = "D:/uploads/solutions/";
            Path path = Paths.get(folderPath + fileName);
            Resource resource = new UrlResource(path.toUri());
            if (resource.exists() || resource.isReadable()) {
                return ResponseEntity.ok()
                        .contentType(MediaType.APPLICATION_PDF)
                        .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + resource.getFilename() + "\"")
                        .body(resource);
            } else {
                return ResponseEntity.notFound().build();
            }
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.internalServerError().build();
        }
    }

    // Grade submission
    @PostMapping("/gradeSubmission")
    public ModelAndView gradeSubmission(@RequestParam("submissionId") int submissionId,
                                        @RequestParam("marks") int marks,
                                        @RequestParam("remarks") String remarks) {
        Submission submission = submissionDAO.getSubmissionById(submissionId);
        submission.setMarks(marks);
        submission.setRemarks(remarks);
        submissionDAO.addSubmission(submission); // Update submission with marks and remarks

        ModelAndView mv = new ModelAndView();
        mv.setViewName("grading_success");
        mv.addObject("message", "Submission graded successfully!");
        return mv;
    }

    // View graded submissions (student side)
    @GetMapping("/viewGradedSubmissions")
    public ModelAndView viewGradedSubmissions(HttpSession session) {
        // Fetch the studentId from the session
        String studentId = (String) session.getAttribute("username");

        // Check if studentId is present in the session
        if (studentId == null) {
            return new ModelAndView("redirect:/slogin"); // Redirect to login if session expired
        }

        // Fetch submissions for the studentId
        ModelAndView mv = new ModelAndView();
        List<Submission> submissions = submissionDAO.getSubmissionsByStudentId(studentId);
        mv.setViewName("graded_submissions");
        mv.addObject("submissions", submissions);
        return mv;
    }

}