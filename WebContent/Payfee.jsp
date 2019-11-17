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
<%@page import="java.util.* "%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 
<h1>Finalize payment</h1>
<%  
List<AppFormBean> list=AppFormDao.getAllRecords1();  

request.setAttribute("list",list);  
%>  
   
	
<table border="1" width="90%">  
<tr><th>Id</th><th>Name</th>
<th>Select Course</th><th>Total Fees</th><th>1st Install.</th>
<th>2nd Install.</th><th>3rd Install.</th><th>Remaining fees</th><th>Status</th><th>Go To Pay Gate</th>
</tr>	
<c:forEach items="${list}" var="u">
  
<tr><td>${u.getId()}</td><td>${u.getName()}</td>
<td>${u.getCourse()}</td><td>${u.getTotal()}</td><td>${u.getRem_1()}</td>
<td>${u.getRem_2()}</td><td>${u.getRem_3()}</td><td>${u.getRem()}</td><td>${u.getStatus()}</td>




 <c:if test ="${10 > 2000}">
         
    <td><a href="PayProcess.jsp?id=${u.getId()}">Pay Now</a></td>

 </tr>
 	 </c:if>	 
</c:forEach>  
</table>


</body>
</html>