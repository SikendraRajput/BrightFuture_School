package com.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class getConnection {
	
	private static getConnection single_instance=null;
    private Connection con=null;

	
	public Connection connection() {
		try {
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/brightfuture","root","mysql");
		}
		catch(Exception e) {
		System.out.println(e);	
		}
		finally {
			return con;
		}
	}
	public static getConnection getInstance() {
		if(single_instance==null) {
		 single_instance=new getConnection();
			return single_instance;
		}
		else {
			return single_instance;
		}
		
		}
	
}
