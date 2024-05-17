package EntityDatabase;

import jakarta.persistence.*;

@Entity
public class SavedJob {
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
     private int id;
     private String username;
     private int jobid;
     
     
	public SavedJob() {
		super();
		
	}
	public SavedJob(int id, String username, int jobid) {
		super();
		this.id = id;
		this.username = username;
		this.jobid = jobid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getJobid() {
		return jobid;
	}
	public void setJobid(int jobid) {
		this.jobid = jobid;
	}
	@Override
	public String toString() {
		return "SavedJob [id=" + id + ", username=" + username + ", jobid=" + jobid + "]";
	}
     
     
}
