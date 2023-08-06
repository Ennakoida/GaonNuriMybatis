package event.reservation.model.service;

import org.apache.ibatis.session.SqlSession;

import common.SqlSessionTemplate;
import event.reservation.model.dao.ReserveDAO;
import event.reservation.model.vo.Reserve;
import user.model.vo.User;

public class ReserveService {
	
	private ReserveDAO rDao;
	
	public ReserveService() {
		rDao = new ReserveDAO();
	}

	public int insertReserve(Reserve reserve) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = rDao.insertReserve(session, reserve);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public User selectOneById(String userId) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		
		User user = rDao.selectOneById(session, userId);
		session.close();
		return user;
	}

}
