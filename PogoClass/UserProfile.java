package com.PogoClass;

public class UserProfile {
     private String first_name;
     private String last_name;
     private String city;
     private String district;
     private int passing_year;
     private String username;
     
     
	public UserProfile() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserProfile(String first_name, String last_name, String city, String district, int passing_year,String username) {
		super();
		this.first_name = first_name;
		this.last_name = last_name;
		this.city = city;
		this.district = district;
		this.passing_year = passing_year;
		this.username=username;
		}
	
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public int getPassing_year() {
		return passing_year;
	}
	public void setPassing_year(int passing_year) {
		this.passing_year = passing_year;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "UserProfile [first_name=" + first_name + ", last_name=" + last_name + ", city=" + city + ", district="
				+ district + ", passing_year=" + passing_year + ",Username="+username+"]";
	}
     
     
}
