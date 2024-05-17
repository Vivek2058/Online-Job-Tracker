<%@page import="com.Singletone.SessionFactoryInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="EntityDatabase.*"%>
 <%@include file="AllPackage.jsp"%>
    
 <jsp:useBean id="user" class="com.PogoClass.UserProfile"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%
 AdminRegister user7=(AdminRegister)session.getAttribute("current_user");
    /* String firstname=user.getFirst_name();
    String lastname=user.getLast_name();
    String city=user.getCity();
    String district=user.getDistrict();
    int passingyear=user.getPassing_year();
     */
     if(user7==null) 
     {
    	 session.setAttribute("sms", "Not Access To Profile Page");
    	 response.sendRedirect("Register.jsp");
     }
     else if(user7.getRole().equals("User"))
     {
    	 String firstname=request.getParameter("first");
         String lastname=request.getParameter("last");
         String city=request.getParameter("city");
         String dist=request.getParameter("dist");
         int passingyear=Integer.parseInt(request.getParameter("passingyear"));
        out.println(firstname+" "+lastname+" "+city+" "+dist+" "+passingyear);
        
        Session session1=SessionFactoryInfo.getSessionFactory().openSession();
        Transaction tx=session1.beginTransaction();
        UserProfile userprofile=new UserProfile();
        userprofile.setFirst_name(firstname);
        userprofile.setLast_name(lastname);
        userprofile.setCity(city);
        userprofile.setDist(dist);
        userprofile.setPassing_year(passingyear);
        userprofile.setUsers(user7.getUsername());
        session1.save(userprofile);
        tx.commit();
        
                session.setAttribute("sms", "Profile Saved");
        		response.sendRedirect("Admin-UserHome.jsp");
     }
 
 %>
</body>
</html>