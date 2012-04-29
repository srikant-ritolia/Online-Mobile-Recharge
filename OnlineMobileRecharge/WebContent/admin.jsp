<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.sql.*"  %>
 
<html>

<head>
	<title>Online Mobile Recharge</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<link href="style.css" type="text/css" rel="stylesheet">
	<script type="text/javascript">
//validation func

function Validate(){

	var unam=document.forms['register']['username'].value;
	var pass=document.forms['register']['password'].value;
	
if((unam==null||unam=="")||(pass==null||pass==""))
{
	alert("Please Enter all fields")
	return false
}
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
		<form action="admin.jsp" method="post" name="register" onSubmit="return Validate();" >
		<center>
<b>				
<br><table height="100">
<tr>
<td><div id="about_text"><b>
 <h3>Username </h3></b></div></td>
<td><input type="text" name="username" /></td>
</tr>
<tr>
<td><div id="about_text"><b>
<h3>Password </h3></b></div></td>
<td><input type="password" name="password" /></td>
</tr>
</table></b>
</center>

<p align="center"><input type="submit" value="Submit" name="submit" /></p>
</form>

<%@ page import="java.sql.*"  %>
<%
//--------------------------------------
if(request.getParameter("submit")!=null){
	
	out.println("Reached here");
String uname=request.getParameter("username");
String pass=request.getParameter("password");

Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
try
{
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/OMR", "root", "");
PreparedStatement ps=con.prepareStatement("select * from admin");   
ResultSet rs=ps.executeQuery();
int flag=0;
while(rs.next()){
	if(rs.getString("username").compareTo(uname)==0 && rs.getString("password").compareTo(pass)==0)
		{session.setAttribute("adminusername", rs.getString("username"));flag=1;break;}
}
if(flag==1)
{
response.sendRedirect("adminlogin.jsp");
}
else{
	%>
	<script type="text/javascript">
	alert("Incorrect Information!!");
	</script>
	<% 
	
}
}catch(Exception e){}
}
//String xyz=rs.getString("fname");
//---------------------------------------
%>




		</div>
	
		<div id="footer">
     	<br><hr width="500px">
     	&#169; Copyright StopNrecharge.com. All rights reserved.
    	</div> 
		
			</div>
</body>
</html>

