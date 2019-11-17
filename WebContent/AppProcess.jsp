<%@page import="bean.LoginBean"%><%@page import="bean.LoginDao"%><%@page import="AppBean.AppFormDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="obj" class="AppBean.AppFormBean"/>
<jsp:setProperty property="*" name="obj"/>
  
 <%
 int status=AppFormDao.save(obj);
 
 if(status>0)
 { 
	 out.print("<h1>Registration Successful For Student Application</h1><br><br>");
 }else{
	 out.print("<h1>Registration Failed!</h1>");
 }
 		
 %>
<h2>Pay your fee</h2><a href="Payfee.jsp"><h2>here</h2></a><br>
<h2>Show your application</h2><a href="view.jsp"><h2>here</h2></a><br> 
 </body>
</html>