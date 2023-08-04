package notice.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import notice.model.vo.Notice;

public class NoticeDAO {

	public List<Notice> selectNoticeList(Connection conn, int currentPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<Notice> nList = new ArrayList<Notice>();
//		String query = "SELECT * FROM NOTICE_TBL ORDER BY NOTICE_NO DESC";
		String query = "SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY NOTICE_NO DESC) ROW_NUM, NOTICE_TBL.* FROM NOTICE_TBL) WHERE ROW_NUM BETWEEN ? AND ?";
		int recordCountPerPage = 10;
		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);		
		int end = currentPage * recordCountPerPage;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Notice notice = rsetToNotice(rset);
				nList.add(notice);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rset.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return nList;
	}
	
	public String generagePageNavi(int currentPage) {		
		int totalCount = 102; // 전체 게시물의 수
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
	
	private Notice rsetToNotice(ResultSet rset) throws SQLException {
		Notice notice = new Notice();
		notice.setNoticeNo(rset.getInt("NOTICE_NO"));
		notice.setNoticeSubject(rset.getString("NOTICE_SUBJECT"));
		notice.setNoticeContent(rset.getString("NOTICE_CONTENT"));
		notice.setNoticeDate(rset.getDate("NOTICE_DATE"));
		notice.setUpdateDate(rset.getDate("UPDATE_DATE"));
		notice.setViewCount(rset.getInt("VIEW_COUNT"));
		
		return notice;
	}

}