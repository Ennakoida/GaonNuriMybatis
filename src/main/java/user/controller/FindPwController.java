package user.controller;

import java.io.IOException;
import java.util.Random;

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
@WebServlet("/user/findPw.do")
public class FindPwController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPwController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/user/find-pw.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService service = new UserService();
		Random rnd =new Random();
		StringBuffer buf =new StringBuffer();
		
		String userId = request.getParameter("user-id");
		String userPhone = request.getParameter("user-phone");
		String newPassword = null;
		

		for(int i=0;i<10;i++){
	        buf.append((char)((int)(rnd.nextInt(26))+97));
		}
		
		newPassword = buf.toString();
		
		User user = new User();
		user.setuserId(userId);
		user.setuserPhone(userPhone);
		int resultCount = service.selectPwByIdPhone(user);
		
		if(resultCount == 1) {
			request.setAttribute("what", "비밀번호");
			request.setAttribute("found", newPassword);
			request.setAttribute("url", "/user/login.do");
			request.getRequestDispatcher("/WEB-INF/views/user/successFinding.jsp").forward(request, response);
		} else {
			request.setAttribute("what", "비밀번호");
			request.setAttribute("msg", "일치하는 가입 정보가 없습니다. 아이디 / 전화번호를 확인해주세요.");
			request.setAttribute("url", "/user/findPw.do");
			request.getRequestDispatcher("/WEB-INF/views/user/failedFinding.jsp").forward(request, response);
		}
	}

}
