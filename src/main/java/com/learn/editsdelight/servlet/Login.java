package com.learn.editsdelight.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.learn.editsdelight.dao.Userdao;
import com.learn.editsdelight.entities.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();
		Userdao userd = new Userdao();
		User us = userd.getemailandpassword(email, password);
		if (us == null) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Username or Password incorrect');");
			out.println("location='Login.jsp';");
			out.println("</script>");
		} else if (us.getUtype().equals("nuser")) {
			HttpSession hs = request.getSession();
			hs.setAttribute("currentuser", us);
			response.sendRedirect("Service.jsp");
		} else {
			HttpSession httpSession=request.getSession();
			httpSession.setAttribute("admin", us.getUtype());
			response.sendRedirect("Admin.jsp");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
