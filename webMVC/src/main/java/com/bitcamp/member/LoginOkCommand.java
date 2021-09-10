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
		//���̵�� ��й�ȣ request
		String userid = request.getParameter("userid");
		String userpwd = request.getParameter("userpwd");
		
		//�α��� �����ϸ� userid, username�����ϰ�
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.loginOk(userid, userpwd);
		
		//�α��μ���
		String viewFile = "";
	      if(vo.getUsername()!=null && !vo.getUsername().equals("")) {
	      // �α��� ���� > ���ǿ� ��� �� ����
	         HttpSession ses = request.getSession();
	         ses.setAttribute("userid", vo.getUserid());
	         ses.setAttribute("username", vo.getUsername());
	         // ���� member ���� �ȿ� �����Ƿ�... �� �ܰ� ���� ���� ���� /�� �ٿ��ָ� root�������� ã�ư���. 
	         viewFile = "/index.jsp";
	      } else {
	      // �α��� ����
	         viewFile = "login.jsp";
	      }
		return viewFile;
	}

}
