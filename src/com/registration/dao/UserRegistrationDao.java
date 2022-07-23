package com.registration.dao;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.registration.model.Users;

public class UserRegistrationDao  {
	
	public int registerUser(Users user) throws ClassNotFoundException{
		
		Connection conAdd= null;
		PreparedStatement preparedStatement=null;
		
		int result=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String urlAdd="jdbc:mysql://localhost:3306/softwarevideodatabase?user=root&password=";
			
			conAdd= (Connection) DriverManager.getConnection(urlAdd);
			
			String sqlAdd= "INSERT INTO softwarevideodatabase.registerpersonel "+"( registerpersonelname , registerpersonelemail , registerpersonelpassword , registerpersonelrepassword ) "
			+ "VALUES(?, ?, ? ,? )";
			
			preparedStatement = (PreparedStatement) conAdd.prepareStatement(sqlAdd);
		
			preparedStatement.setString(1, user.getName());
			preparedStatement.setString(2, user.getEmail());
			preparedStatement.setString(3, user.getPass());
			preparedStatement.setString(4, user.getRe_pass());
			
			result=preparedStatement.executeUpdate();
		
		}catch(SQLException e) {
			System.out.println("SQL Error: " + e.toString());

		}
		
		return result;
		
	}

}
