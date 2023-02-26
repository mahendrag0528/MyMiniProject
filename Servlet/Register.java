package com.Maahi.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			String Uname=request.getParameter("username");
			String Pss=request.getParameter("password");
			if(Uname.equals(Pss) && !(Uname.isEmpty()) && !(Pss.isEmpty())) {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login-details","root","Sanju@999");
			PreparedStatement pss=con.prepareStatement("select username from user where username=? and password=?");
			pss.setString(1, Uname);
			pss.setString(2, Pss);
		    ResultSet res=pss.executeQuery();
		    if(res.next()) {
		    	response.sendRedirect("Iregister.jsp");
		    }else {
		    	PreparedStatement ps=con.prepareStatement("insert into user(username,password) values(?,?)");
				ps.setString(1,Uname);
				ps.setString(2,Pss);
			int x=ps.executeUpdate();
			if(x>0)
			{
				out.println("done...");
			}
			else {
				out.println("Not done...");
			}
		    }
			}
			else {
				response.sendRedirect("Iregister.jsp");
			}
			} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
