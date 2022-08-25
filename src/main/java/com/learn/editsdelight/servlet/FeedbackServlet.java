package com.learn.editsdelight.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.learn.editsdelight.entities.User;

/**
 * Servlet implementation class FeedbackServlet
 */
@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		User user = (User) session.getAttribute("currentuser");
		String feedback=request.getParameter("feedback");
		int rate=Integer.parseInt(request.getParameter("rate"));
		String improvement=request.getParameter("improvement");
		System.out.println(user.getUsername());
		System.out.println(feedback);
		System.out.println(rate);
		System.out.println(improvement);
		Connection connection=FeedbackServlet.getConnection();
		try {
			String qString="insert into feedback (username,feedback,rating,improvement)values(?,?,?,?)";
			PreparedStatement pStatement=connection.prepareStatement(qString);
			pStatement.setString(1, user.getUsername());
			pStatement.setString(2, feedback);
			pStatement.setInt(3, rate);
			pStatement.setString(4, improvement);
			pStatement.executeUpdate();
			response.sendRedirect("Service.jsp");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
