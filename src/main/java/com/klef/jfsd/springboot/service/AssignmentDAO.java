package com.klef.jfsd.springboot.service;


import java.util.List;

import com.klef.jfsd.springboot.model.Assignment;

public interface AssignmentDAO {
    public String addAssignment(Assignment assignment);
    public String updateAssignment(int id, Assignment assignment);
    public String deleteAssignment(int id);
    public List<Assignment> viewAllAssignments();
	public List<Assignment> getAssignments(String courseCode);
}