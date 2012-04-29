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
			<a href="session.jsp">Home</a>
			<a href="session.jsp">Recharge</a>
			<a href="offer.jsp">Special Offers!</a>
			<a href="pasttransaction.jsp">History</a>		
			<a href="editinfo.jsp">Edit Personal Info</a>
			<a href="logout.jsp">Logout</a>
			
		</div>
		
		<% 
		Connection con=null;
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/omr", "root", "" );
		if(request.getParameter("submit")!=null){
			String fname=request.getParameter("fname");
			String lname=request.getParameter("lname");
			String address=request.getParameter("address");
			String email=request.getParameter("email");
			String phoneno=request.getParameter("phoneno");
			String password=request.getParameter("pass");
			PreparedStatement ps=con.prepareStatement("update user set fname=?,lname=?,address=?,email=?,phoneno=?,password=? where username=?");
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, address);
			ps.setString(4, email);
			ps.setString(5, phoneno);
			ps.setString(6, password);
			ps.setString(7,session.getAttribute("username").toString());
			%>
			
			<%
			ps.executeUpdate();
		}
		PreparedStatement ps=con.prepareStatement("select * from user where username='"+session.getAttribute("username").toString()+"'");
		ResultSet rs=ps.executeQuery();
		rs.next();
		String fname=rs.getString(1);
		String lname=rs.getString(2);
		String address=rs.getString(3);
		String email=rs.getString(4);
		String phoneno=rs.getString(5);
		String password=rs.getString(7);
		%>
		<form action="editinfo.jsp" method="post">
		<center><table width="387" height="150">


<tr>
<td><div class="tab">
  <h3>First Name  </h3></div></td>
<td> <input type="text" name="fname" value="<%=fname%>"/> </td>
</tr>

<tr>
<td><div class="tab">
  <h3>Last Name  </h3></div></td>
<td> <input type="text" name="lname" value="<%=lname%>"/> </td>
</tr>

<tr>
<td><div class="tab">
  <h3>Address  </h3></div></td>
<td> <input type="text" name="address" value="<%=address%>"/> </td>
</tr>

<tr>
<td><div class="tab">
  <h3>Email-Id </h3></div></td>
<td> <input type="text" name="email" value="<%=email%>"/> </td>
</tr>

<tr>
<td><div class="tab">
  <h3>Contact No. </h3></div></td>
<td> <input type="text" name="phoneno" value="<%=phoneno%>"/> </td>
</tr>

<tr>
<td><div class="tab">
  <h3>Password  </h3></div></td>
<td> <input type="text" name="pass" value="<%=password%>"/> </td>
</tr>

<tr>
<td></td>
<td><input type="submit" name="submit" value="Update"/></td>
</tr>
</table>
</form>
		
	
		<div id="footer">
     	<br><hr width="500px">
     	&#169; Copyright StopNrecharge.com. All rights reserved.
    	</div> 
		
			</div>
</body>
</html>
