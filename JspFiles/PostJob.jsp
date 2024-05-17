
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

form{
animation: slideUp 0.5s ease;
}
@keyframes slideUp {
            from {
                opacity: 0;
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
   <div class="job-apply">
     <%
       if(session.getAttribute("sms")!=null)
       {
     %>
        <%@include file="AlertShow.jsp"%>
     <% 
       }
     %>
	
	<form class="row g-3" style="margin-left: 10px; margin-right: 10px;" action="JobPostProcess.jsp" method="post">
	<h3 style="text-align: center; margin-top: 30px; text-decoration: underline;">Post A Job</h3>
		<div class="hu col-md-4 ">
		<label for="validationDefault02" class="form-label">JOb Category</label>
			<select
				class="form-select" id="validationDefault04" required name="category">
				<option selected disabled value="">Select</option>
				<option value="IT">IT</option>
				<option value="Machanical">Machanical</option>
				<option value="Civil">Civil</option>
				<option value="E&TC">E&TC</option>
				<option value="Science">Science</option>

			</select>
		</div>
		<div class="hu col-md-4">
			<label for="validationDefault02" class="form-label">JOb Title</label>
			<input type="text" class="form-control" id="validationDefault02"
				value="" required name="job_title">
		</div>
		<div class="hu col-md-4">
			<label for="validationDefaultUsername" class="form-label">Job ID</label>
			<div class="input-group">
				<span class="input-group-text" id="inputGroupPrepend2">@</span> <input
					type="text" class="form-control" id="validationDefaultUsername"
					aria-describedby="inputGroupPrepend2" required name="jobid">
			</div>
		</div>
		<div class="hu col-md-4">
			<label for="validationDefault03" class="form-label">Required Skill</label> <input
				type="text" class="form-control" id="validationDefault03" required name="skill">
		</div>
		<div class="hu col-md-4">
			<label for="validationDefault04" class="form-label">Passing Criteria</label> <select
				class="form-select" id="validationDefault04" required name="criteria">
				<option selected disabled value="">Select</option>
				<option value="none">none</option>
				<option value="2020">2020</option>
				<option value="2021">2021</option>
				<option value="2022">2022</option>
				<option value="2023">2023</option>
				<option value="2024">2024</option>

			</select>
		</div>
		<div class="hu col-md-4">
			<label for="validationDefault02" class="form-label">JOb Location</label>
			<input type="text" class="form-control" id="validationDefault02"
				value="" required name="job_location">
		</div>
		
		<div class="hu col-12" style="text-align: center; margin-top: 80px;">
			<button class="btn btn-primary" type="submit">Submit form</button>
		</div>
	</form>
</div>
</body>
</html>