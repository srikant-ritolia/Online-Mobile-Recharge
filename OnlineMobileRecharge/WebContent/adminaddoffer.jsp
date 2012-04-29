<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
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
if(request.getParameter("submit")!=null){
	
	PreparedStatement ps=con.prepareStatement("insert into offer (operator,state,amount,offerdetail) values(?,?,?,?)");
	ps.setString(1,request.getParameter("operator"));
	ps.setString(2,request.getParameter("state"));
	ps.setString(3,request.getParameter("amount"));
	ps.setString(4,request.getParameter("description"));
ps.executeUpdate();
}
}
catch(Exception e)
{
out.println(e.toString());
}



%>
<form action="adminaddoffer.jsp" method="post">
  <div align="justify">
<center>  <table>
<tr>
<td width="174"><div id="about_text"><c>
 <br/> <h3>State </h3></c></div> </td>
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
<tr>
<td><div id="about_text"><c>
  <h3>Mobile Operator  </h3></c></div></td>
<td> <select name="operator">
    <option value="reliance">Reliance</option>
    <option value="airtel">Airtel</option>
    <option value="vodafone">Vodafone</option>
    <option value="tatadocomo">Tata Docomo</option>
    <option value="idea">Idea</option>
  </select>  </td>
</tr>
<tr>
<td><div id="about_text"><c>
  <h3>Offer Details  </h3></c></div></td>
<td><textarea rows="5" cols="32" name="description"></textarea></td>
</tr>
<tr>
<td><div id="about_text"><c>
  <h3>Amount  </h3></c></div></td>
<td><input type="text" name="amount"></td>
</tr>
</table>
</center>
 
   
    
 <br/> <center><input type="submit" name="submit" value="Add Offer" /></center>
  </div>
</form>
<div id="footer">
		<br><hr width="500px">
     	&#169; Copyright StopNrecharge.com. All rights reserved.
     </div>
</div>
</body>
</html>