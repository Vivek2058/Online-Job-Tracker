package EntityDatabase;

import java.util.*;

import jakarta.persistence.*;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class AdminRegister {
     private String role;
     @Id
     private String username;
     private String password;
     private int AppliedJob;
     
     @OneToMany()
     private List<JobPost> projects = new ArrayList<>();
     
	public AdminRegister(String role, String username, String password, List<JobPost> projects, int AppliedJob) {
		super();
		this.role = role;
		this.username = username;
		this.password = password;
		this.projects = projects;
		this.AppliedJob=AppliedJob;
	}
	public List<JobPost> getProjects() {
		return projects;
	}
	public void setProjects(List<JobPost> projects) {
		this.projects = projects;
	}
	public AdminRegister() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getAppliedJob()
	{
		return AppliedJob;
	}
	public void setAppliedJob()
	{
		this.AppliedJob=AppliedJob;
	}
	@Override
	public String toString() {
		return "AdminRegister [role=" + role + ", username=" + username + ", password=" + password + ", AppliedJob="
				+ AppliedJob + ", projects=" + projects + "]";
	}     
}
