package com.learn.editsdelight.ServiceServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BabyPhotography
 */
@WebServlet("/BabyPhotography")
public class BabyPhotography extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BabyPhotography() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String phno=request.getParameter("phno");
		String email=request.getParameter("email");
		String requirements=request.getParameter("requirements");
		String loc=request.getParameter("loc");
		String budget=request.getParameter("budget");
		
		int status=0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/editsdelight", "root", "root@123");
			PreparedStatement ps=con.prepareStatement("insert into babyphotography(name,phoneno,emailid,requirerments,city,package)values(?,?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, phno);
			ps.setString(3, email);
			ps.setString(4, requirements);
			ps.setString(5, loc);
			ps.setString(6, budget);
			
			
			status=ps.executeUpdate();
			con.close();
			System.out.print("successfuly inserted");
			response.sendRedirect("Thankyou.jsp");
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
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
