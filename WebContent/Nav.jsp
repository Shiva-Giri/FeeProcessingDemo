<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="AppBean.AppFormBean"%>
<%@page import="AppBean.AppFormDao"%>
<%@page import="java.util.* "%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 

<%  
List<AppFormBean> list=AppFormDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
   
	<c:forEach items="${list}" var="u">
	
<h2>Edit your application</h2><a href="Edit.jsp?id=${u.getId()}"><h2>here</h2></a><br>

<h2>Delete your application</h2><a href="deleteUser.jsp?id=${u.getId()}"><h2>here</h2></a>
</c:forEach>
<h2>Pay your fee</h2><a href="Payfee.jsp"><h2>here</h2></a><br>
<h2>Show your application</h2><a href="view.jsp"><h2>here</h2></a><br>
</body>
</html>