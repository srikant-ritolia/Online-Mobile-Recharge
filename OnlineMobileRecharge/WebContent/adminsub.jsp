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
		<a href="adminlogin.jsp">Home</a>		
			<a href="adminlogout.jsp">Admin Logout</a>
		</div>
<center>
<%

Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
try
{
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/omr", "root", "" );
PreparedStatement ps=con.prepareStatement("select * from subscribe");
ResultSet rs=ps.executeQuery();
int flag=0;

out.print("<div id=\"about_text\"> <table width=\"70%\" border=\"1\"><tr><th><b><h2>Name</th><th><b><h2>Email-id</th>	<th><b><h2>Contact No.</th>	</tr></b>");
out.print("</br></br>");

while(rs.next())
{
	out.print("<tr class=\"tab\" height=\"40px\"><td  align=\"center\">");
 	out.println(rs.getString("name")+"</font></td>");
 	out.println("<td  align=\"center\">"+rs.getString("emailid")+"</td>");
 	out.println("<td  align=\"center\">"+rs.getString("phoneno")+"</td>");
 	out.print("</tr></br>");
}
out.print("</table></font></div>");
}
catch(Exception e)
{
out.println(e.toString());
}



%>
</center>

<div id="footer">
     	<br><hr width="500px">
     	&#169; Copyright StopNrecharge.com. All rights reserved.
     </div>
</div>
</body>
</html>
