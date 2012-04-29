<!DOCTYPE html>
<html>

<head>
	<title>Online Mobile Recharge</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<link href="style.css" type="text/css" rel="stylesheet">
	<script type="text/javascript">
//validation func

function Validate(){

	var nam=document.forms['register']['fname'].value;
	var dnam=document.forms['register']['uname'].value;
	var no=document.forms['register']['phoneno'].value;
	var pass=document.forms['register']['pass'].value;
	var cpass=document.forms['register']['cpass'].value;

if((nam==null||nam=="")||(dnam==null||dnam=="")||(no==null||no=="")||(pass==null||pass=="")||(cpass==null||cpass==""))
{
	alert("Please Enter all fields")
	return false
}
if(no.length!=10)
{
	alert("The mobile number that you entered is invalid");	
	return false;
}

/*
if(!pass.equals(cpass))
{
	alert("The password and the confirm password are not same");	
	return false;
}
*/
return true
}
</script>
	
</head>
<body>
	<div id="main">
        	<div id="header">
                    <img src="images/header.jpg">
                </div>
		
		<div id="menu">
			<a href="index.jsp">Home</a>
			<a href="instructions.jsp">How to use</a>
			<a href="offer.jsp">Special Offers!</a>
			<a href="about.jsp">About Us</a>
			<a href="contacts.jsp">Contact Us</a>
			<a href="admin.jsp">Admin Login</a>
		</div>
		<div id="form">
		<form action="registerlogin.jsp" method="post" name="register" onsubmit="return Validate();" >
		
		<center>
		<a><h3>Please fill in your details. <i>Fields marked with * are compulsory.</i></h3></a>
		<br>
<b><br><table height="240">
<tr>
<td>First Name*</td>
<td><input type="text" name="fname" /></td>
</tr>
<tr>

<tr>
<td>Last Name</td>
<td><input type="text" name="lname" /></td>
</tr>
<tr>
<td>Address</td>
<td><input type="text" name="address" /></td>
</tr>
<tr>
<tr>
<td>Email-Id</td>
<td><input type="text" name="email" /></td>
</tr>
<tr>
<tr>
<td>Contact No.*</td>
<td><input type="text" name="phoneno" /></td>
</tr>
<tr>
<tr>
<td>Desired Username*</td>
<td><input type="text" name="uname" /></td>
</tr>
<tr>
<tr>
<td>Password*</td>
<td><input type="password" name="pass" /></td>
</tr>
<tr>

<td>Confirm Password*</td>
<td><input type="password" name="cpass" /></td>
</tr>
</table></b>
</center>

<p align="center"><input type="submit" value="Submit" name="submit" /></p>
</form>
		</div>
	
		<div id="footer">
     	<br><hr width="500px">
     	&#169; Copyright StopNrecharge.com. All rights reserved.
     </div>
			</div>
</body>
</html>
