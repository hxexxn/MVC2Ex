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


@WebServlet("/boardList")
public class BoardList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// dao 객체 생성 후 dao.boardListALL의 반환 타입에 맞게 List에 담아줌.  
		
		BoardDAO dao = new BoardDAO();
		List<BoardDTO> list = dao.boardListAll();
		request.setAttribute("list", list);
//		response.sendRedirect("/boardList.jsp"); // sendRedirect는 정보를 가지고 이동할 수 없음. 
		
		RequestDispatcher rd = request.getRequestDispatcher("board/boardList.jsp");
		rd.forward(request, response);
		
	}


}
