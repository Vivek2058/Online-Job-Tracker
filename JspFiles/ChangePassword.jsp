<%@page import="com.Singletone.SessionFactoryInfo"%>
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
        AdminRegister user5=(AdminRegister)session.getAttribute("current_user");
        Session session1=SessionFactoryInfo.getSessionFactory().openSession();
        String current_password=request.getParameter("current_password");
        String password=request.getParameter("new_password");
        String re_password=request.getParameter("confirm_password");
        
        if(password.equals(re_password) && current_password.equals(user5.getPassword()))
        {
        	Transaction tx=session1.beginTransaction();
            String query="update AdminRegister set password=:pass where username=:user";
            Query q=session1.createQuery(query);
            q.setParameter("pass",re_password);
            q.setParameter("user",user5.getUsername());
            q.executeUpdate();
            tx.commit();
            response.sendRedirect("Admin-UserHome.jsp");
            HttpSession s=request.getSession();
            s.setAttribute("sms", "Password Changed");
        }
        else
        {
        	session.setAttribute("sms", "Something Event Wrong");
        	response.sendRedirect("Admin-UserHome.jsp");
        }
        	
     %>
</body>
</html>