package EntityDatabase;

public class AdminLogin {
      private String role;
      private String password;
      private String username;
      
    
	public AdminLogin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AdminLogin(String role, String password, String username) {
		super();
		this.role = role;
		this.password = password;
		this.username = username;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "AdminLogin [role=" + role + ", password=" + password + ", username=" + username + "]";
	}
      
      
}
