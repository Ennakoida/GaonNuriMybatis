package hanbok.controller;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hanbok.model.service.HanbokService;
import hanbok.model.vo.Hanbok;

/**
 * Servlet implementation class RentalDetailController
 */
@WebServlet("/hanbok/detail.do")
public class RentalDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RentalDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

		String rentalPlace = request.getParameter("select-place");
		LocalDate date = LocalDate.parse(request.getParameter("select-date"), dateTimeFormatter);
		Date rentalDate = Date.valueOf(date);
		
		Hanbok hanbok = new Hanbok(rentalPlace, rentalDate);
		request.setAttribute("hanbok", hanbok);
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/hanbok/detail.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String rentalPlace = request.getParameter("rentalPlace");
		Date rentalDate = Date.valueOf(request.getParameter("rentalDate"));
		String rentalHanbok = "[ 여성용 ] 여름 한복 세트";
		String rentalTopColor = request.getParameter("top-color");
		String rentalTopSize = request.getParameter("top-size");
		String rentalPantsColor = request.getParameter("pants-color");
		String rentalPantsSize = request.getParameter("pants-size");
		String rentalAccessories = request.getParameter("accessories");
		
		Hanbok hanbok = new Hanbok(rentalPlace, rentalDate, rentalHanbok, rentalTopColor, rentalTopSize, rentalPantsColor, rentalPantsSize, rentalAccessories);
		HanbokService service = new HanbokService();
		System.out.println(hanbok.toString());
		int result = service.insertHanbok(hanbok);
		
		if(result > 0) {
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
	}

}
