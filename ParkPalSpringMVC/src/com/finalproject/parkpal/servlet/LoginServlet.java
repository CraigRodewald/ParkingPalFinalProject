package com.finalproject.parkpal.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.finalproject.parkpal.dao.MemberDAO;
import com.finalproject.parkpal.dto.Member;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {

		try {

			Member user = new Member();
			user.setEmail(request.getParameter("email"));
			user.setPassword(request.getParameter("password"));

			boolean isValidUser = MemberDAO.checkIfMemberExists(user);

			if (isValidUser) {

				HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionUser", user);
				response.sendRedirect("userLogged"); // logged-in
										// page
			}

			else
				response.sendRedirect("invalidLogin"); // error
										// page
		}

		catch (Throwable theException) {
			System.out.println(theException);
		}
	}
}