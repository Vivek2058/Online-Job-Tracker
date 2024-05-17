package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import EntityDatabase.AdminRegister;
import EntityDatabase.UserProfile;

/**
 * Servlet implementation class GetResume
 */
public class GetResume extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		
		Configuration cfg=new Configuration();
	    cfg.configure("hibernate.cfg.xml");
	    SessionFactory fs=cfg.buildSessionFactory();
	    Session session1=fs.openSession();
	    
	    
	   
	   
	     UserProfile s=(UserProfile)session1.get(UserProfile.class, username);
	     response.setContentType("application/pdf");
	   
	    
	    response.getOutputStream().write(s.getImage());
	}

}
