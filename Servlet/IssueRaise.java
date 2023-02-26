package com.Maahi.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/feedBack")
public class IssueRaise extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String x=request.getParameter("RollNo");
		String y=request.getParameter("Name");
		String z=request.getParameter("issues");
		if(x.isEmpty() || y.isEmpty() || z.isEmpty())
		{
			RequestDispatcher rd=request.getRequestDispatcher("IssueInvalid.jsp");
	    	rd.forward(request, response);
		}
		else {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login-details","root","Sanju@999");
			PreparedStatement pss=con.prepareStatement("insert into feedback values(?,?,?)");
			pss.setString(1, x);
			pss.setString(2, y);
			pss.setString(3,z);
		    pss.executeUpdate();
			} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.println("Your response is submitted........");
	}
	}
}
