<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create</title>
<style>
.center{margin-top:50px;
margin-left:auto;
margin-right:auto;
}
</style>
</head>
<body>
<div style="text-align:center;">
<form action=Display.jsp method=post style="text-align:center;">
<table border="1" class="center">
<caption>
     <h1>Details for seating</h1>
</caption>
<tr><td>Enter number of rooms:</td><td><input type="text" name="NoRM"></td></tr>
<tr><td>Enter no.of Students per room:</td><td><input type="text" name="NoSPR"></td></tr>
<tr><td>Enter no.of Students per row:</td><td><input type="text" name="NopR"></td></tr>
<tr><td><input type="submit" value="DISPLAY SEATING"></td></tr>
</table>
</form>
</div>
</body>
</html>