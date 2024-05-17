package EntityDatabase;

import java.util.*;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;

@Entity
public class JobPost {
	 @Id
     private int adminId;
     private String jobCategory;
     private String jobTitle;
     private String skill;
     private String passingYear;
     private String location;
     
	 @OneToMany
	 List<ApplyJob> myList=new ArrayList();
     
     @ManyToOne()
     @JoinColumn(name = "Admin")
     private AdminRegister ad;
     
     
	public JobPost() {
		super();
		
	}
	
	public JobPost(int adminId, String jobCategory, String jobTitle, String skill, String passingYear,
			List<ApplyJob> myList,String location) {
		super();
		this.adminId = adminId;
		this.jobCategory = jobCategory;
		this.jobTitle = jobTitle;
		this.skill = skill;
		this.passingYear = passingYear;
		this.myList = myList;
		this.location=location;
	}
	
	
	public JobPost(AdminRegister ad) {
		super();
		this.ad = ad;
	}

	
	public AdminRegister getAd() {
		return ad;
	}

	public void setAd(AdminRegister ad) {
		this.ad = ad;
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
	public List<ApplyJob> getMyList() {
		return myList;
	}
	public void setMyList(List<ApplyJob> myList) {
		this.myList = myList;
	}
	public String getLocation()
	{
		return location;
	}
	public void setLocation(String location)
	{
		this.location=location;
	}

	@Override
	public String toString() {
		return "JobPost [adminId=" + adminId + ", jobCategory=" + jobCategory + ", jobTitle=" + jobTitle + ", skill="
				+ skill + ", passingYear=" + passingYear + ", myList=" + myList + ", ad=" + ad + ", location=" + location +"]";
	}
	
	
	
     
     
}
