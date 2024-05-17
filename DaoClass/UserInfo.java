package com.DaoClass;
import EntityDatabase.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.Singletone.SessionFactoryInfo;

public class UserInfo {
     private SessionFactory factory;

	public UserInfo(SessionFactory factory) {
		super();
		this.factory = factory;
	}
     
	public AdminRegister getUser(String username,String password)
	{
		AdminRegister userlogin=null;
		try
		{
			 String query="from AdminRegister where username=:user and password=:pass";
			 Session session=this.factory.openSession();
			 Transaction tx=session.beginTransaction();
			 Query q=session.createQuery(query);
			 q.setParameter("user",username);
			 q.setParameter("pass",password);
			 userlogin=(AdminRegister)q.uniqueResult();
			 tx.commit();
			 
		}
		catch(Exception e)
		{
			
		}
		return userlogin;
	}
}
