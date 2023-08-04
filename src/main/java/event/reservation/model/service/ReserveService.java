package event.reservation.model.service;

import java.sql.Connection;

import common.JDBCTemplate;
import event.reservation.model.dao.ReserveDAO;
import event.reservation.model.vo.Reserve;
import user.model.vo.User;

public class ReserveService {
	
	private JDBCTemplate jdbcTemplate;
	private ReserveDAO rDao;
	
	public ReserveService() {
		jdbcTemplate = JDBCTemplate.getInstance();
		rDao = new ReserveDAO();
	}

	public int insertReserve(Reserve reserve) {
		Connection conn = jdbcTemplate.createConnection();
		
		int result = rDao.insertReserve(conn, reserve);
		
		// 커밋 / 롤백
		if(result > 0) {
			// 성공 - 커밋
			jdbcTemplate.commit(conn);
		} else {
			// 실패 - 롤백
			jdbcTemplate.rollback(conn);
		}
		jdbcTemplate.close(conn);
		return result;
	}

	public User selectOneById(String userId) {
		Connection conn = jdbcTemplate.createConnection();
		
		User user = rDao.selectOneById(conn, userId);
		jdbcTemplate.close(conn);
		return user;
	}

}
