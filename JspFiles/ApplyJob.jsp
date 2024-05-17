<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.DaoClass.*,EntityDatabase.*"%>
<%@include file="AllPackage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="Links.jsp"%>
</head>
<body>
<%
AdminRegister user5=(AdminRegister)session.getAttribute("current_user");

	UserProfileDao dao=new UserProfileDao(SessionFactoryInfo.getSessionFactory());
	UserProfile userprofile=dao.getUser(user5.getUsername());


String applyId=request.getParameter("jobId");
session.setAttribute("applyNewId", applyId);

Session session1=SessionFactoryInfo.getSessionFactory().openSession();

UserProfile validateProfile=(UserProfile)session1.get(UserProfile.class,user5.getUsername());
if(validateProfile==null)
{
	response.sendRedirect("Admin-UserHome.jsp");
	session.setAttribute("sms","Please Fill Profile First");
}
else if(user5.getAppliedJob()<=5)
{
%>
   <div class="job-apply">
	
	<form class="row g-3" style="margin-left: 10px; margin-right: 10px;" action="ApplyJobProcess.jsp">
	<h3 style="text-align: center; margin-top: 20px; text-decoration: underline;">Apply For Job</h3>
		<div class="hu col-md-4 ">
			<label for="validationDefault01" class="form-label">First
				name</label> <input type="text" class="form-control"
				id="validationDefault01" name="first" value="<%=userprofile.getFirst_name()%>">
		</div>
		<div class="hu col-md-4">
			<label for="validationDefault02" class="form-label">Last name</label>
			<input type="text" class="form-control" id="validationDefault02" name="last"
				 value="<%=userprofile.getLast_name()%>">
		</div>
		<div class="hu col-md-4">
			<label for="validationDefaultUsername" class="form-label">Username</label>
			<div class="input-group">
				<span class="input-group-text" id="inputGroupPrepend2">@</span> <input
					type="text" class="form-control" id="validationDefaultUsername"
					aria-describedby="inputGroupPrepend2" name="username" required value="<%=user5.getUsername()%>">
			</div>
		</div>
		<br> <br> <br>
		<div class="hu col-md-4">
			<label for="validationDefault03" class="form-label">Job Id</label> <input
				type="text" class="form-control" id="validationDefault03" name="jobid" required value="<%=request.getParameter("jobId")%>">
		</div>
		<div class="hu col-md-4">
			<label for="validationDefault03" class="form-label">City</label> <input
				type="text" class="form-control" name="city" id="validationDefault03" value="<%=userprofile.getCity()%>">
		</div>
		<div class="hu col-md-4">
			<label for="validationDefault04" class="form-label">State</label> <select
				class="form-select" id="validationDefault04" required name="state">
				<option selected disabled value="">Select</option>
				<option value="Maharashtra">Maharashtra</option>
				<option value="Goa">Goa</option>
				<option value="Karnataka">Karnataka</option>
				<option value="Delhi">Delhi</option>

			</select>
		</div>
		<div class="hu col-md-4">
			<label for="validationDefault05" class="form-label">District</label> <input
				type="text" class="form-control" id="validationDefault05" value="<%=userprofile.getDist()%>" name="dist">
		</div>
		<div class="hu ha mb-1">
			<label for="formFile" class="form-label">Upload Resume</label> <input
				class="form-control" type="file" id="formFile">
		</div>
		<div class="hu col-md-4 ">
			<label for="validationDefault01" class="form-label">SSC
				Mark</label> <input type="text" class="form-control"
				id="validationDefault01"  required name="ssc">
		</div>
		<div class="hu col-md-4 ">
			<label for="validationDefault01" class="form-label">HSC
				Mark</label> <input type="text" class="form-control"
				id="validationDefault01"  required name="hsc">
		</div>
		<div class="hu col-md-4 ">
			<label for="validationDefault01" class="form-label">Dip/
				Degree</label> <input type="text" class="form-control"
				id="validationDefault01"  required name="dip">
		</div>
		<div class="hu col-md-4 ">
			<label for="validationDefault01" class="form-label">Passing
				Year</label> <input type="text" class="form-control"
				id="validationDefault01" required name="year" value="<%=userprofile.getPassing_year()%>">
		</div>
		<div class="hu col-12" style="text-align: center; margin-top: 80px;">
			<button class="btn btn-primary" type="submit">Submit form</button>
		</div>
	</form>
</div>
<%
}
else
{
 response.sendRedirect("Admin-UserHome.jsp");
 session.setAttribute("sms","Cross Maximum Limit please get Subscription");
}
%>
</body>
</html>