<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
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
<% 		
if(session.getAttribute("username")==null)
{
	
%>
		<div id="menu">
			<a href="index.jsp">Home</a>
			<a href="instructions.jsp">How to use</a>
			<a href="offer.jsp">Special Offers!</a>
			<a href="about.jsp">About Us</a>
			<a href="contacts.jsp">Contact Us</a>
			<a href="admin.jsp">Admin Login</a>
		</div>
		
<%
}
else
{
	%>
		
		<div id="menu">
			<a href="session.jsp">Home</a>
			<a href="session.jsp">Recharge</a>
			<a href="offer.jsp">Special Offers!</a>
			<a href="pasttransaction.jsp">History</a>		
			<a href="editinfo.jsp">Edit Personal Info</a>
			<a href="logout.jsp">Logout</a>			
		</div>
<% 		
}

%>
<form name="offer" action="offer.jsp" method="post" > 
<br><center><table width="387" height="150">

<tr>
<td><div class="tab">
  <h3>Mobile Operator  </h3></div></td>
<td> <select name="operator">
    <option value="reliance">Reliance</option>
    <option value="airtel">Airtel</option>
    <option value="vodafone">Vodafone</option>
    <option value="tatadocomo">Tata Docomo</option>
    <option value="idea">Idea</option>
  </select>  </td>
</tr>

<tr>
<td width="174"><div class="tab">
  <h3>State </h3></div> </td>
<td width="219"> 
    <select name="state">
      <option value="anp">Andhra Pradesh</option>
      <option value="arp">Arunachal Pradesh</option>
      <option value="assam">Assam</option>
      <option value="bihar">Bihar</option>
      <option value="cg">Chhattisgarh</option>
      <option value="bihar">Bihar</option>
      <option value="goa">Goa</option>
      <option value="gujrat">Gujarat</option>
      <option value="haryana">Haryana</option>
      <option value="tatadocomo">Himachal Pradesh</option>
      <option value="tatadocomo">Jammu and Kashmir</option>
      <option value="tatadocomo">Jharkhand</option>
      <option value="tatadocomo">Karnataka</option>
      <option value="tatadocomo">Kerala</option>
      <option value="tatadocomo">Madhya Pradesh</option>
      <option value="tatadocomo">Maharastra</option>
      <option value="tatadocomo">Nagaland</option>
      <option value="tatadocomo">Mizoram</option>
      <option value="tatadocomo">Madhya Pradesh</option>
      <option value="tatadocomo">Nagaland</option>
      <option value="tatadocomo">Orissa</option>
      <option value="tatadocomo">Punjab</option>
      <option value="tatadocomo">Rajasthan</option>
      <option value="tatadocomo">Sikkim</option>
      <option value="tatadocomo">Tamil Nadu</option>
      <option value="tatadocomo">Chennai</option>
      <option value="tatadocomo">Tripura</option>
      <option value="tatadocomo">Agartala</option>
      <option value="tatadocomo">Uttranchal</option>
      <option value="tatadocomo">Uttar Pradesh</option>
      <option value="tatadocomo">West Bengal</option>
    </select></td>
</tr>
</table>
</center>
					
<p align="center"><input type="submit" value="Submit" name="Submit"/></p>				
</form>		 

<div id="asd">
<%
if(request.getParameter("Submit")!=null){
	Connection con=null;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/OMR", "root", "");
PreparedStatement ps=con.prepareStatement("select * from offer");   
ResultSet rs=ps.executeQuery();
String amount="";
String offerdetail="";
String operator=request.getParameter("operator");
String state=request.getParameter("state");
int flag=0;
%>
<table><tr><td><div class="tab"> Description</div></td><td><div class="tab">Amount</div></td></tr>
<% 
while(rs.next()){
	
	if(rs.getString("operator").compareTo(operator)==0 /* && rs.getString("state").compareTo(state)==0 */)
		{
		amount=rs.getString("amount"); 
		offerdetail=rs.getString("offerdetail");
		flag++;
		%>
		<tr><td><div class="tab"><%=offerdetail %></div></td><td><div class="tab"><%=amount %></div></td></tr>
		<% 
		}
		
	
}%>
</div></table>

<%
if(flag==0)
	out.println("There is presently no offer for detail selected");
}
%>                    
                    
		<div id="footer">
     	<br><hr width="500px">
     	&#169; Copyright StopNrecharge.com. All rights reserved.
     </div>

</body>
</html>
