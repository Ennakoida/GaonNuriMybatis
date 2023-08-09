package notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.model.service.NoticeService;
import notice.model.vo.Notice;
import notice.model.vo.PageData;

/**
 * Servlet implementation class SelectController
 */
@WebServlet("/notice/search.do")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String noticeSubject = request.getParameter("notice-search");
		NoticeService service = new NoticeService();
		String page = request.getParameter("currentPage") != null ? request.getParameter("currentPage") : "1";
		int currentPage = Integer.parseInt(page);
//		List<Notice> nList = service.selectNoticeSearch(noticeSubject);
		PageData pd = service.selectSearchNoticeList(currentPage, noticeSubject);
		List<Notice> sList = pd.getnList();
		String sPageNavi = pd.getPageNavi();
		
		request.setAttribute("sList", sList);
		request.setAttribute("sPageNavi", sPageNavi);
		request.getRequestDispatcher("/WEB-INF/views/notice/searchNotice.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
