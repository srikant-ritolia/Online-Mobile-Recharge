
<%@page import="java.util.Random"%>
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
			<a href="session.jsp">Home</a>
			<a href="session.jsp">Recharge</a>
			<a href="offer.jsp">Special Offers!</a>
			<a href="pasttransaction.jsp">History</a>		
			<a href="editinfo.jsp">Edit Personal Info</a>
			<a href="logout.jsp">Logout</a>
			
		</div>

<%

String bank=request.getParameter("bank");
String card_type=request.getParameter("card_type");
String accno=request.getParameter("accno");
String pin=request.getParameter("pin");
String tid=session.getAttribute("tid").toString();
String user=session.getAttribute("username").toString();
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
try
{

con=DriverManager.getConnection("jdbc:mysql://localhost:3306/omr", "root", "" );

PreparedStatement ps1=con.prepareStatement("insert into transactiondetail values ('"+tid+"','"+bank+"','"+card_type+"','"+accno+"','"+pin+"','"+user+"')" );
ps1.executeUpdate();

out.println("<div id=\"about_text\"><center><b><h2>Your transaction is complete</h2></b></center></div>");
out.println("<div id=\"about_text\"><center><b><h2>Your transaction ID is "+tid+"</h2></b></center></div>" );
}

catch(Exception e)
{
out.print(e.toString());
}
%>

<div id="footer">
   <br><hr width="500px">
     	&#169; Copyright StopNrecharge.com. All rights reserved.
	</div>
</div>
</body>
</html>
