package notice.model.service;

import java.sql.Connection;
import java.util.List;

import common.JDBCTemplate;
import notice.model.dao.NoticeDAO;
import notice.model.vo.Notice;
import notice.model.vo.PageData;

public class NoticeService {

	private NoticeDAO nDao;
	private JDBCTemplate jdbcTemplate;
	
	public NoticeService() {
		nDao = new NoticeDAO();
		jdbcTemplate = JDBCTemplate.getInstance();
	}

	// 공지사항 목록 조회
//	public List<Notice> selectNoticeList() {
//		Connection conn = jdbcTemplate.createConnection();
//		List<Notice> nList = nDao.selectNoticeList(conn);
//		jdbcTemplate.close(conn);
//		return nList;
//	}

	// 공지사항 전체 목록 조회
	public PageData selectNoticeList(int currentPage) {
		Connection conn = jdbcTemplate.createConnection();
		List<Notice> nList = nDao.selectNoticeList(conn, currentPage);
		String pageNavi = nDao.generagePageNavi(currentPage);
		// 1. Map 이용
		// 2. VO클래스 이용
		PageData pd = new PageData(nList, pageNavi);
		jdbcTemplate.close(conn);
		return pd;
	}

}