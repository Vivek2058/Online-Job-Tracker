package com.PogoClass;

import java.util.Arrays;

import jakarta.persistence.*;


public class ApplyJob {
	private int userId;
    private String firstName;
    private String lastName;
    private String username;
    private String city;
    private String state;
    
    private String zip;
    private int sscMark;
    private int hscMark;
    private int drgreeMark;
    private int passingYear;
    
    private static byte[] image;
    private JobPost jobPost;
    
    
	public ApplyJob() {
		super();
		// TODO Auto-generated constructor stub
	}


	public ApplyJob(int userId, String firstName, String lastName, String username, String city, String state,
			String zip, int sscMark, int hscMark, int drgreeMark, int passingYear, JobPost jobPost) {
		super();
		this.userId = userId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.username = username;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.sscMark = sscMark;
		this.hscMark = hscMark;
		this.drgreeMark = drgreeMark;
		this.passingYear = passingYear;
		this.jobPost = jobPost;
	}


	public int getUserId() {
		return userId;
	}


	public void setUserId(int userId) {
		this.userId = userId;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public String getZip() {
		return zip;
	}


	public void setZip(String zip) {
		this.zip = zip;
	}


	public int getSscMark() {
		return sscMark;
	}


	public void setSscMark(int sscMark) {
		this.sscMark = sscMark;
	}


	public int getHscMark() {
		return hscMark;
	}


	public void setHscMark(int hscMark) {
		this.hscMark = hscMark;
	}


	public int getDrgreeMark() {
		return drgreeMark;
	}


	public void setDrgreeMark(int drgreeMark) {
		this.drgreeMark = drgreeMark;
	}


	public int getPassingYear() {
		return passingYear;
	}


	public void setPassingYear(int passingYear) {
		this.passingYear = passingYear;
	}


	public static byte[] getImage() {
		return image;
	}


	public static void setImage(byte[] image) {
		ApplyJob.image = image;
	}


	public JobPost getJobPost() {
		return jobPost;
	}


	public void setJobPost(JobPost jobPost) {
		this.jobPost = jobPost;
	}


	@Override
	public String toString() {
		return "ApplyJob [userId=" + userId + ", firstName=" + firstName + ", lastName=" + lastName + ", username="
				+ username + ", city=" + city + ", state=" + state + ", zip=" + zip + ", sscMark=" + sscMark
				+ ", hscMark=" + hscMark + ", drgreeMark=" + drgreeMark + ", passingYear=" + passingYear + ", jobPost="
				+ jobPost + "]";
	}

	    
    
}
