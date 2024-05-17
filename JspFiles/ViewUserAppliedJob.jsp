<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.DaoClass.*"%>
<%@include file="AllPackage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="Links.jsp"%>
<style type="text/css">
body {
	
}

.card {
	border: 1px solid #ccc;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	margin-bottom: 20px;
	transition: box-shadow 0.3s ease;
	width: 500px;
	animation: slideUp 0.5s ease;
	margin-left: 30%;
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
</style>
</head>
<body>
	<%
        AdminRegister user8=(AdminRegister)session.getAttribute("current_user");
        UserAppliedJob obj=new UserAppliedJob(SessionFactoryInfo.getSessionFactory());
        List<Object[]> myListUser=obj.getAppliedJob(user8.getUsername());
        
        
        
        String id=request.getParameter("vivek");
        System.out.println(id);
        if(id==null)
        {
        for(Object[] o:myListUser)
        {
   %>
	<div class="card">
		<div class="card-header"
			style="display: flex; justify-content: space-between;">
			<Strong><%=o[2].toString()%></Strong> <strong>JOB_ID :- <%=o[0].toString() %></strong>
		</div>

		<div class="card-body">
			<h5 class="card-title">
				<strong>Stream :- </strong><%=o[1].toString()%></h5>
			<p class="card-text">
				<strong>Passing Criteria :- </strong><%=o[4].toString()%></p>
			<p class="card-text">
				<strong>Required Skill :- </strong><%=o[5].toString()%></p>
			<p class="card-text">
				<strong>Location :- </strong><%=o[3].toString()%></p>
			<div class="card_button"></div>

		</div>
	</div>

	<%
        }
        }
        else
        {
        	ViewSavedJob job=new ViewSavedJob(SessionFactoryInfo.getSessionFactory());
        	List<Object[]> myList1=job.getAppliedJob(user8.getUsername());
        	
        	for(Object[] o1:myList1)
            {
%>
	<div class="card">
		<div class="card-header"
			style="display: flex; justify-content: space-between;">
			<Strong><%=o1[2].toString()%></Strong> <strong>JOB_ID :- <%=o1[0].toString() %></strong>
		</div>

		<div class="card-body">
			<h5 class="card-title">
				<strong>Stream :- </strong><%=o1[1].toString()%></h5>
			<p class="card-text">
				<strong>Passing Criteria :- </strong><%=o1[4].toString()%></p>
			<p class="card-text">
				<strong>Required Skill :- </strong><%=o1[5].toString()%></p>
			<p class="card-text">
				<strong>Location :- </strong><%=o1[3].toString()%></p>
			<div class="card_button"></div>
            <a href="ApplyJob.jsp?jobId=<%=o1[0].toString()%>" class="btn btn-primary">Apply Job</a>
		</div>
	</div>
<%
	} } %>
</body>
</html>