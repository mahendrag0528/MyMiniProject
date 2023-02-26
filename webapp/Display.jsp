<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.lang.* , java.util.* , java.io.* , java.sql.* , javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DisplaySeating</title>
</head>
<body>
<%
int nR=Integer.parseInt(request.getParameter("NoRM"));
int nS=Integer.parseInt(request.getParameter("NoSPR"));
int np=Integer.parseInt(request.getParameter("NopR"));
session.setAttribute("res1", nR);
session.setAttribute("res2", nS);
session.setAttribute("res3", np);
%>
<!-- <a href="main.jsp">display</a> -->
<a href="main.jsp">display</a> 
</body>
</html>