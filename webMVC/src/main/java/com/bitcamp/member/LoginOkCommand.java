package com.bitcamp.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bitcamp.home.CommandService;

public class LoginOkCommand implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//아이디와 비밀번호 request
		String userid = request.getParameter("userid");
		String userpwd = request.getParameter("userpwd");
		
		//로그인 성공하면 userid, username선택하고
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.loginOk(userid, userpwd);
		
		//로그인성공
		String viewFile = "";
	      if(vo.getUsername()!=null && !vo.getUsername().equals("")) {
	      // 로그인 성공 > 세션에 등록 후 리턴
	         HttpSession ses = request.getSession();
	         ses.setAttribute("userid", vo.getUserid());
	         ses.setAttribute("username", vo.getUsername());
	         // 현재 member 폴더 안에 있으므로... 한 단계 위로 가기 위해 /를 붙여주면 root에서부터 찾아간다. 
	         viewFile = "/index.jsp";
	      } else {
	      // 로그인 실패
	         viewFile = "login.jsp";
	      }
		return viewFile;
	}

}
