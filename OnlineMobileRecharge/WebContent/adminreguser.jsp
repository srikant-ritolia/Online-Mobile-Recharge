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

<%

Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
try
{
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/omr", "root", "" );
if(request.getParameter("user")!=null){
	PreparedStatement ps=con.prepareStatement("delete from user where username=?");
	ps.setString(1, request.getParameter("user"));
	ps.executeUpdate();
	response.sendRedirect("adminreguser.jsp");
}
PreparedStatement ps=con.prepareStatement("select * from user");
ResultSet rs=ps.executeQuery();

out.print("<div id=\"about_text\"> <table width=\"95%\" align=\"center\" border=\"1\"><tr><th><b><h2>First Name</th> <th><b><h2>Last Name</th> <th><b><h2>Address</th> <th><b><h2>Email-id</th> <th><b><h2>Contact No.</th>	<th><b><h2>Username</th> <th><b><h2>Delete User</th></tr></b>");
out.print("</br></br>");

while(rs.next())
{
	out.print("<tr class=\"tab\" height=\"40px\"><td  align=\"center\">");
 	out.println(rs.getString("fname")+"</font></td>");
 	out.println("<td  align=\"center\">"+rs.getString("lname")+"</td>");
 	out.println("<td  align=\"center\">"+rs.getString("address")+"</td>");
 	out.println("<td  align=\"center\">"+rs.getString("email")+"</td>");
 	out.println("<td  align=\"center\">"+rs.getString("phoneno")+"</td>");
 	out.println("<td  align=\"center\">"+rs.getString("username")+"</td>");
    %>
 	<td  align="center"> <a href="adminreguser.jsp?user=<%=rs.getString("username")%>">X</a></td>
 	<% 
 	out.print("</tr></br>");
}
out.print("</table></font></div>");

}
catch(Exception e)
{
out.println(e.toString());
}



%>


<div id="footer">
		<br><hr width="500px">
     	&#169; Copyright StopNrecharge.com. All rights reserved.
     </div>
</div>
</body>
</html>