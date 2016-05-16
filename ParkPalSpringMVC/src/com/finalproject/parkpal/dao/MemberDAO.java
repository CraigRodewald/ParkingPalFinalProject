package com.finalproject.parkpal.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.finalproject.parkpal.dto.Member;

public class MemberDAO {
	static Connection currentCon = null;
	static ResultSet rs = null;

	public static boolean checkIfMemberExists(Member member) {

		// preparing some objects for connection
		Statement stmt = null;

		//String email = member.getEmail();
		//String password = member.getPassword();

		String searchQuery = "select * from member where email='" + member.getEmail() + "' AND user_password='" + member.getPassword()
				+ "'";
		
		// "System.out.println" prints in the console; Normally used to
		// trace the process
		//System.out.println("Your user name is " + email);
		//System.out.println("Your password is " + password);
		//System.out.println("Query: " + searchQuery);

		try {
			// connect to DB
			currentCon = ConnectionManager.getConnection();
			stmt = currentCon.createStatement();
			rs = stmt.executeQuery(searchQuery);
			boolean more = rs.next();

			// if user does not exist set the isValid variable to
			// false
			if (!more) {
				System.out.println("Sorry, you are not a registered user! Please sign up first");
				return false;
			}

			// if user exists set the isValid variable to true
			else if (more) {
				//String firstName = rs.getString("first_name");
				//String lastName = rs.getString("last_name");

				System.out.println("Welcome " + (rs.getString("first_name")));
				//member.setFirstName(firstName);
				//member.setLastName(lastName);
				
				member.setFirstName(rs.getString("first_name"));
				member.setLastName(rs.getString("last_name"));
				
			}
		}

		catch (Exception ex) {
			System.out.println("Log In failed: An Exception has occurred! " + ex);
		}

		finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
				}
				rs = null;
			}

			if (stmt != null) {
				try {
					stmt.close();
				} catch (Exception e) {
				}
				stmt = null;
			}

			if (currentCon != null) {
				try {
					currentCon.close();
				} catch (Exception e) {
				}

				currentCon = null;
			}
		}

		return true;

	}
}
