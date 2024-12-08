package com.klef.jfsd.springboot.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Submission;
import com.klef.jfsd.springboot.repository.SubmissionRepository;

import java.util.List;

@Service
public class SubmissionDAOImpl implements SubmissionDAO {

    @Autowired
    private SubmissionRepository submissionRepository;

    @Override
    public String addSubmission(Submission submission) {
        submissionRepository.save(submission);
        return "Submission added successfully!";
    }

    @Override
    public List<Submission> viewSubmissionsByAssignment(int assignmentId) {
        return submissionRepository.findByAssignmentId(assignmentId);
    }

	@Override
	public Submission getSubmissionById(int submissionId) {
		
		return submissionRepository.findById(submissionId)
                .orElseThrow(() -> new IllegalArgumentException("Submission not found!"));
	}

	@Override
	public List<Submission> getSubmissionsByStudentId(String studentId) {
		 return submissionRepository.findByStudentId(studentId);
	}
}