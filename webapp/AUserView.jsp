<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.lang.* , java.util.* , java.io.* , java.sql.* , javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminView</title>
</head>
<body>
<%
if(session.getAttribute("res1")!=null){
ArrayList<String> drd=(ArrayList)session.getAttribute("al");
int j=0;
for(int i=1;i<=(int)session.getAttribute("res1");i++)
{
	%>
	<br>
	<%
	out.println("ROOM:"+i);
	%>
	<br>
	<%
	%>
	<br>
	<%
	out.println("|");
	int g=0;
	while(j<drd.size())
	{
		if(g>0 && g%((int)session.getAttribute("res3"))==0)
		{
			%>
		    <br>
		    <%
		    out.println("|");
		}
		if(drd.get(j)!=null){
		    out.print(drd.get(j)+" | ");
			g+=1;}
		j+=1;
		if(g%(int)session.getAttribute("res2")==0){
			%>
	    	<br>
	    	<%
			break;}
	}
}
}
else
{
	out.println(".........Seating is not created yet.........");
}
%>
<br>
<br>
<form action=admin.jsp>
<input type="submit" value="logout">
</form>
</body>
</html>