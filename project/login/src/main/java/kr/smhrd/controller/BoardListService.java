package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.smhrd.model.BoardDAO;
import kr.smhrd.model.BoardVO;
import kr.smhrd.model.KanbanDAO;

public class BoardListService implements Command{
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		BoardVO vo = new BoardVO();
		
		BoardDAO dao = new BoardDAO();
		List<BoardVO> list = dao.getList();  //dao객체로 getlist(db에서 리스트 꺼내오기 수행)사용
		// 객체 바인딩
		
		request.setAttribute("list", list);  // 그 list를 request에 setattribute "list"라는 이름 붙임
		// jsp로 포워딩
		
		return "workspace.jsp";
	}

}
