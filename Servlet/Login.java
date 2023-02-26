package com.Maahi.Servlet;

import java.io.IOException;
//import java.io.PrintWriter;
import java.util.*;
import java.io.*;
import javax.servlet.*;  
import javax.servlet.http.*;  
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//PrintWriter out=response.getWriter();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login-details","root","Sanju@999");
			String Un=request.getParameter("Uusername");
			String Up=request.getParameter("Upassword");
			HttpSession session=request.getSession(); 
			session.setAttribute("Usname", Un);
			PreparedStatement ps=con.prepareStatement("select username from user where username=? and password=?");
			ps.setString(1, Un);
			ps.setString(2, Up);
		    ResultSet res=ps.executeQuery();
		    if(Un.equals("20FE1A05") && Up.equals("20FE1A05"))
			{
				response.sendRedirect("admin.jsp");
			}
		    else if(res.next())
		    {
		    	RequestDispatcher rd=request.getRequestDispatcher("user.jsp");
		    	rd.forward(request, response);
		    }
		    else {
		    	RequestDispatcher rd=request.getRequestDispatcher("Invalid.jsp");
		    	rd.forward(request, response);
		    }
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
