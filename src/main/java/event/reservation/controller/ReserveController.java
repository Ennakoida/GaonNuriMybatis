package event.reservation.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import event.reservation.model.service.ReserveService;
import event.reservation.model.vo.Reserve;
import user.model.vo.User;

/**
 * Servlet implementation class ReserveController
 */
@WebServlet("/event/reservation.do")
public class ReserveController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReserveController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 화면 보이기
		ReserveService service = new ReserveService();
		String userId = request.getParameter("userId");
		User user = service.selectOneById(userId);
//		System.out.println(userId);
		request.setAttribute("user", user);
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/event/reservation.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 실제 기능
		ReserveService service = new ReserveService();
		DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		
		request.setCharacterEncoding("UTF-8");
		String reservePlace = request.getParameter("select-place");
		// String을 java.util.Date로 바꾼다.
		// util.Date > sql.Date
		// https://dnjsrud.tistory.com/215
		LocalDate date = LocalDate.parse(request.getParameter("select-date"), dateTimeFormatter);
		Date reserveDate = Date.valueOf(date);
		String reserveTime = request.getParameter("select-time");
		int reservePeople = Integer.parseInt(request.getParameter("select-people"));
//		String loginUserCheck = request.getParameter("login-user");
//		loginUserCheck = loginUserCheck != null ? "Y" : "N";
		String reserveName = request.getParameter("user-name");
		String reservePhone = request.getParameter("user-phone");
		String reserveEmail = request.getParameter("user-email");
		Reserve reserve = new Reserve(reservePlace, reserveDate, reserveTime, reservePeople, reserveName, reservePhone, reserveEmail);
		
		// insert
		int result = service.insertReserve(reserve);
		
		if(result > 0) {
			// 성공
			request.setAttribute("msg", "행사 예매");
			request.setAttribute("url", "/event/reservation.do");
			request.getRequestDispatcher("/WEB-INF/views/common/serviceSuccess.jsp").forward(request, response);
		} else {
			// 실패
			request.setAttribute("msg", "행사 예매");
			request.setAttribute("url", "/event/reservation.do");
			request.getRequestDispatcher("/WEB-INF/views/common/serviceFailed.jsp").forward(request, response);
		}
	}

}
