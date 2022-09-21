package semiProject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import semiProject.PeopleBean;


public class peopleDAO {
	static String id;
	static String pw;
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
	
	
	public static void insertpeople(PeopleBean pBean) {

		try {
			getconnection();
			String sql = "insert into camping_member values(?,?,?,?,?,?,?,?,?)";

			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, pBean.getId()); 
			pstmt.setString(2, pBean.getPasswd());
			pstmt.setString(3, pBean.getName());
			pstmt.setString(4, pBean.getGender());
			pstmt.setInt(5, pBean.getAge());
			pstmt.setString(6, pBean.getGenre()); 
			
			
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
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
	

public boolean loginRegister(String id, String pw){
	
	String password = null;
	boolean loginCon = false;
	try {
		getconnection();			
		
		String sql = "select conut(*) from people where id = ? and pw = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		rs = pstmt.executeQuery();
		
		if(rs.next()&&rs.getInt(1)>0) {
			loginCon = true;
		}
	}
	catch(Exception e) {
		System.out.println("Exception : "+e);
	}
	return loginCon;
}
	
	
}