<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="AppBean.AppFormBean,AppBean.AppFormDao"%>  

<%  
 String id=request.getParameter("id"); 
AppFormBean u = AppFormDao.getRecordById(Integer.parseInt(id));  
%>  
  
<h1>Edit Form</h1>  
<form action="editUser.jsp" method="post">  
 <input type="hidden" name="id" value="<%= u.getId()%>"/> 

Name: <input type="text" name="name" value="<%= u.getName()%>"><br><br>
Date of birth: <input type="date" name="dob" value="<%= u.getDob()%>"><br><br>
Gender :<select name="gender" selected="<%= u.getGender()%>">
	<option>Male</option>
	<option>Female</option>
	<option>Other</option>
</select><br><br>
Phone:<input type="number" name="phone" value="<%= u.getPhone()%>"><br><br>
Address:<input type="text" name="address" value="<%= u.getAddress()%>"><br><br>
Education:<select name="edu" selected="<%= u.getEdu()%>"><br><br>
	<option>BCA</option>
	<option>MCA</option>
	<option>Btech</option>
	<option>Mtech</option>
	<option>MBA</option>
	<option>BA</option>
	<option>MA</option>
</select><br><br>

Father's name:<input type="text" name="fname" value="<%= u.getFname()%>"><br><br>
Occupation:<input type="text" name="occ" value="<%= u.getOcc()%>"><br><br>
Home Phone no.<input type="text" name="hphone" value="<%= u.getHphone()%>"><br><br>
<h3>Training/Course Selection</h3>
<select name="course" selected="<%= u.getCourse()%>">
	<option>C/C++</option>
	<option>Core Java</option>
	<option>Adv. Java</option>
	<option>Python</option>
	<option>Python + ML</option>
	<option>Android</option>
	<option>.NET framework</option>
</select><br><br>

<input type="submit" name="submit" value="Submit"><br><br>

</form>

</body>
</html>