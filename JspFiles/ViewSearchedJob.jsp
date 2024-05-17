<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ include file="AllPackage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="Links.jsp" %>
<style type="text/css">
.card
{
 margin-left: 100px;
}
h2
{
text-align: center;
margin-top: 15px;
text-decoration: underline;
margin-bottom: 15px;
}
</style>
</head>
<body>
    <%
    AdminRegister user3 = (AdminRegister) session.getAttribute("current_user");
    
    String searchText=request.getParameter("search");
    Session session1 = SessionFactoryInfo.getSessionFactory().openSession();
	Transaction tx = session1.beginTransaction();
	String query = "select * from jobpost where jobTitle Like :name";
	NativeQuery na = session1.createNativeQuery(query);
	na.setParameter("name","%"+searchText+"%");
	List<Object[]> mylist = na.list();
      
    %>
    <div class="container-fluid">
    <h2><%=searchText %> Related Jobs</h2>
    <div class="row">
        <% 
        if(mylist!=null)
        {
        for (Object[] o : mylist) {
            String query1 = "select count(username) from applyjob where jobPost_adminId=:id and username=:user1";
            NativeQuery na1 = session1.createNativeQuery(query1);
            na1.setParameter("id", o[0].toString());
            na1.setParameter("user1", user3.getUsername());
            String count = na1.getSingleResult().toString();
            int finalCount = Integer.parseInt(count);
        %>
        <div class="col-md-6 mb-6">
            <div class="card">
                <div class="card-header" style="display: flex; justify-content: space-between;">
                    <strong><%=o[2].toString()%></strong> <strong>JOB_ID :- <%=o[0].toString()%></strong>
                </div>

                <div class="card-body">
                    <h5 class="card-title"><strong>Stream :- </strong><%=o[1].toString()%></h5>
                    <p class="card-text"><strong>Passing Criteria :- </strong><%=o[3].toString()%></p>
                    <p class="card-text"><strong>Required Skill :- </strong><%=o[4].toString()%></p>
                    <p class="card-text"><strong>Location :- </strong><%=o[2].toString()%></p>
                    <div class="card_button">
                        <% if (finalCount == 1) { %>
                            <button type="button" class="btn btn-success">Already Applied</button>
                        <% } else { %>
                            <a href="ApplyJob.jsp?jobId=<%=o[0].toString()%>" class="btn btn-primary">Apply Job</a>
                        <% } %>
                        <a href="SavedJob.jsp?jobId=<%=o[0].toString()%>" class="btn btn-primary">Save Job</a>
                    </div>
                </div>
            </div>
        </div>
        <% }}
        else
        {
        	out.print("No Job Found");
        }
        %>
    </div>
</div>

</body>
</html>