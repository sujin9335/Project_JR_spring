package com.test.jr.db;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class JDBCTest {
	@Test
	public void testConnection() {
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection conn = DriverManager.getConnection("jdbc:log4jdbc:oracle:thin:@3.37.96.192:1521:xe", "jr2", "java1234");
			//Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jr2", "java1234");
			
			assertNotNull(conn);
			
			assertEquals("DB 연결", false, conn.isClosed());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
