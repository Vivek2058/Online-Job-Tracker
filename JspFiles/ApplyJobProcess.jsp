<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="EntityDatabase.*"%>
   <%@include file="AllPackage.jsp" %>
   <jsp:useBean id="apply" class="com.PogoClass.ApplyJob"></jsp:useBean>
   <jsp:setProperty property="*" name="apply"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String first_name=request.getParameter("first");
	String last_name=request.getParameter("last");
	String username=request.getParameter("username");
	int jobId=Integer.parseInt(request.getParameter("jobid"));
	String city=request.getParameter("city");
	String state=request.getParameter("state");
	String dist=request.getParameter("dist");
	int ssc_mark=Integer.parseInt(request.getParameter("ssc"));
	int hsc_mark=Integer.parseInt(request.getParameter("hsc"));
	int dip_mark=Integer.parseInt(request.getParameter("dip"));
	int passing_year=Integer.parseInt(request.getParameter("year"));
	
	
	out.println(first_name+" "+last_name+" "+username+" "+jobId+" "+city+" "+state+" "+dist+" "+ssc_mark+" "+hsc_mark+" "+dip_mark+" "+passing_year);
	
	ApplyJob ap=new ApplyJob();
	ap.setFirstName(first_name);
	ap.setCity(city);
	ap.setLastName(last_name);
	ap.setUsername(username);
	ap.setState(state);
	ap.setZip(dist);
	ap.setSscMark(ssc_mark);
	ap.setHscMark(hsc_mark);
	ap.setDrgreeMark(dip_mark);
	ap.setPassingYear(passing_year);
	ap.setState(state);
	
	
	
	JobPost job=new JobPost();
	job.setAdminId(jobId);
	
	ap.setJobPost(job);
	
	Session session1=SessionFactoryInfo.getSessionFactory().openSession();
	Transaction tx=session1.beginTransaction();
	session1.save(ap);
	
	
	AdminRegister user10 = (AdminRegister) session.getAttribute("current_user");
	String query="update AdminRegister set AppliedJob=AppliedJob+1 where username=:user";
	Query q=session1.createQuery(query);
	q.setParameter("user",user10.getUsername());
	q.executeUpdate();
	tx.commit();
	session.setAttribute("sms", "Success Applied");
	response.sendRedirect("Admin-UserHome.jsp");
%>
</body>
</html>