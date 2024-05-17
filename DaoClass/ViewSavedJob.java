package com.DaoClass;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;

import EntityDatabase.JobPost;

public class ViewSavedJob {
    private SessionFactory factory;

	public ViewSavedJob(SessionFactory factory) {
		super();
		this.factory = factory;
	}
    
	public List<Object[]> getAppliedJob(String username)
	{
		
		try
		{
			String query="select * from jobpost inner join savedjob on jobpost.adminid=savedjob.jobid where username=:user";
			  Session s=this.factory.openSession();
			  NativeQuery na=s.createNativeQuery(query);
			  na.setParameter("user",username);
			  List<Object[]> mylist1=na.list();
			
			 return mylist1;
		}
		catch(Exception e)
		{
			
		}
		return null;
	}
}
