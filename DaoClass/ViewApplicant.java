package com.DaoClass;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;

import EntityDatabase.JobPost;

public class ViewApplicant {
    private SessionFactory factory;

	public ViewApplicant(SessionFactory factory) {
		super();
		this.factory = factory;
	}
    
	public List<Object[]> getAppliedJob(int jobId)
	{
		
		try
		{
			String query="select * from Applyjob where jobpost_adminid=:id";
			  Session s=this.factory.openSession();
			  NativeQuery na=s.createNativeQuery(query);
			  na.setParameter("id",jobId);
			  List<Object[]> mylist=na.list();
			
			 return mylist;
		}
		catch(Exception e)
		{
			
		}
		return null;
	}
}
