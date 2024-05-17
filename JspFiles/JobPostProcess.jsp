<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="EntityDatabase.*,com.DaoClass.*"%>
<jsp:useBean id="post" class="com.PogoClass.JobPost"></jsp:useBean>
<jsp:setProperty property="*" name="post" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	AdminRegister user8=(AdminRegister)session.getAttribute("current_user");
	if(user8.getRole().equals("Admin"))
	{
		String jobTitle=request.getParameter("job_title");
	    int jobId=Integer.parseInt(request.getParameter("jobid"));
	    String skill=request.getParameter("skill");
	    String category=request.getParameter("category");
	    String Cr=request.getParameter("criteria");
	    String location=request.getParameter("job_location");
	    out.println(jobId);
	    out.println(skill);
	    out.println(jobTitle);
	    out.println(category);
	    out.println(Cr);
	    
	    AdminRegister user4=(AdminRegister)session.getAttribute("current_user");

	    
	    AdminRegister r=new AdminRegister();
	    r.setUsername(user4.getUsername());
	    JobPost j=new JobPost();
	    j.setAdminId(jobId);
	    j.setJobTitle(jobTitle);
	    j.setSkill(skill);
	    j.setJobCategory(category);
	    j.setPassingYear(Cr);
	    j.setLocation(location);
	    
	    PostJob job=new PostJob();
	    job.InsertJob(j,r);
	    response.sendRedirect("PostJob.jsp");
	    session.setAttribute("sms", "Job Post Successfull");
	}
	else
	{
		session.setAttribute("sms", "Not Admin");
		session.invalidate();
		response.sendRedirect("index.jsp");
	}
	
	%>
</body>
</html>