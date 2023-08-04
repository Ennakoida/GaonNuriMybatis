package event.reservation.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import event.reservation.model.vo.Reserve;
import user.model.vo.User;

public class ReserveDAO {

	public int insertReserve(Connection conn, Reserve reserve) {
		String query = "INSERT INTO RESERVE_TBL VALUES(?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement pstmt = null;
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, reserve.getReservePlace());
			pstmt.setDate(2, reserve.getReserveDate());
			pstmt.setString(3, reserve.getReserveTime());
			pstmt.setInt(4, reserve.getReservePeople());
			pstmt.setString(5, reserve.getReserveName());
			pstmt.setString(6, reserve.getReservePhone());
			pstmt.setString(7, reserve.getReserveEmail());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public User selectOneById(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM USER_TBL WHERE USER_ID = ?";
		User uOne = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery(); // 누락 주의, 결과값 받기 주의
			if(rset.next()) {
				uOne = rsetToUser(rset);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rset.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return uOne;
	}
	
	private User rsetToUser(ResultSet rset) throws SQLException {
		User user = new User();
		user.setuserId(rset.getString(1));
		user.setuserPw(rset.getString(2));
		user.setuserName(rset.getString(3));
		user.setuserPhone(rset.getString(4));
		user.setuserEmail(rset.getString(5));
		user.setuserEventYn(rset.getString(6));
		return user;
	}
}
