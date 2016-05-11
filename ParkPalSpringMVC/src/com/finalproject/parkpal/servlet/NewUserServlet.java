package com.finalproject.parkpal.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.finalproject.parkpal.dao.NewMemberDAO;
import com.finalproject.parkpal.dto.Member;

@WebServlet("/newUserServlet")
public class NewUserServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {

		try {
			Member newMember = new Member();
			newMember.setEmail(request.getParameter("email"));
			newMember.setPassword(request.getParameter("password"));
			newMember.setFirstName(request.getParameter("first_name"));
			newMember.setLastName(request.getParameter("last_name"));

			NewMemberDAO.addNewUserToDatabase(newMember);
		}

		catch (Throwable theException) {
			System.out.println(theException);
		}
	}
}
