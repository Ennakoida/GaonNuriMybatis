package event.reservation.model.dao;

import org.apache.ibatis.session.SqlSession;

import event.reservation.model.vo.Reserve;
import user.model.vo.User;

public class ReserveDAO {

	public int insertReserve(SqlSession session, Reserve reserve) {
		int result = session.insert("ReserveMapper.insertReserve", reserve);
		return result;
	}

	public User selectOneById(SqlSession session, String userId) {
		User uOne = session.selectOne("UserMapper.selectOneById", userId);
		return uOne;
	}
}
