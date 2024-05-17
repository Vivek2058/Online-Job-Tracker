
<%@page import="com.Singletone.SessionFactoryInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.hibernate.SessionFactory,org.hibernate.cfg.Configuration,org.hibernate.Session,org.hibernate.Transaction,org.hibernate.query.Query,EntityDatabase.AdminRegister"%>
<jsp:useBean id="admin" class="EntityDatabase.AdminRegister"></jsp:useBean>
<jsp:setProperty property="*" name="admin"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="RequiredFiles/style.css">
<%@include file="Links.jsp"%>
<style type="text/css">
.navbar 
{
     background-color: #333;
     color: #fff;
     padding: 10px;
     position: fixed;
     width: 100%;
     top: 0;
     left: 0;
}
.registerDisplay
    {
      height: 50vh;
      width: 100%;
      display:inline-block;
      text-align:center;
      margin-top: 45vh;
      background-color: #f0f8ff;
    }
 button
 {
 border-radius: 10px;
 }
 h2
 {
 text-decoration: underline;
 }
</style>
</head>

<body class="registerDisplay">
     <%
          
          Session a=SessionFactoryInfo.getSessionFactory().openSession();
          Transaction tx=a.beginTransaction(); 
          
          
          String username=admin.getUsername();
          String password=admin.getPassword();
          String role=admin.getRole();
          HttpSession session1=request.getSession();
          try
          {
        	  AdminRegister c=new AdminRegister();
              c.setRole(role);
              c.setUsername(username);
              c.setPassword(password);
              
              a.save(c);
              tx.commit();
              
              
              session1.setAttribute("sms", "Register Successfull");
              response.sendRedirect("Register.jsp");
          }
          catch(Exception e)
          {
        	  session1.setAttribute("sms", "Register Failed");
              response.sendRedirect("Register.jsp");
          }
          a.close(); 
     %>
</body>
</html>