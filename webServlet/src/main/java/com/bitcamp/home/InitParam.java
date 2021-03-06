package com.bitcamp.home;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/initTest.do")
public class InitParam extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public InitParam() {
        super();

    }

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//xml의 변수 데이터 request구하기
		String userid = getInitParameter("userid");
		String userpwd = getInitParameter("userpwd");
		String username = getInitParameter("username");
		
		System.out.println("username=" + username);
		
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter pw = res.getWriter();
		pw.print("<html><head><title>Init 테스트</title></head><body>");
		pw.print("아이디 : "+ userid+"<br/>");
		pw.print("비밀번호 : "+userpwd+"<br/>");
		pw.print("이름 : "+username+"<br/>");
		pw.print("</body></html>");
		
	}

}
