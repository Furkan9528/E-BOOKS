package com.registration.dao;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.registration.model.UserComment;

public class UserCommentDao {

	public int registerUserComment (UserComment user) throws ClassNotFoundException {
		
		Connection conEkle = null;
		PreparedStatement preparedStatementEkle = null;

		int result=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String urlEkle = "jdbc:mysql://localhost:3306/softwarevideodatabase?user=root&password=";

			conEkle = (Connection) DriverManager.getConnection(urlEkle);
			
			String sqlEkle = "INSERT INTO softwarevideodatabase.personel " + "( personelname, personelno , personelmessage , personelemail)"
					+ "VALUES( ? , ? , ? , ?)";
			preparedStatementEkle = (PreparedStatement) conEkle.prepareStatement(sqlEkle);
			
			preparedStatementEkle.setString(1, user.getNameal());
			preparedStatementEkle.setString(2, user.getNumberphone());
			preparedStatementEkle.setString(3, user.getMessage());
			preparedStatementEkle.setString(4, user.getEmail());


			result=preparedStatementEkle.executeUpdate();

		} catch (SQLException e) {
			System.out.println("SQL Error: " + e.toString());

		}
		return result;	
	}
	
	
}
