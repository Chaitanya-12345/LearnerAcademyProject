package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class StudentDbConn {
	
	public static final String DB_URL="jdbc:mysql://localhost:3306/ LearnerAcademy";
	public static final String USERNAME="root";
	public static final String PASSWORD="Chaitanya12345";
	public static Connection getConn() throws ClassNotFoundException, SQLException {
		//register my driver
		Class.forName("com.mysql.jdbc.Driver");
		//establish connection with DB
		Connection con=DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
		return con;
}
}
