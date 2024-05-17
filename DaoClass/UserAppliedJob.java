package com.DaoClass;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;

import EntityDatabase.JobPost;

public class UserAppliedJob {
    private SessionFactory factory;

	public UserAppliedJob(SessionFactory factory) {
		super();
		this.factory = factory;
	}
    
	public List<Object[]> getAppliedJob(String username)
	{
		
		try
		{
			String query="select * from jobpost inner join applyjob on jobpost.adminid=applyjob.jobpost_adminid where username=:user";
			  Session s=this.factory.openSession();
			  NativeQuery na=s.createNativeQuery(query);
			  na.setParameter("user",username);
			  List<Object[]> mylist=na.list();
			
			 return mylist;
		}
		catch(Exception e)
		{
			
		}
		return null;
	}
}
