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
   
	
<table border="1" width="90%">  
<tr><th>Id</th><th>Name</th><th>D.O.B</th>
<th>Gender</th><th>Phone</th><th>Address</th>
<th>Edu</th><th>Fname</th><th>Occupation</th>
<th>Hphone</th><th>Course</th></tr>
	
<c:forEach items="${list}" var="u">
  
<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getDob()}</td>
<td>${u.getGender()}</td><td>${u.getPhone()}</td><td>${u.getAddress()}</td>
<td>${u.getEdu()}</td><td>${u.getFname()}</td><td>${u.getOcc()}</td>
<td>${u.getHphone()}</td><td>${u.getCourse()}</td><th>
	  
</c:forEach>  
Edit or delete your application <a href="Nav.jsp"><h3>Here</h3></a>
</table>
</body>
</html>

