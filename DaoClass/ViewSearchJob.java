package com.DaoClass;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import EntityDatabase.JobPost;

public class ViewSearchJob {
    private SessionFactory factory;

	public ViewSearchJob(SessionFactory factory) {
		super();
		this.factory = factory;
	}
    
	public List<JobPost> getUser(String username)
	{
		List<JobPost> Jobs=null;
		try
		{
			 String query="from JobPost where jobTitle Like :name";
			 Session session=this.factory.openSession();
			 Transaction tx=session.beginTransaction();
			 Query q=session.createQuery(query);
			 q.setParameter("name","%"+username+"%");
			 Jobs=q.list();
			
			 
			 
			 tx.commit();
			 
		}
		catch(Exception e)
		{
			
		}
		return Jobs;
	}
}
