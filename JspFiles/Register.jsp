<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<link rel="stylesheet" href="RequiredFiles/style.css">
<title>JobTrackerLogin</title>
</head>
<body class="bodyClass">
  <div style="  margin-left: 80%;margin-top: 10px" ><a class="btn btn-primary" href="index.jsp" role="button" style="margin-right: 10px;background-color: #fff;color: #000">Login Page</a>
  <a class="btn btn-primary" href="HomePage.jsp" role="button" style="background-color: #fff;color: #000;">Back To Home Page</a>
  </div>
  
	<div class="loginMain">
	<%@include file="AlertShow.jsp" %>
		<div class="loginMargin">
			<form action="AdminRegisterProcess.jsp" method="get">
				<div class="LoginTitle">
					<h3 style='color: #fff'>Register</h3>
				</div>
				<div class="row mb-1 row1">
					<label for="inputEmail3" class="col-sm-3 col-form-label" style='color: #fff'"><b>Email</b></label>
					<div class="col-sm-9">
						<input type="email" class="form-control" id="inputEmail3"
							placeholder="Enter Username" name="username">
					</div>
				</div>
				<div class="row mb-1 row1">
					<label for="inputPassword3" class="col-sm-3 col-form-label"style='color: #fff'><b>Password</b></label>
					<div class="col-sm-9">
						<input type="password" class="form-control" id="inputPassword3"
							placeholder="Enter Password" name="password">
					</div>
				</div>
				<div class="row mb-1 row1">
					<label for="inputPassword3" class="col-sm-3 "style='color: #fff'><b>Re-Password</b></label>
					<div class="col-sm-9">
						<input type="password" class="form-control" id="inputPassword3"
							placeholder="Enter Password" name="re-password">
					</div>
				</div>
				<fieldset class="row mb-3 radio2">
					<legend class="col-form-label col-sm-2 pt-0 "style='color: #fff'><b>Role</b></legend>
					<div class="col-sm-10">
						<div class="form-check">
							<input class="form-check-input" type="radio" name="role"
								id="gridRadios1" value="Admin" checked> <label
								class="form-check-label" for="gridRadios1" style='color: #fff'> Admin </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="role"
								id="gridRadios2" value="User"> <label
								class="form-check-label" for="gridRadios2" style='color: #fff'> User </label>
						</div>
					</div>
		</div>
		</fieldset>
		<button type="submit" class="btn btn-primary smbtm" style="margin-left: 240px">Register</button>
		</form>
		

</body>
</html>
