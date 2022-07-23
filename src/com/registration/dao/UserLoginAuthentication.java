package com.registration.dao;

import java.sql.ResultSet;
import com.mysql.jdbc.PreparedStatement;
public class UserLoginAuthentication {

	
	public static String AuthenticateUser(String name, String pass) {
		String message=null;
		String sql;
		sql="Select registerpersonelpassword from softwarevideodatabase.registerpersonel Where registerpersonelname=?"; 
	
		try {
			PreparedStatement preparedStatement= (PreparedStatement) UserLoginDao.getDBConnection().prepareStatement(sql);
			preparedStatement.setString(1, name);
			ResultSet rs=preparedStatement.executeQuery();
			
			if(rs.next()) {
				if(rs.getString(1).equals(pass)) {
					message="Success";
				}else {
					message="Invalid Credentials";
				}
			}else {
				message="Invalid Credentials";
			}
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		return message;
	
	}
}
