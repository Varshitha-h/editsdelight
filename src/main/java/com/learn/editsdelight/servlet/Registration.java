package com.learn.editsdelight.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learn.editsdelight.entities.User;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Registration() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/editsdelight", "root", "root@123");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	public static int save(User u) {
		int status=0;
		try {
			Connection con=Registration.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into user(username,email,pswd,phoneno,address,usertype)values(?,?,?,?,?,?)");
			ps.setString(1,u.getUsername());
			ps.setString(2,u.getUemail());
			ps.setString(3,u.getUpswd());
			ps.setString(4,u.getUphoneno());
			ps.setString(5,u.getUadd());
			ps.setString(6,u.getUtype());
			status=ps.executeUpdate();
			con.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return status;
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String username, userphonenumber, userpassword, useremail, useraddress;
		username = request.getParameter("uname");
		userphonenumber = request.getParameter("phone");
		userpassword = request.getParameter("password");
		useremail = request.getParameter("email");
		useraddress = request.getParameter("user_address");
		
		User user=new User(username, useremail, userpassword, userphonenumber, useraddress, "nuser");
		Registration registration=new Registration();
		registration.save(user);
		System.out.print("Registration Sucessfull");
		response.sendRedirect("Login.jsp");

	}

}
