package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDTO;
import service.BoardDAO;


@WebServlet("/boardContent")
public class BoardContent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String bNo = request.getParameter("bNo");
		System.out.println(bNo);
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.boardListOne(bNo);
		System.out.println("dto 값 : " + dto);
		request.setAttribute("dto", dto);
		
		RequestDispatcher rd = request.getRequestDispatcher("board/boardContent.jsp");
		rd.forward(request, response);
		
	}


}
