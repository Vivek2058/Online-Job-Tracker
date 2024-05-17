package EntityDatabase;

import java.util.Arrays;

import jakarta.persistence.*;

@Entity
public class UserProfile
{
	   @Id
	   private String users;
	   private String first_name;
	   private String last_name;
	   private String city;
	   private String dist;
	   private int passing_year;
	   
	   @Lob
	   @Column(name = "image", length = 10485760)
	   private byte[] image;

	   
	public UserProfile() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserProfile(String users, String first_name, String last_name, String city, String dist, int passing_year,
			byte[] image) {
		super();
		this.users = users;
		this.first_name = first_name;
		this.last_name = last_name;
		this.city = city;
		this.dist = dist;
		this.passing_year = passing_year;
		this.image = image;
	}

	public String getUsers() {
		return users;
	}

	public void setUsers(String users) {
		this.users = users;
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

	public String getDist() {
		return dist;
	}

	public void setDist(String dist) {
		this.dist = dist;
	}

	public int getPassing_year() {
		return passing_year;
	}

	public void setPassing_year(int passing_year) {
		this.passing_year = passing_year;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "UserProfile [users=" + users + ", first_name=" + first_name + ", last_name=" + last_name + ", city="
				+ city + ", dist=" + dist + ", passing_year=" + passing_year + ", image=" + Arrays.toString(image)
				+ "]";
	}
	   
	   
}