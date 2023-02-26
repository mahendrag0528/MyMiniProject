<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href=user.css>
<title>UserPage</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.0/css/fontawesome.min.css">
</head>
<body>
<section class="header">
<nav>
<a href="user.jsp"><img src="logo.png"></a>
<div class="nav-links">
<ul>
<li><a href="UserView.jsp">ViewSeating</a></li>
<li><a href="issue.jsp">QueryRaise</a></li>
<li><a href="#22">Contact</a></li>
<li><a href="LoginForm.jsp">Logout</a></li>
</ul>
</div>
</nav>
<div class="menu">
<%
if(session.getAttribute("res1")!=null){
	%>
	<p style="font-size:25px;">Seating is Ready.....</p>
	<%
}
else{
	%>
	<p style="font-size:25px;">Seating is not Ready yet.....</p>
	<%
}
%>

<h1><i>EXAM HALL SEATING<br> ARRANGEMENT</i></h1>
<p>It is for creating seat allotment of an Applicant</p>
</div>
</section>
<section>
<div class="foot" id="22">
<h1 style="font-size:50px;"><i>Contact</i></h1>
<p>make this project under the guidance of prof.Shaik Salma<br>
for any queries contact us <br> mailto: xxxxxxxxxx@gmail.com</p>
</div>
</section>
</body>
</html>