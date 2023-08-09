package notice.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import common.SqlSessionTemplate;
import notice.model.dao.NoticeDAO;
import notice.model.vo.Notice;
import notice.model.vo.PageData;

public class NoticeService {

	private NoticeDAO nDao;
	
	public NoticeService() {
		nDao = new NoticeDAO();
	}

	public int insertNotice(Notice notice) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = nDao.insertNotice(session, notice);
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public int updateNotice(Notice notice) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = nDao.updateNotice(session, notice);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		return result;
	}

	public int deleteNotice(int noticeNo) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = nDao.deleteNotice(session, noticeNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();		
		return result;
	}

	// 공지사항 전체 목록 조회
	public PageData selectNoticeList(int currentPage) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		List<Notice> nList = nDao.selectNoticeList(session, currentPage);
		String pageNavi = nDao.generatePageNavi(session, currentPage);
		PageData pd = new PageData(nList, pageNavi);
		session.close();
		return pd;
	}

	public List<Notice> selectNoticeSearch(String noticeSubject) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		List<Notice> nList = nDao.selectNoticeSearch(session, noticeSubject);
		session.close();
		return nList;
	}
	
	public PageData selectSearchNoticeList(int currentPage, String noticeSubject) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		List<Notice> sList = nDao.selectSearchNoticeList(session, currentPage, noticeSubject);
		String pageNavi = nDao.generateSearchPageNavi(session, currentPage, noticeSubject);
		PageData pd = new PageData(sList, pageNavi);
		session.close();
		return pd;
	}

	public Notice selectOneByNo(int noticeNo) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		Notice notice = nDao.selectOneByNo(session, noticeNo);
		session.close();
		return notice;
	}

}