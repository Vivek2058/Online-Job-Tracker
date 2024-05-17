package EntityDatabase;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;



public class MainDemo {
 public static void main(String[] args)
 {
	 System.out.println( "Hello World!" );
	    System.out.println("Project Started.....");
	    
	    Configuration cfg = new Configuration();
	    cfg.configure("hibernate.cfg.xml");
	    
	    SessionFactory factory = cfg.buildSessionFactory();
	    Session session=factory.openSession();
	    Transaction tx=session.beginTransaction();
	    
	    JobPost j=new JobPost();
	    int c=106;
	    j.setAdminId(101);
	    
	    
	    ApplyJob a=new ApplyJob();
	    a.setUserId(102121);
	    a.setCity("kop");
	    a.setDrgreeMark(100);
	   
	    a.setJobPost(j);
	   session.save(a);
	   
	   tx.commit();
 }
}
