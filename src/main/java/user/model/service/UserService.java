package user.model.service;

import org.apache.ibatis.session.SqlSession;

import common.SqlSessionTemplate;
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

}
