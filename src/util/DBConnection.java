package util;

import java.sql.*;
import java.util.HashMap;

public class DBConnection {
	static final String DB_URL = "jdbc:mysql://192.168.0.37/human_resource";   // container name
	static final String USER = "human_resource";
	static final String PASS = "1234";
	Connection conn = null;
	Statement stmt = null;
	HashMap<Integer, HashMap<String, Object>> data = new HashMap<>();
	public DBConnection() {
		try {
			conn = DriverManager.getConnection(DB_URL, USER, PASS);
			stmt = conn.createStatement();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public Connection getConn() {
		return conn;
	}

	public Statement getStmt() {
		return stmt;
	}
}
