<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="AppProcess.jsp" method="post">
Name: <input type="text" name="name" placeholder="Full name"><br><br>
Date of birth: <input type="date" name="dob" placeholder="D.O.B"><br><br>
Gender :<select name="gender">
	<option>Male</option>
	<option>Female</option>
	<option>Other</option>
</select><br><br>
Phone:<input type="number" name="phone" placeholder="Phone/mobile no."><br><br>
Address:<input type="text" name="address" placeholder="Permanent Address"><br><br>
Education:<select name="edu"><br><br>
	<option>BCA</option>
	<option>MCA</option>
	<option>Btech</option>
	<option>Mtech</option>
	<option>MBA</option>
	<option>BA</option>
	<option>MA</option>
</select><br><br>

Father's name:<input type="text" name="fname" placeholder="Full name"><br><br>
Occupation:<input type="text" name="occ" placeholder="Private/Govt."><br><br>
Home Phone no.<input type="text" name="hphone" placeholder="will be verified!"><br><br>
<h3>Training/Course Selection</h3>
<select name="course">
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