<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="AppBean.*"%>  

<%  
 String id=request.getParameter("id"); 
AppFormBean u = AppFormDao.getRecordById(Integer.parseInt(id));  
%>  
 
  <%	System.out.println("Hi");  %>

<h1>Payment Process</h1>  
<form action="PayFinal.jsp" method="post">  
ID: <input type="hidden" name="id" value="<%= u.getId()%>"/><br><br> 

Name: <input type="text" name="name" value="<%= u.getName()%>"><br><br>
Amount : <input type="text" name="amount" /> <br><br>
<input type="submit" value="Pay"/>
</form> 

</body>
</html>