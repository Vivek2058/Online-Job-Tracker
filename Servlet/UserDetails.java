package com.Servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Singletone.SessionFactoryInfo;

import EntityDatabase.AdminRegister;
import EntityDatabase.UserProfile;

@MultipartConfig
public class UserDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session3=request.getSession();
		AdminRegister user9 = (AdminRegister) session3.getAttribute("current_user");
		PrintWriter out = response.getWriter();
		String firstname = request.getParameter("first");
		String lastname = request.getParameter("last");
		String city = request.getParameter("city");
		String dist = request.getParameter("dist");
		int passingyear = Integer.parseInt(request.getParameter("passingyear"));
		
		Part filePart = request.getPart("resume");
		InputStream fileContent = filePart.getInputStream();
		
		

		Session session1 = SessionFactoryInfo.getSessionFactory().openSession();
		Transaction tx = session1.beginTransaction();
		UserProfile userprofile = new UserProfile();
		userprofile.setFirst_name(firstname);
		userprofile.setLast_name(lastname);
		userprofile.setCity(city);
		userprofile.setDist(dist);
		userprofile.setPassing_year(passingyear);
        userprofile.setImage(IOUtils.toByteArray(fileContent));
		userprofile.setUsers(user9.getUsername());
		session1.save(userprofile);
		tx.commit();
        
		HttpSession session=request.getSession();
		session.setAttribute("sms", "Profile Saved");
		response.sendRedirect("Admin-UserHome.jsp");
	}

}
