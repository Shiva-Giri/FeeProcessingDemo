<%@page import="bean.LoginBean"%><%@page import="bean.LoginDao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="obj" class="bean.LoginBean"/>

<jsp:setProperty property="*" name="obj"/>


	
<% 
boolean status=LoginDao.validate(obj);
if(status){
	
	out.println("<h1>Login Successful</h1><br><br>");
	
	session.setAttribute("session","TRUE");
	}

else{
	out.print("<h2>Sorry,email or password error</h2>");%>
	<jsp:include page="index.html"></jsp:include>
	
<% }%>
	
	<h2>Now you can fill your student application form </h2><br /><br />
	<a href="Application.jsp"><h2>here</h2></a><br /><br />
	
	<h2>View and Edit form if already filled </h2><a href="view.jsp"><h2>here</h2></a><br /><br />
	
</body>
</html>