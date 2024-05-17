package com.PogoClass;

import java.util.ArrayList;
import java.util.List;

import EntityDatabase.ApplyJob;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;

public class JobPost {
    private int adminId;
    private String jobCategory;
    private String jobTitle;
    private String skill;
    private String passingYear;

	 
    
    
	public JobPost() {
		super();
		
	}
	
	public JobPost(int adminId, String jobCategory, String jobTitle, String skill, String passingYear)
         {
		super();
		this.adminId = adminId;
		this.jobCategory = jobCategory;
		this.jobTitle = jobTitle;
		this.skill = skill;
		this.passingYear = passingYear;
	}
	
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public String getJobCategory() {
		return jobCategory;
	}
	public void setJobCategory(String jobCategory) {
		this.jobCategory = jobCategory;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
	public String getPassingYear() {
		return passingYear;
	}
	public void setPassingYear(String passingYear) {
		this.passingYear = passingYear;
	}

	
	
	@Override
	public String toString() {
		return "JobPost [adminId=" + adminId + ", jobCategory=" + jobCategory + ", jobTitle=" + jobTitle + ", skill="
				+ skill + ", passingYear=" + passingYear + ", myList=" +  "]";
	}
    

}
