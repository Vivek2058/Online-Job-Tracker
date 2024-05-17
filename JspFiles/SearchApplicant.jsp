<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="AllPackage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
   AdminRegister user3=(AdminRegister)session.getAttribute("current_user");
   if(user3.getRole().equals("Admin"))
   {
	   
   }
   else
   {
	   response.sendRedirect("index.jsp");
   }
%>
</body>
</html>