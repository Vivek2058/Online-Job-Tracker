package com.DaoClass;

import org.hibernate.Session;
import org.hibernate.Transaction;
import com.Singletone.SessionFactoryInfo;

import EntityDatabase.AdminRegister;
import EntityDatabase.JobPost;

public class PostJob 
{
    public void InsertJob(JobPost post,AdminRegister reg)
    {
    	Session session=SessionFactoryInfo.getSessionFactory().openSession();
    	Transaction tx=session.beginTransaction();
    	post.setAd(reg);
    	session.save(post);
    	tx.commit();
    }
}
