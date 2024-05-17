<%
   String sms=(String)session.getAttribute("sms");
   if(sms==null)
   {
	   
   }
   else
   {
	   
   
%>
<div class="alert alert-success alert-dismissible fade show" role="alert" style="text-align: center;">
<strong><%=sms %></strong> 
<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
   }
 session.removeAttribute("sms");
%>
