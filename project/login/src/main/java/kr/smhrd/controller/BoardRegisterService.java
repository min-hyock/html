package kr.smhrd.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.BoardDAO;
import kr.smhrd.model.BoardVO;

public class BoardRegisterService implements Command {
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String post_id = request.getParameter("post_id"); // form태그 name 속성 값
		String project_id = request.getParameter("project_id");
		String post_title = request.getParameter("post_title");
		String post_detail = request.getParameter("post_detail");

		BoardVO vo = new BoardVO();
		vo.setPost_id(post_id);
		vo.setProject_id(project_id);
		vo.setPost_title(post_title);
		vo.setPost_detail(post_detail);

		// dao에 메소드사용 register(vo) : vo 담아서
		BoardDAO dao = new BoardDAO();
		dao.register1(vo);

		return null;
	}
}
