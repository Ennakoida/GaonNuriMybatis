package user.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import common.SqlSessionTemplate;
import event.reservation.model.vo.Reserve;
import hanbok.model.vo.Hanbok;
import user.model.dao.UserDAO;
import user.model.vo.User;

public class UserService {

	private UserDAO uDao;
	
	public UserService() {
		uDao = new UserDAO();
	}
	
	public int insertUser(User user) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = uDao.insertUser(session, user);
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public int updateUser(User user) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = uDao.updateUser(session, user);
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public int updatePw(User updatePass) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = uDao.updatePw(session, updatePass);
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public int deleteUser(String userId) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = uDao.deleteUser(session, userId);
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public User selectCheckLogin(User user) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		User uOne = uDao.selectCheckLogin(session, user);
		session.close();
		return uOne;
	}

	public User selectIdByPhone(String userPhone) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		User uOne = uDao.selectIdByPhone(session, userPhone);
		session.close();
		return uOne;
	}

	public int selectPwByIdPhone(User user) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int resultCount = uDao.selectPwByIdPhone(session, user);
		session.close();
		return resultCount;
	}

	public User selectOneById(String userId) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		User user = uDao.selectOneById(session, userId);
		session.close();
		return user;
	}

	public List<Reserve> selectAllReservesById(String userId) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		List<Reserve> rList = uDao.selectAllReservesById(session, userId);
		session.close();
		return rList;
	}

	public List<Hanbok> selectAllRentalsById(String userId) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		List<Hanbok> hList = uDao.selectAllRentalsById(session, userId);
		session.close();
		return hList;
	}

}
