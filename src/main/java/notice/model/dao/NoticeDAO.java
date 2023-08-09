package notice.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import notice.model.vo.Notice;

public class NoticeDAO {

	public int insertNotice(SqlSession session, Notice notice) {
		int result = session.insert("NoticeMapper.insertNotice", notice);
		return result;
	}

	public int updateNotice(SqlSession session, Notice notice) {
		int result = session.update("NoticeMapper.updateNotice", notice);
		return result;
	}

	public int deleteNotice(SqlSession session, int noticeNo) {
		int result = session.delete("NoticeMapper.deleteNotice", noticeNo);
		return result;
	}

	public List<Notice> selectNoticeList(SqlSession session, int currentPage) {
		int limit = 10;
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		List<Notice> nList = session.selectList("NoticeMapper.selectNoticeList", null, rowBounds);
		return nList;
	}
	
	public String generatePageNavi(SqlSession session, int currentPage) {		
		int totalCount = getTotalCount(session); // 전체 게시물의 수
		int recordCountPerPage = 10; // 한 페이지당 수
		int naviTotalCount = 0; // 네비게이터의 수
		
		if(totalCount % recordCountPerPage > 0)
			naviTotalCount = totalCount / recordCountPerPage + 1;
		else
			naviTotalCount = totalCount / recordCountPerPage;
		
		int naviCountPerPage = 5;
		int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage - 1;
				
		if(endNavi > naviTotalCount) { 
			endNavi = naviTotalCount;
		}

		StringBuilder result = new StringBuilder();
		if(startNavi != 1) {
			result.append("<li style='cursor: pointer;' onclick=\"location.href='/notice/notice.do?currentPage=" + (startNavi - 1) + "'\"><</li> ");
		}else {
			result.append("<li><</li>");
		}

		for(int i = startNavi; i <= endNavi; i++) {
			if(currentPage == i) {
				result.append("<li style='color: #EA5455; font-weight: bold;' onclick=\"location.href='/notice/notice.do?currentPage=" + i + "'\">" + i + "</li>&nbsp;&nbsp;");
			} else {
				result.append("<li onclick=\"location.href='/notice/notice.do?currentPage=" + i + "'\">" + i + "</li>&nbsp;&nbsp;"); // \" : "를 문자열로 인식하기 위한 escape가 포함 (그냥 '로 써도 된다)
			}
		}

		if(endNavi != naviTotalCount) {
			result.append("<li style='cursor: pointer;' onclick=\"location.href='/notice/notice.do?currentPage=" + (endNavi + 1) + "'\">></li>");
		} else {
			result.append("<li>></li>");
		}

		return result.toString();
	}
	
	private int getTotalCount(SqlSession session) {
		int totalCount = session.selectOne("NoticeMapper.getTotalCount");
		return totalCount;
	}

	
//	>>>>>>>> 검색 <<<<<<<<
	public List<Notice> selectNoticeSearch(SqlSession session, String noticeSubject) {
		List<Notice> sList = session.selectList("NoticeMapper.selectNoticeSearch", noticeSubject);
		return sList;
	}
	
	public List<Notice> selectSearchNoticeList(SqlSession session, int currentPage, String noticeSubject) {
		int limit = 10;
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Notice> sList = session.selectList("NoticeMapper.selectSearchNoticeList", noticeSubject, rowBounds);
		return sList;
	}
	
	public String generateSearchPageNavi(SqlSession session, int currentPage, String noticeSubject) {		
		int totalCount = getSearchTotalCount(session); // 전체 게시물의 수
		int recordCountPerPage = 10; // 한 페이지당 수
		int naviTotalCount = 0; // 네비게이터의 수
		
		if(totalCount % recordCountPerPage > 0)
			naviTotalCount = totalCount / recordCountPerPage + 1;
		else
			naviTotalCount = totalCount / recordCountPerPage;
		
		int naviCountPerPage = 5;
		int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage - 1;
				
		if(endNavi > naviTotalCount) { 
			endNavi = naviTotalCount;
		}

		StringBuilder result = new StringBuilder();
		if(startNavi != 1) {
			result.append("<li style='cursor: pointer;' onclick=\"location.href='/notice/search.do?currentPage=" + (startNavi - 1) + "'\"><</li> ");
		}else {
			result.append("<li><</li>");
		}

		for(int i = startNavi; i <= endNavi; i++) {
			if(currentPage == i) {
				result.append("<li style='color: #EA5455; font-weight: bold;' onclick=\"location.href='/notice/search.do?currentPage=" + i + "'\">" + i + "</li>&nbsp;&nbsp;");
			} else {
				result.append("<li onclick=\"location.href='/notice/search.do?currentPage=" + i + "'\">" + i + "</li>&nbsp;&nbsp;"); // \" : "를 문자열로 인식하기 위한 escape가 포함 (그냥 '로 써도 된다)
			}
		}

		if(endNavi != naviTotalCount) {
			result.append("<li style='cursor: pointer;' onclick=\"location.href='/notice/search.do?currentPage=" + (endNavi + 1) + "'\">></li>");
		} else {
			result.append("<li>></li>");
		}

		return result.toString();
	}
	
	private int getSearchTotalCount(SqlSession session) {
		int totalCount = session.selectOne("NoticeMapper.getSearchTotalCount");
		return totalCount;
	}

	public Notice selectOneByNo(SqlSession session, int noticeNo) {
		Notice notice = session.selectOne("NoticeMapper.selectOneByNo", noticeNo);
		return notice;
	}
}