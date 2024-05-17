<%@page import="com.Singletone.SessionFactoryInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="AllPackage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%
       int jobid=Integer.parseInt(request.getParameter("jobId"));
  
       Session session1=SessionFactoryInfo.getSessionFactory().openSession();
       Transaction tx=session1.beginTransaction();
       JobPost deleteJob=(JobPost)session1.get(JobPost.class,jobid);
       System.out.println(deleteJob);
       session1.delete(deleteJob);
       tx.commit();
       response.sendRedirect("ViewJob.jsp");
  %>
</body>
</html>