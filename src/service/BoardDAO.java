package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import model.BoardDTO;

public class BoardDAO {
	
	private DataSource dataFactory;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public BoardDAO () {
		
		try {
			Context ctx = new InitialContext();
			dataFactory = (DataSource) ctx.lookup("java:/comp/env/jdbc/mvc");
			conn = dataFactory.getConnection();
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		}	
	}
	
	public void dbClose() {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public void boardInsert(String bbsTitle, String bbsContent, String bbsWriter) {

		String sql = "INSERT INTO boardTBL (bTitle, bContent, bWriter) VALUES(?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bbsTitle);
			pstmt.setString(2, bbsContent);
			pstmt.setString(3, bbsWriter);
			pstmt.executeUpdate();
			dbClose();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void boardListAll () {
		
		List<BoardDTO> bbsList = new ArrayList<BoardDTO>(); 
		// 전체 목록을 출력해야하므로, 배열에 BoardDTO를 담는 것. 
		
		String sql = "SELECT * FROM boardTBL order by bNo DESC";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			// 전체 리스트 반복은 while문(반복문) 사용. 
			while (rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setbNo(rs.getInt("bNo"));
				dto.setbTitle(rs.getString("bTitle"));
				dto.setbContent(rs.getString("bContent"));
				dto.setbWriter(rs.getString("bWriter"));
				dto.setbRegDate(rs.getTimestamp("bRegDate"));
				
				bbsList.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	

}
