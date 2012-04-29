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
if(request.getParameter("id")!=null){
	PreparedStatement ps=con.prepareStatement("delete from offer where id=?");
	ps.setString(1, request.getParameter("id"));
	ps.executeUpdate();
	response.sendRedirect("adminoffer.jsp");
}
PreparedStatement ps=con.prepareStatement("select * from offer");
ResultSet rs=ps.executeQuery();

out.print("<div id=\"about_text\"> <table width=\"80%\" align=\"center\" border=\"1\"><tr><th><b><h2>Operator</th> <th><b><h2>State</th> <th><b><h2>Amount</th> <th><b><h2>Offer detail</th><th><b><h2>Delete Offer</th><th><b><h2>Edit Offer</th></tr></b>");
out.print("</br></br>");

while(rs.next())
{
	out.print("<tr class=\"tab\" height=\"40px\"><td  align=\"center\">");
 	out.println(rs.getString("operator")+"</font></td>");
 	out.println("<td  align=\"center\">"+rs.getString("state")+"</td>");
 	out.println("<td  align=\"center\">"+rs.getString("amount")+"</td>");
 	out.println("<td  align=\"center\">"+rs.getString("offerdetail")+"</td>");
 	//out.println("<td  align=\"center\">"+rs.getString("offerdetail")+"</td>");
 	 %>
 	<td  align="center"> <a href="adminoffer.jsp?id=<%=rs.getString("id")%>">X</a></td>
 	<td  align="center"> <a href="admineditoffer.jsp?id=<%=rs.getString("id")%>">Edit</a></td>
 	
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
<a href="adminaddoffer.jsp"><div id="about_text"><c><h3/>Add Offer</c></a></div>


<div id="footer">
		<br><hr width="500px">
     	&#169; Copyright StopNrecharge.com. All rights reserved.
     </div>
</div>
</body>
</html>