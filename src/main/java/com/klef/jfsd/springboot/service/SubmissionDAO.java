package com.klef.jfsd.springboot.service;



import java.util.List;

import com.klef.jfsd.springboot.model.Submission;

public interface SubmissionDAO {
    String addSubmission(Submission submission);
    List<Submission> viewSubmissionsByAssignment(int assignmentId);
    Submission getSubmissionById(int submissionId);  // Fetch submission by ID
    List<Submission> getSubmissionsByStudentId(String studentId);
}