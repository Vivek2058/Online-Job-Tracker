<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.DaoClass.*"%>
<%@include file="AllPackage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<link rel="stylesheet" href="RequiredFiles/style.css">
<style type="text/css">
.disp-table
{
 margin:20px 20px 20px 20px;
 border: 1px solid #000;
}
h2
{
text-align: center;
text-decoration: underline;
margin-top: 20px;
font: italic;
}
</style>
</head>
<body>
	<%
	int id = Integer.parseInt(request.getParameter("jobIds"));
	AdminRegister user8 = (AdminRegister) session.getAttribute("current_user");
	ViewApplicant obj = new ViewApplicant(SessionFactoryInfo.getSessionFactory());
	List<Object[]> myApplicantList = obj.getAppliedJob(id);
	int count=1;
	%>
	<h2>Applied Information</h2>
	<div class="disp-table">
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Sr No</th>
				<th scope="col">First Name</th>
				<th scope="col">Last Name</th>
				<th scope="col">City</th>
				<th scope="col">District</th>
				<th scope="col">State</th>
				<th scope="col">Passing Year</th>
				<th scope="col">Ssc Mark</th>
				<th scope="col">Hsc Mark</th>
				<th scope="col">Dip Mark</th>
				<th scope="col">Resume</th>
			</tr>
		</thead>
		<tbody>
	<%  
	  for(Object[] o:myApplicantList)
	  {
	%>
			<tr>
				<th scope="row"><%=count %></th>
				<td><%=o[3].toString() %></td>
				<td><%=o[5].toString() %></td>
				<td><%=o[1].toString() %></td>
				<td><%=o[1].toString() %></td>
				<td><%=o[8].toString() %></td>
				<td><%=o[6].toString() %></td>
				<td><%=o[7].toString() %></td>
				<td><%=o[4].toString() %></td>
				<td><%=o[2].toString() %></td>
				
				<td><form action="GetResume?username=<%=o[9].toString() %>" method="post" target="_blank"><button type="submit" class="btn btn-primary">View Resume</button></form></td>
				
			</tr>
     <% 
     count++;
     }%>
		</tbody>
	</table>
	</div>
</body>
</html>