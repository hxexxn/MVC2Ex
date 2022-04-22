package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardDAO;


@WebServlet("/boardRegist")
public class BoardRegist extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 * request.setCharacterEncoding("utf-8");
		 * response.setContentType("text/html; charset=utf-8");
		 */
		
		String bbsTitle = request.getParameter("bbsTitle"); // 파라미터 명은 아이디값. (때에 따라 다름. 주의.)
		String bbsContent = request.getParameter("bbsContent");
		String bbsWriter = request.getParameter("bbsWriter");
		
		System.out.println("bbsTitle 값 확인 : " + bbsTitle);
		System.out.println("bbsContent 값 확인 : " + bbsContent);
		System.out.println("bbsWriter 값 확인 : " + bbsWriter);
		
		BoardDAO dao = new BoardDAO();
		dao.boardInsert(bbsTitle, bbsContent, bbsWriter);
		
		response.sendRedirect("/MVC2Ex/index.jsp");
		
	}

}
