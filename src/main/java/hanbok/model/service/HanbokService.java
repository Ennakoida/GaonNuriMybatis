package hanbok.model.service;

import org.apache.ibatis.session.SqlSession;

import common.SqlSessionTemplate;
import hanbok.model.dao.HanbokDAO;
import hanbok.model.vo.Hanbok;

public class HanbokService {
	
	private HanbokDAO hDao;
	
	public HanbokService() {
		hDao = new HanbokDAO();
	}

	public int insertHanbok(Hanbok hanbok) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = hDao.insertHanbok(session, hanbok);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		return result;
	}

}
