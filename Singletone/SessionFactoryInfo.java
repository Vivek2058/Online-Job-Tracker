package com.Singletone;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class SessionFactoryInfo {
  private static SessionFactory sf=null;
  
  public static SessionFactory getSessionFactory()
  {
	  try
	  {
		  if(sf==null)
		  {
			  sf=new Configuration().configure().buildSessionFactory();
		  }
	  }
	  catch(Exception e)
	  {
		  System.out.println(e);
	  }
	  return sf;
  }
}
