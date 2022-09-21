package movie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import movie.peopleDAO;

public class peopleDAO {

	private static peopleDAO instance = new peopleDAO();
	
	//DB 연결 - getInstance
	public static peopleDAO getInstance() {
		return instance;
	}
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs  = null;

	
	//DB 연결 - getInstance
	public Connection getConnection() {
		String Driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "kim";
		String pass = "1234";
		
		try {
			Class.forName(Driver);
			 conn = DriverManager.getConnection(url, id, pass);
			System.out.println("데이터베이스 연동에 성공하였습니다.");
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("데이터베이스 연동에 실패하였습니다.");
		}		
		return conn;		
	}
	
	//session로그인
	public int userCheck(String id, String pw)throws Exception {
		String dbpw="";
		int x=-1;
		try {
			getConnection();
			String sql = "select pw from people where id = ?";
			/* conn = getConnection(); */
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs= pstmt.executeQuery();//select일 때만 실행하고, 나머지는 updateQuery를 쓴다.
		if(rs.next()){
					dbpw= rs.getString("pw");
					if(dbpw.equals(pw)) {
						x= 1; //인증 성공
System.out.println("로그인성공");
					}else {
						x= 0; //비밀번호 틀림
System.out.println("비밀번호 오류");
					}
			}else {
					x= -1;//해당 아이디 없음
System.out.println("아이디가없음");
			}
				} catch(Exception ex) {
					ex.printStackTrace();
				} finally {
			if (rs != null)
				try { rs.close(); 
				} catch(SQLException ex) {
				}if (pstmt != null) 
					try { pstmt.close(); 
					} catch(SQLException ex) {
						
			}if (conn != null) 
				try { conn.close(); 
				} catch(SQLException ex) {
					
				}
			}
		return x;//1
	}
	
	//insert people table
	//회원가입 구현
	public void insertpeople(peopleBean pBean) {
		
		try {
				getConnection();
				
			String sql = "insert into people values(?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, pBean.getId());
			pstmt.setString(2, pBean.getPw1());
			pstmt.setString(3, pBean.getName());
			pstmt.setString(4, pBean.getGender());
			pstmt.setString(5, pBean.getAge());
			pstmt.setString(6, pBean.getGenre());
			
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
	
