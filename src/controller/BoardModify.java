package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDTO;
import service.BoardDAO;


@WebServlet("/boardModify")
public class BoardModify extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String bNo = request.getParameter("bNo");
		
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.boardListOne(bNo);
		request.setAttribute("dto", dto);
		
		RequestDispatcher rd = request.getRequestDispatcher("board/boardModify.jsp");
		rd.forward(request, response);

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String bNo = request.getParameter("bNo");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		
		System.out.println("bNo : " + bNo);
		System.out.println("bTitle : " + bTitle);
		System.out.println("bContent : " + bContent);
		
		BoardDAO dao = new BoardDAO();
		dao.boardModify(bNo, bTitle, bContent);
		
		response.sendRedirect("boardContent?bNo=" + bNo);

	}

}
