<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.sql.*"  %>
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
			<a href="index.jsp">Home</a>
			<a href="instructions.jsp">How to use</a>
			<a href="offer.jsp">Special Offers!</a>
			<a href="about.jsp">About Us</a>
			<a href="contacts.jsp">Contact Us</a>
			<a href="admin.jsp">Admin Login</a>
		</div>
			
		
<%
String name=request.getParameter("name");
String emailid=request.getParameter("email");
String contact=request.getParameter("contact");

Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
try
{
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/OMR", "root", "");
	PreparedStatement ps1=con.prepareStatement("select phoneno,emailid from subscribe");   
	ResultSet rs=ps1.executeQuery();
	int flag=0;
	while(rs.next()){
		if(rs.getString("phoneno").compareTo(contact)==0 || rs.getString("emailid").compareTo(emailid)==0)
			flag=1;
	}
	if(flag==0)
	{
    PreparedStatement ps=con.prepareStatement("insert into subscribe values(\""+name+"\",\""+emailid+"\",\""+contact+"\")");   
	ps.executeUpdate();
	System.out.println("subscribed!!");
	out.println("<div id=\"about_text\"><b><br/><br/><h1><center><i>Thank you for subscribing to StopNrecharge.com. You will now receive all our updates via SMS/E-mails.</i></center></h1></b></div>");
	}
	else
	{
	System.out.println("not updated!!");
	out.println("<div id=\"about_text\"><b><br/><br/><h1><center><i>You are already subscribed.</i></center></h1></b></div>");
	}
	
}
catch(Exception e)
{
	System.out.println(e.toString());
}								


%>
<div id="footer">
     	<br><hr width="500px">
     	&#169; Copyright StopNrecharge.com. All rights reserved.
     </div>
			</div>
</body>

</html>
