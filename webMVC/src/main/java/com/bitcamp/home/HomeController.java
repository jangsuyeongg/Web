package com.bitcamp.home;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/*.do") //실행되는클래스 -> do로끝나는모든
public class HomeController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
   //맵 객체
   HashMap<String,CommandService> hm = new HashMap<String,CommandService>();
   
    public HomeController() {
        super();
       
    }
    
    public void init(ServletConfig config)throws ServletException {
       //urlMapping.properties에 있는 key와 value를 구하여 hashmap에 주소와 객체를 저장한다.
       // web.xml에서 properties파일명 가져오기
       String propFileName = config.getInitParameter("path"); //파일명이 들어가있음
       System.out.println("propFileName="+propFileName);
       
       Properties prop = new Properties();
       try {
          //파일에서 문자열을 읽어 Properties객체로 저장한다.
          FileInputStream fis = new FileInputStream(propFileName);
          prop.load(fis);
             
       }catch(Exception e) {
          
          System.out.println("프로퍼티 객체 입력에러 발생"+e.getMessage());
       }
       //////////////////////////////////////////////////////////////
       //프로포티에 있는 키만큼 객체를 만든다
       //properties객체의 모든 키를 구한다
       Enumeration keyList= prop.propertyNames(); //키만구햇음
       while(keyList.hasMoreElements()) {//남은키가있는지 물어봄
          //키가 남아있으면 키를 구한다
          String key = (String)keyList.nextElement();
          //클래스이름구해야한다-> 그래야 객체를 구함
          String className = prop.getProperty(key);
          
          //key HashMap 키로 사용하고
          //value 객체를 만들어 HashMap값으로 사용한다.
          
          //문자열을 객체로 만들어줌 class의 forName메소드
          
          try {
              Class commandClass = Class.forName(className);
              CommandService service = (CommandService)commandClass.getDeclaredConstructors()[0].newInstance(); //IndexCommand객체구해짐
              hm.put(key, service); 
              
          }catch(Exception e) {
             System.out.println("Command객체 생성 에러 발생.");
          }
          
          System.out.println("key= "+key+ " , classname= "+className);
       }
       //-------------------------------------------------------------------------------------------
    }
   
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doPost(request,response);
   }
   
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String ctxPath = request.getContextPath();      //            /webMVC    7
                                                       //           01234567/
      String uri =request.getRequestURI();          //            /webMVC/index.do
      System.out.println("uri="+uri);
      System.out.println("ctxPath="+ctxPath);
      
      //현재 가지고 있는 정보로 
      //mapping 주소구하기
      String key = uri.substring(ctxPath.length());//   /index.do 가 구해짐
      CommandService command = hm.get(key); //IndexCommand 객체가 들어가 있음
      String viewFileName = command.execute(request,response);//호출
      //view파일명의 위치로 이동하기
      RequestDispatcher dispatcher = request.getRequestDispatcher(viewFileName);
      dispatcher.forward(request, response);
   }

}