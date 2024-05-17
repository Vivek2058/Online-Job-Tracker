<%@page import="com.Singletone.SessionFactoryInfo,EntityDatabase.SavedJob"%>
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
         AdminRegister user8 =(AdminRegister) session.getAttribute("current_user");
         
         Session session1=SessionFactoryInfo.getSessionFactory().openSession();
         Transaction tx=session1.beginTransaction();
         
         String query="select count(*) from SavedJob where username=:user and jobid=:id";
         Query q=session1.createQuery(query);
         q.setParameter("user", user8.getUsername());
         q.setParameter("id",Integer.parseInt(request.getParameter("jobId")));
         String count=q.uniqueResult().toString();
         int finalCount=Integer.parseInt(count);
         tx.commit();
         if(finalCount==1)
         {
        	 response.sendRedirect("Admin-UserHome.jsp");
        	 session.setAttribute("sms", "Job Already Saved");
         }
         else
         {
         Transaction tx1=session1.beginTransaction();
         SavedJob obj=new SavedJob();
         obj.setUsername(user8.getUsername());
         obj.setJobid(Integer.parseInt(request.getParameter("jobId")));
         session1.save(obj);
         tx1.commit();
         response.sendRedirect("Admin-UserHome.jsp");
         session.setAttribute("sms","Job Saved");
         }
      %>
</body>
</html>