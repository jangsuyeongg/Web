package com.bitcamp.home;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexCommand implements CommandService {

	   @Override
	   public String execute(HttpServletRequest request, HttpServletResponse response)
	         throws ServletException, IOException {
	      //Ȩ������ ���� �۾�
	      return "index.jsp"; //view������ ��ο� ���ϸ��� �����Ѵ�.
	               //webapp���� ���
	   }
}

