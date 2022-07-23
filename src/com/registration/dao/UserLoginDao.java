package com.registration.dao;

import java.sql.DriverManager;
import com.mysql.jdbc.Connection;

public class UserLoginDao {
	
	public static Connection conn=null;
	public static Connection getDBConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String urlAdd="jdbc:mysql://localhost:3306/softwarevideodatabase?user=root&password=";	
			conn= (Connection) DriverManager.getConnection(urlAdd);
			
			
		} catch (Exception e) {
			System.out.println("Something went wrong !!");
		}
		return conn;


		
	}
}
