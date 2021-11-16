package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3307/zerowaste";
			String dbID = "root";
			String dbPassword = "0000";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String sid, String spassword) {
		String SQL = "SELECT spassword FROM USER WHERE sid = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, sid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getString(1).equals(spassword)) 
					return 1; //로그인 성공
				else
					return 0; //비밀번호 불일치	
				}
				return -1; //아이디가 없음
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;	// 데이터 베이스 오류
	}
	
	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES (?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getSid());
			pstmt.setString(2, user.getSpassword());
			pstmt.setString(3, user.getSname());
			pstmt.setString(4, user.getSgender());
			pstmt.setString(5, user.getSemail());
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터 베이스 오류
	}
}
