package com.sandy.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class SinlgetonConnection
{
	
	private static Connection con =null;
	
	public static Connection getCon() {
		return con;
	}

	static
	{
		
		try
		{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			con=DriverManager.getConnection(  
					"jdbc:oracle:thin:@localhost:1521:xe","system","sandhya");  
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	
	}
	

}
