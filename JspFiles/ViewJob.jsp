<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="EntityDatabase.AdminRegister"%>
<%@page import="com.Singletone.SessionFactoryInfo"%>
<%@page import="com.DaoClass.ViewJob"%>
<%@page import="EntityDatabase.JobPost"%>
<%@page import="java.util.*"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.query.NativeQuery"%>
<%@include file="Links.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	
}

.card {
	border: 1px solid #ccc;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	margin-bottom: 20px;
	transition: box-shadow 0.3s ease;
	width: 400px;
	animation: slideUp 0.5s ease;
	margin-left: 100px;
	
}

.card:hover {
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.card-header {
	background-color: #007bff;
	color: white;
	padding: 10px;
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
	text-align: left;
}

.card-body {
	padding: 20px;
}

.card-title {
	font-size: 1.25rem;
	margin-bottom: 10px;
}

.card-text {
	color: #6c757d;
	margin-bottom: 15px;
}

.btn-primary {
	background-color: #007bff;
	border-color: #007bff;
}

.btn-primary:hover {
	background-color: #0056b3;
	border-color: #0056b3;
}

.card_button {
	text-align: center;
}

@
keyframes slideUp {from { opacity:0;
	transform: translateY(50px);
}

to {
	opacity: 1;
	transform: translateY(0);
}
}
.container {
        width: 50%;
        margin: 50px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
 h2
 {
 text-align: center;
 text-decoration: underline;
 margin-top: 15px;
 margin-bottom: 25px;
 font: italic;
 font-style: italic;
 }
</style>
</head>
<body>
	<%
	AdminRegister user3 = (AdminRegister) session.getAttribute("current_user");
	if (user3 == null) {
		session.setAttribute("sms", "Unknown Access");
		response.sendRedirect("Register.jsp");
	} else if (user3.getRole().equals("Admin")) {
		/* ViewJob job=new ViewJob(SessionFactoryInfo.getSessionFactory());
		List<JobPost> str=job.getUser("vivek2050@gmail.com");
		out.println(str); */

		Session session1 = SessionFactoryInfo.getSessionFactory().openSession();
		Transaction tx = session1.beginTransaction();
		String query = "select * from jobpost where admin=:user";
		NativeQuery na = session1.createNativeQuery(query);
		na.setParameter("user", user3.getUsername());
		List<Object[]> mylist = na.list();
        %>
		<div class="container-flex">
		 <h2>Posted Job</h2>
	    <div class="row">
	        <%
	        // Your Java code to retrieve job posts and loop through them
	        for (Object[] o : mylist) {
	        %>
	        <div class="col-md-6 mb-6">
	            <div class="card">
	                <div class="card-header"><%= o[2].toString() %></div>
	                <div class="card-body" style="text-align: center;">
	                    <h5 class="card-title"><strong>Stream :- </strong><%=o[1].toString()%></h5>
                    <p class="card-text"><strong>Passing Criteria :- </strong><%=o[4].toString()%></p>
                    <p class="card-text"><strong>Required Skill :- </strong><%=o[5].toString()%></p>
                    <p class="card-text"><strong>Location :- </strong><%=o[3].toString()%></p>
                    <div style="text-align: center;">
                        <a href="DeleteJob.jsp?jobId=<%=o[0].toString()%>" class="btn btn-primary">Delete Job</a>
                    </div>
	                </div>
	            </div>
	        </div>
	        <% } // End of loop %>
	    </div>
	</div>

	<%
	}
	else if (user3.getRole().equals("User")) {
	Session session1 = SessionFactoryInfo.getSessionFactory().openSession();
	Transaction tx = session1.beginTransaction();
	String query = "select * from jobpost";
	NativeQuery na = session1.createNativeQuery(query);
	List<Object[]> mylist = na.list();
    %>
    <div class="container-fluid">
    <h2>All Jobs</h2>
    <div class="row">
        <% 
        for (Object[] o : mylist) {
            String query1 = "select count(username) from applyjob where jobPost_adminId=:id and username=:user1";
            NativeQuery na1 = session1.createNativeQuery(query1);
            na1.setParameter("id", o[0].toString());
            na1.setParameter("user1", user3.getUsername());
            String count = na1.getSingleResult().toString();
            int finalCount = Integer.parseInt(count);
        %>
        <div class="col-md-6 mb-6">
            <div class="card">
                <div class="card-header" style="display: flex; justify-content: space-between;">
                    <strong><%=o[2].toString()%></strong> <strong>JOB_ID :- <%=o[0].toString()%></strong>
                </div>

                <div class="card-body">
                    <h5 class="card-title"><strong>Stream :- </strong><%=o[1].toString()%></h5>
                    <p class="card-text"><strong>Passing Criteria :- </strong><%=o[4].toString()%></p>
                    <p class="card-text"><strong>Required Skill :- </strong><%=o[5].toString()%></p>
                    <p class="card-text"><strong>Location :- </strong><%=o[3].toString()%></p>
                    <div class="card_button">
                        <% if (finalCount == 1) { %>
                            <button type="button" class="btn btn-success">Already Applied</button>
                        <% } else { %>
                            <a href="ApplyJob.jsp?jobId=<%=o[0].toString()%>" class="btn btn-primary" target="home">Apply Job</a>
                        <% } %>
                        <a href="SavedJob.jsp?jobId=<%=o[0].toString()%>" class="btn btn-primary">Save Job</a>
                    </div>
                </div>
            </div>
        </div>
        <% } }%>
    </div>
</div>

	   
			
</body>
</html>