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
 * Servlet implementation class InsertNoticeController
 */
@WebServlet("/notice/insert.do")
public class InsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String noticeSubject = request.getParameter("notice-subject");
		String noticeContent = request.getParameter("notice-content");
		
		Notice notice = new Notice(noticeSubject, noticeContent);
		NoticeService service = new NoticeService();
		int result = service.insertNotice(notice);
		
		System.out.println(notice.getNoticeSubject());
		System.out.println(notice.getNoticeContent());
		if(result > 0) {
			response.sendRedirect("/notice/notice.do");
		} else {
			
		}
	}

}
