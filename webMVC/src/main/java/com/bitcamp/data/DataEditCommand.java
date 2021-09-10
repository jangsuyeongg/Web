package com.bitcamp.data;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitcamp.home.CommandService;

public class DataEditCommand implements CommandService {

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      
      //레코드번호 가져오기
      int num = Integer.parseInt(request.getParameter("num"));
      DataDAO dao = new DataDAO();
      DataVO vo = dao.oneSelect(num);
      
      request.setAttribute("vo",vo);
      return "dataEdit.jsp";
   }

}