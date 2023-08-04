package user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.model.service.UserService;
import user.model.vo.User;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/user/login.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/user/login.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService service = new UserService();
		
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("user-id");
		String userPw = request.getParameter("user-pw");
		User user = new User(userId, userPw);
		
		User uOne = service.selectCheckLogin(user);
		if(uOne != null) {
			HttpSession session = request.getSession();
			session.setAttribute("userId", uOne.getuserId());
			session.setAttribute("userPw", uOne.getuserPw());
			// 로그인 성공
			request.setAttribute("msg", "로그인");
			request.setAttribute("url", "/index.jsp");
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/serviceSuccess.jsp");
			view.forward(request, response);
		} else {
			// 로그인 실패
			request.setAttribute("msg", "로그인");
			request.setAttribute("url", "/user/login.do");
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/serviceFailed.jsp");
			view.forward(request, response);
		}
	}

}
