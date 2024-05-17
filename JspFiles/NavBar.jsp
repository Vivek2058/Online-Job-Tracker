 <%@page import="EntityDatabase.AdminRegister" %>
 <%@include file="Links.jsp" %>
 <%
     AdminRegister user1=(AdminRegister)session.getAttribute("current_user");
     if(user1==null)
    		 {
  %><nav class="innav navbar navbar-expand-lg navbar-light" style="background-color: rgb(153, 102, 102)">
    	  
    	    <div class="collapse navbar-collapse b " id="navbarTogglerDemo02">
    	       <h1 class="move-text" style="color: #fff;">Online Job Tracker</h1>
    	    </div>
    	    <div style="display: flex">
    	      <form action="HomePage.jsp" >
    	        <button class="btn btn-outline-success b home" type="submit" onclick="" style="border: solid 2px #000;background-color: 	rgb(255, 179, 179)"><strong>Home</strong></button>
    	      </form>
    	      <form action="Register.jsp" class="d-flex" style="margin-left: 20px;">
    	        <button class="btn btn-outline-success b home" type="submit" onclick=""style="border: solid 2px #000;background-color: 	rgb(255, 179, 179);margin-right: 15px;"><strong>Sign Up</strong></button>
    	      </form>
    	    </div>
    	</nav>
  <% 
    	       
    		 }
   
     
     else if(user1.getRole().equals("Admin") || user1.getRole().equals("User"))
     {
  %>
  <head>
  <style type="text/css">
  *{
    padding: 0;
  }
   .innav1
   {
     padding-top: 30px;
     padding-bottom: 79.5px;
     background-color:rgb(138, 178, 215);
     
   }
   strong
   {
   border:2px solid #fff;
   border-radius: 5px;
   padding: 5px 10px 5px 10px;
   text-align: left;
   color:#000;
   }
   btn
   {
    border:2px solid #fff;
   }
   .home
   {
     font-size: 20px;
   }
   nav
   {
     background-color:  rgb(138, 178, 215);
   }
   .innav1 .navbar .navbar-light
   {
   background-color: #000;}
  </style>
  </head>
  <script>
  </script>
  <body>
  <nav class="innav1 navbar navbar-light ">
  <div class="container-fluid" style="background-color:  rgb(207, 219, 231); border-radius: 5px; margin-left: 10px; margin-right: 10px;">
   <% 
   if(user1.getRole().equals("Admin"))
   {
	   %><h1 style="color: #000"><i>Online Job Tracker</i></h1><H3 style="color: #000">Admin Protal</H3></strong>
   <%}
   else
   {
	   %> <h1 style="color: #000"><i>Online Job Tracker</i></h1><H3 style="color: #000">User Protal</H3></strong>
   <% }%>
    <form class="d-flex">
      <strong><input style="background-color: rgb(207, 219, 231); border: 2px solid" class="form-control me-2" type="search" placeholder="<%=user1.getUsername()%>"aria-label="Search"></strong>
      <form action="Logout.jsp" method="post">
      <strong><a class="btn btn-primary" href="Logout.jsp" role="button" target="vivek1">Logout User</a></strong>
      </form>
    </form>
  </div>
</nav>
    	</body>
  <% 
     }
     else
     {
    %>
<nav class="innav navbar navbar-expand-lg navbar-light"> -->
    	  <div class="container-fluid">
    	    <a class="navbar-brand b home" href="ApplyJob.jsp">Navbar</a>
    	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    	      <span class="navbar-toggler-icon"></span>
    	    </button>
    	    <div class="collapse navbar-collapse b " id="navbarTogglerDemo02">
    	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
    	        <li class="nav-item">
    	          <a class="nav-link activ ae b home" aria-current="page" href="HomePage.jsp" >Home</a>
    	        </li>
    	        <li class="nav-item b">
    	          <a class="nav-link home" href="index.jsp" >Link</a>
    	        </li>
    	        <li class="nav-item">
    	          <a class="nav-link  b home" href="PostJob.jsp" >Disabled</a>
    	        </li>
    	      </ul>
    	      <form action="Register.jsp" class="d-flex">
    	        <button class="btn btn-outline-success b home" type="submit" traget="_blank">Sign Up</button>
    	      </form>
    	    </div>
    	  </div>
    	</nav>
   <% 
     }
 %>

