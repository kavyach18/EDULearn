package com.klef.jfsd.springboot.model;



import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;

@Entity
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; // Unique Identifier
    private String courseId; // e.g., C001, C002
    private String courseName;
    private String courseDescription;
    private String category;
    private String courseCreator; // Educator ID
    private String startDate; // Start Date (use String for simplicity)
    private String endDate; // End Date
   
    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getCourseId() { return courseId; }
    public void setCourseId(String courseId) { this.courseId = courseId; }

    public String getCourseName() { return courseName; }
    public void setCourseName(String courseName) { this.courseName = courseName; }

    public String getCourseDescription() { return courseDescription; }
    public void setCourseDescription(String courseDescription) { this.courseDescription = courseDescription; }

    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }

    public String getCourseCreator() { return courseCreator; }
    public void setCourseCreator(String courseCreator) { this.courseCreator = courseCreator; }

    public String getStartDate() { return startDate; }
    public void setStartDate(String startDate) { this.startDate = startDate; }

    public String getEndDate() { return endDate; }
    public void setEndDate(String endDate) { this.endDate = endDate; }
}