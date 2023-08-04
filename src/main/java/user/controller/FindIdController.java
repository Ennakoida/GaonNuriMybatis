package user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.model.service.UserService;
import user.model.vo.User;

/**
 * Servlet implementation class FindIdController
 */
@WebServlet("/user/findId.do")
public class FindIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/user/find-id.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService service = new UserService();
		
		String userPhone = request.getParameter("user-phone");
		User uOne = service.selectIdByPhone(userPhone);
		
		if(uOne != null) {
			request.setAttribute("what", "아이디");
			request.setAttribute("found", uOne.getuserId());
			request.setAttribute("url", "/user/login.do");
			request.getRequestDispatcher("/WEB-INF/views/user/successFinding.jsp").forward(request, response);
		} else {
			request.setAttribute("what", "아이디");
			request.setAttribute("msg", "일치하는 아이디가 없습니다.");
			request.setAttribute("url", "/user/findId.do");
			request.getRequestDispatcher("/WEB-INF/views/user/failedFinding.jsp").forward(request, response);
		}
	}

}
