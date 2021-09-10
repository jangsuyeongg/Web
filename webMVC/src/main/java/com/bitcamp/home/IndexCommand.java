package com.bitcamp.home;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexCommand implements CommandService {

	   @Override
	   public String execute(HttpServletRequest request, HttpServletResponse response)
	         throws ServletException, IOException {
	      //홈페이지 서버 작업
	      return "index.jsp"; //view파일의 경로와 파일명을 리턴한다.
	               //webapp부터 출발
	   }
}

