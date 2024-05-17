package com.DaoClass;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import EntityDatabase.AdminRegister;
import EntityDatabase.UserProfile;

public class UserProfileDao {
	private SessionFactory factory;

	public UserProfileDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
     
	public UserProfile getUser(String username)
	{
		UserProfile userprofile=null;
		try
		{
			 String query="from UserProfile where users=:user";
			 Session session=this.factory.openSession();
			 Transaction tx=session.beginTransaction();
			 Query q=session.createQuery(query);
			 q.setParameter("user",username);
			 userprofile=(UserProfile)q.uniqueResult();
			 tx.commit();
			 
		}
		catch(Exception e)
		{
			
		}
		return userprofile;
	}

}
