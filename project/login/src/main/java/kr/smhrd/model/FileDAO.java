package kr.smhrd.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class FileDAO {

	private Connection conn;
	
	public FileDAO() {
		try {
			String dbURL = "jdbc:oracle:thin:@project-db-stu.smhrd.com:1524:XE";
			String dbID = "cgi_2_230419_2";
			String dbPassword = "smhrd2";
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int upload(String filename, String realfilename) {
		String SQL = "INSERT INTO FILEUPLOAD VALUES(?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, filename);
			pstmt.setString(2, realfilename);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
