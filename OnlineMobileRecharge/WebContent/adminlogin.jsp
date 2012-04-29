<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.sql.*"  %>
<% 
if(session.getAttribute("adminusername")!=null)
{
%>

<html>

<head>
	<title>Online Mobile Recharge</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<link href="style.css" type="text/css" rel="stylesheet">
</head>

<body>
	<div id="main">
        	<div id="header">
                    <img src="images/header.jpg">
                </div>
		
		<div id="menu">
			<a href="adminlogin.jsp">Home</a>		
			<a href="adminlogout.jsp">Admin Logout</a>
		</div>




	<div id="about_text"><b><h2><center>Welcome Admin!</center></h2></b></div>
	<div id="about_text"><c><h3><a href="adminoffer.jsp"><li>Update Offer<br/> <a href="adminsub.jsp"><br/><li>See subscribed people list<br/>	
	<a href="adminreguser.jsp"><br/><li>See registered user list</h3></c>
	






<div id="footer">
     	<br><hr width="500px">
     	&#169; Copyright StopNrecharge.com. All rights reserved.
     </div> 
</div>
</body>
</html>
<%
}
else
{
response.sendRedirect("admin.jsp");
}%>