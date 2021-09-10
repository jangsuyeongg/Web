package com.bitcamp.data;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitcamp.home.CommandService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class DataEditOkCommand implements CommandService {

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      
      // ���ε�
      String path = request.getServletContext().getRealPath("/upload");
      int maxSize = 1024 * 1024 * 1024;
      DefaultFileRenamePolicy pol = new DefaultFileRenamePolicy();
      MultipartRequest mr = new MultipartRequest(request, path, maxSize, "UTF-8", pol);
      
      // 
      DataVO vo = new DataVO();
      vo.setNum(Integer.parseInt(mr.getParameter("num")));
      vo.setTitle(mr.getParameter("title"));
      vo.setContent(mr.getParameter("content"));
      vo.setDelfile(mr.getParameter("delfile"));
      
      String newFileName = mr.getFilesystemName("filename");
      vo.setFilename(newFileName);
      
      //
      DataDAO dao = new DataDAO();
      int result = dao.dataUpdate(vo);
      
      // ���� ����
      if(result>0) {
         // ���ڵ� ���� ���� > ������ ���� �����
         if(vo.getDelfile() != null && !vo.getDelfile().equals("")) {
            File f = new File(path, vo.getDelfile());
            f.delete();
         }
      } else {
         // ���ڵ� ���� ���� > ���� ���ε�� ������ ������  
         if(vo.getFilename() != null && !vo.getFilename().equals("")) {
            File f = new File(path, vo.getFilename());
            f.delete();
         }
      }
      
      request.setAttribute("num", vo.getNum());
      request.setAttribute("result", result);
      
      return "dataEditResult.jsp";
   }

}