package user.model.dao;

import org.apache.ibatis.session.SqlSession;

import user.model.vo.User;

public class UserDAO {

	public int insertUser(SqlSession session, User user) {
		int result = session.insert("UserMapper.insertUser", user);
		return result;
	}

	public User selectCheckLogin(SqlSession session, User user) {
		User uOne = session.selectOne("UserMapper.selectCheckLogin", user);
		return uOne;
	}

	public User selectIdByPhone(SqlSession session, String userPhone) {
		User uOne = session.selectOne("UserMapper.selectIdByPhone", userPhone);
		return uOne;
	}

	public int selectPwByIdPhone(SqlSession session, User user) {
		int resultCount = session.selectOne("UserMapper.selectPwByIdPhone", user);
		return resultCount;
	}

}
