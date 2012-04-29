<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>

<head>
	<title>Online Mobile Recharge</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<link href="style.css" type="text/css" rel="stylesheet" />
	<style type="text/css">
	@import "slidertron.css";
</style>
	
</head>

<body>


<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

	<div id="main">
        	<div id="header">
        		<img src="images/header.jpg"></img>
            </div>
		
		<div id="menu">
			<a href="index.jsp">Home</a>
			<a href="instructions.jsp">How to use</a>
			<a href="offer.jsp">Special Offers!</a>
			<a href="about.jsp">About Us</a>
			<a href="contacts.jsp">Contact Us</a>
			<a href="admin.jsp">Admin Login</a>
		</div>
		
		<div id="contentbox">
			<div id="left_sidebar">
					<div id="box1">
						<div class="container">
							<div class="titlebar">Special Offers
							</div>
								<div class="sidebarcontent">
								<marquee direction="up" onmousemove="this.stop();" onmouseout="this.start();">
              
							<ul>
                            <li>Recharge with Rs. 500 or more and get an assured gift!</li>
                            <br/><li>Full Talktime on recharges above Rs. 1000/-</li></ul>
								</marquee>
								</div>
						</div>
					</div>
					
					<div id="box2">
						<div class="container1">
						<!-- 	<img src="images/fb.jpg"/> -->
							<div class="fb-like-box" data-href="https://www.facebook.com/StopNrecharge" data-width="278" data-height="500" data-show-faces="true" data-border-color="black" data-stream="true" data-header="true"></div>
						</div>
					</div>
			</div>
			
			<div id="mid_sidebar">
				<div id="mbox1">
				
<script type="text/javascript">
<!--
var image1=new Image()
image1.src="images/slideshow/airtel.gif"
var image2=new Image()
image2.src="images/slideshow/docomo.png"
var image3=new Image()
image3.src="images/slideshow/idea.jpg"
var image4=new Image()
image2.src="images/slideshow/reliance.jpg"
var image5=new Image()
image2.src="images/slideshow/vodafone.jpg"
var image6=new Image()
image2.src="images/slideshow/pic.jpg"
//-->
</script>
<img src="images/slideshow/airtel.gif" name="slide" width="516" height="320" />
<script>
<!--
//variable that will increment through the images
var step=1
function slideit(){
//if browser does not support the image object, exit.
if (!document.images)
return
document.images.slide.src=eval("image"+step+".src")
if (step<3)
step++
else
step=1
//call function "slideit()" every 2.5 seconds
setTimeout("slideit()",2500)
}
slideit()
//-->
</script>

</div>
                                    <div id="mbox2">
                                    <h2><center>Now recharge your mobile online!</center></h2>
<br/> One of its kind Online Prepaid Recharge site in India. We provide easy and instant recharge for Airtel, Aircel, Vodafone, LOOP Mobile (BPL Mobile), Reliance, Idea, BSNL, Virgin and Tata Indicom mobile for all circles across India. <br/>Recharge we deliver is PIN less and there is no need to call the IVR. Why buy a voucher or topup card when we provide a convenient way to recharge prepaid mobile using credit/debit/cash card and net banking. <br/>*No extra/hidden cost, you only pay MRP. <br/><center>From this site you get the advantage of 'ANY TIME RECHARGE' while you are travelling anywhere in the world. </center><br/><br/>More services to be added soon... 
                                    
                                    </div>
					
			</div>
			
			<div id="right_sidebar">
					
                    <div id="rbox">
					<div class="container">
					<div class="titlebar">Login</div>
					<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.sql.*"  %>
<%
//--------------------------------------
if(request.getParameter("submit")!=null){
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");

Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
try
{
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/omr", "root", "");
PreparedStatement ps=con.prepareStatement("select * from user");   
ResultSet rs=ps.executeQuery();
int flag=0;
while(rs.next()){
	if(rs.getString("username").compareTo(uname)==0 && rs.getString("password").compareTo(pass)==0)
		{session.setAttribute("username", rs.getString("username"));flag=1;break;}
}
if(flag==1)
{
response.sendRedirect("session.jsp");
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
<form method="post" action="index.jsp">
<br/>
<center>
<table height="79">
<tr>
<td>Username&nbsp;&nbsp;&nbsp;</td>
<td><input type="text" name="uname" /></td>
</tr>&nbsp;
<tr>
<td>Password</td>
<td><input type="password" name="pass" /></td>
</tr>
</table>
</center>
<p align="center"><input type="submit" value="Submit" name="submit" /></p>
</form>
<center><i>&nbsp;Not a member yet?</i>&nbsp;<a href="register.jsp">Sign Up Now!</a></center>
					</div>
					
					<div id="rbox1">
					<div class="container">
					<div class="titlebar">Subscribe for Updates</div>
					
<br />
</form>

<form action="subscribe.jsp" method="post" name="subscribe" onSubmit="return Validate();" >

<center>
<table height="99">
<tr>
<td>Name&nbsp;&nbsp;&nbsp;</td>
<td><input type="text" name="name" /></td>
</tr>&nbsp;
<tr>
<td>Email-id</td>
<td><input type="text" name="email" /></td>
</tr>
<tr>
<td>Contact No.</td>
<td><input type="text" name="contact" /></td>
</tr>

</table>
</center>
<p align="center"><input type="submit" value="Subscribe Now!" name="submit" /></p>
<script type="text/javascript">

//validation func
function Validate(){

	var num=document.forms['subscribe']['contact'].value;
	var nam=document.forms['subscribe']['name'].value;
	var eid=document.forms['subscribe']['email'].value;
	
	if(num.length!=10)
	{
		alert("Invalid mobile number!");	
		return false;
	}
	
	if((num==null||num=="")||(nam==null||nam=="")||(eid==null||eid==""))
	{
		alert("Please Enter all fields");
		return false;
	}

return true;
}
</script>				
					</div>
					<div id="rbox3"><img src="images/secure.jpg" width="92%"/></div>
					</div>
			</div>
		</div>
	<div class="clear"></div>
	</div>
	<div id="footer">
     	<br><hr width="500px">
     	&#169; Copyright StopNrecharge.com. All rights reserved.
     </div>  
	</div>
</body>

</html>