package semiProject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class peopleDAO {
	static String id;
	static Connection conn = null;
	PreparedStatement pstmt = null;
	static ResultSet rs = null;
	PeopleBean mBean = new PeopleBean();
	public static Connection getconnection() {
		String Driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "kim";
		String pass = "1234";

		try {
			Class.forName(Driver);
			conn = DriverManager.getConnection(url, id, pass);
			System.out.println("데이터베이스 연동에 성공하였습니다.");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("데이터베이스 연동에 실패하였습니다.");
		}

		return conn;

	}
	//id에 해당하는 비밀번호를 찾아서 반환하는 메소드 호출 	
public String getPassword(String id){
		
		String password = null;
		
		try {
			getconnection();			
			
			String sql = "select passwd from people where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				password = rs.getString(1);
			}
			
			if(conn != null) {
				conn.close();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
				
		return password;		
	}
	
	
	
}