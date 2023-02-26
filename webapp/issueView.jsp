<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.lang.* , java.util.* , java.io.* , java.sql.* , javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Issues</title>
<style>
*{
	padding:0;
	margin:0;
}
.header{
	min-height:100vh;
	width:100%;
	background-image:url(gray.jpg);
	background-position:center;
    background-size:cover;
    position:relative;	
}
tr>td{
color:#fff;}
h1{
padding-top:100px;
text-align:center;
margin-top:0px;
margin-bottom:15px;}
h2{
padding-left:37%;
margin-top:100px;
margin-left:auto;
margin-right:auto;}
p{
text-color:#fff;
margin-top:10px;
}
.mov{
margin-left:auto;
margin-right:auto;
}

.foot{
	text-align:center;
	background:#fff;
	padding:10px 10px;
}
#adjust{
padding-left:37%;
margin-top:2%;
margin-right:auto;
margin-bottom:25%;
margin-left:auto;
}
</style>
</head>
<body>
<section class="header">
<h1>...Issues...</h1>
<div>
<table border=1 class="mov">
<tr>
    <th>Roll Number</th>
    <th>Name</th>
    <th>Issue</th>
</tr>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login-details","root","Sanju@999");
PreparedStatement pss=con.prepareStatement("select * from feedback");
ResultSet s=pss.executeQuery();
while(s.next()){
	%>
	<tr>
	<td><%out.println(s.getString(1));%></td>
	<td><%out.println(s.getString(2));%></td>
	<td><%out.println(s.getString(3));%></td>
	</tr>
	<%
}
}
catch(ClassNotFoundException e){
	e.printStackTrace();
}
catch(SQLException e1)
{
	e1.printStackTrace();
}
%>
</table>
<h2>After clear issue Remove it from table</h2>
<form action=Delete method=post id="adjust">
<label for="fname">Roll Number:</label>
  <input type="text" id="fname" name="name"><br><br>
  <input type="submit" value="remove"><p><a href="admin.jsp">exit-to-home</a></p>
</form>
</div>
</body>
</html>