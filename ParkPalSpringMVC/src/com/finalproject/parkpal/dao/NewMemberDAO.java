package com.finalproject.parkpal.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.finalproject.parkpal.dto.Member;

public class NewMemberDAO {
	private static PreparedStatement preparedStatement = null;
	
	public static void addNewUserToDatabase(Member newMember) {

		try {
			Connection currentCon = ConnectionManager.getConnection();
			
			preparedStatement = currentCon
					.prepareStatement("INSERT INTO member (first_name, last_name, email, user_password) VALUES (?,?,?,?)");
			preparedStatement.setString(1, newMember.getFirstName());
			preparedStatement.setString(2, newMember.getLastName());
			preparedStatement.setString(3, newMember.getEmail());
			preparedStatement.setString(4, newMember.getPassword());
			preparedStatement.executeUpdate();
			System.out.println("New member added");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
