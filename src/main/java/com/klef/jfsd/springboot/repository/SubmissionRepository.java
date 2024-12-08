package com.klef.jfsd.springboot.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.klef.jfsd.springboot.model.Submission;

import java.util.List;

public interface SubmissionRepository extends JpaRepository<Submission, Integer> {
    List<Submission> findByAssignmentId(int assignmentId);
    List<Submission> findByStudentId(@Param("studentId") String studentId);
}