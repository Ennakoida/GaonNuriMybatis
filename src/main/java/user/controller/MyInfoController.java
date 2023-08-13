package user.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import event.reservation.model.vo.Reserve;
import hanbok.model.vo.Hanbok;
import user.model.service.UserService;
import user.model.vo.User;

/**
 * Servlet implementation class MyInfoController
 */
@WebServlet("/user/myInfo.do")
public class MyInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService service = new UserService();
		String userId = request.getParameter("userId");
		
		// 내 정보
		User user = service.selectOneById(userId);
		
		// 행사 예매 내역
		List<Reserve> rList = service.selectAllReservesById(userId);
		
		// 한복 대여 내역
		List<Hanbok> hList = service.selectAllRentalsById(userId);
		
		// 나의 질문
		
		
		request.setAttribute("user", user);
		request.setAttribute("rList", rList);
		request.setAttribute("hList", hList);
		request.getRequestDispatcher("/WEB-INF/views/user/my-info.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
