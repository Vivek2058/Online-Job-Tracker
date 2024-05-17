<%@page import="java.util.*"%>
<%@page import="com.DaoClass.*"%>
<%@page import="org.hibernate.query.NativeQuery"%>
<%@page import="com.Singletone.SessionFactoryInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.hibernate.SessionFactory,org.hibernate.cfg.Configuration,org.hibernate.Session,org.hibernate.Transaction,org.hibernate.query.Query,EntityDatabase.AdminRegister"%>
<jsp:useBean id="admin" class="EntityDatabase.AdminRegister"></jsp:useBean>
<jsp:setProperty property="*" name="admin"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <%
     String loginUser=admin.getUsername();
     String loginPassword=admin.getPassword();
     String role=admin.getRole();
     
     
     HttpSession session2=request.getSession();
     
     UserInfo user=new UserInfo(SessionFactoryInfo.getSessionFactory());
     AdminRegister adminRegister=user.getUser(loginUser,loginPassword);
     
     if(adminRegister==null)
     {
    	session2.setAttribute("sms", "Login Failed...");
    	response.sendRedirect("index.jsp");
     }
     else
     {
    	 if(adminRegister.getRole().equals("Admin"))
    	 {
    		 session2.setAttribute("current_user",adminRegister);
        	 response.sendRedirect("HtmlPage/AdminLogin.html");
        	 session2.setAttribute("sms", "Login Success");
    	 }
    	 else
    	 {
    		 session2.setAttribute("current_user",adminRegister);
    		 response.sendRedirect("HtmlPage/UserLogin.html"); 
    		 session2.setAttribute("sms", "Login Success");
    	 }
     } 
     
    
        
     %>
</body>
</html>