package notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.model.service.NoticeService;
import notice.model.vo.Notice;

/**
 * Servlet implementation class ModifyController
 */
@WebServlet("/notice/modify.do")
public class ModifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NoticeService service = new NoticeService();
		int noticeNo = Integer.parseInt(request.getParameter("noticeNo"));
		Notice notice = service.selectOneByNo(noticeNo);
		
		if(notice != null) {
			request.setAttribute("notice", notice);
			request.getRequestDispatcher("/WEB-INF/views/notice/noticeModify.jsp").forward(request, response);
		} else {
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int noticeNo = Integer.parseInt(request.getParameter("noticeNo"));
		String noticeSubject = request.getParameter("notice-subject");
		String noticeContent = request.getParameter("notice-content");
		
		NoticeService service = new NoticeService();
		Notice notice = new Notice(noticeNo, noticeSubject, noticeContent);
		int result = service.updateNotice(notice);
		
		if(result > 0) {
			// 성공하면 상세 페이지로 이동
			response.sendRedirect("/notice/detail.do?noticeNo=" + noticeNo);
		} else {
			// 실패하면 에러메세지 출력
			request.setAttribute("msg", "공지사항 수정이 완료되지 않았습니다.");
			request.setAttribute("url", "/notice/update.do?noticeNo=" + noticeNo);
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
	}

}
