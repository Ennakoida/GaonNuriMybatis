package hanbok.model.dao;

import org.apache.ibatis.session.SqlSession;

import hanbok.model.vo.Hanbok;

public class HanbokDAO {

	public int insertHanbok(SqlSession session, Hanbok hanbok) {
		int result = session.insert("HanbokMapper.insertHanbok", hanbok);
		return result;
	}

}
