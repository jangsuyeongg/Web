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


@WebServlet("/*.do") //����Ǵ�Ŭ���� -> do�γ����¸��
public class HomeController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
   //�� ��ü
   HashMap<String,CommandService> hm = new HashMap<String,CommandService>();
   
    public HomeController() {
        super();
       
    }
    
    public void init(ServletConfig config)throws ServletException {
       //urlMapping.properties�� �ִ� key�� value�� ���Ͽ� hashmap�� �ּҿ� ��ü�� �����Ѵ�.
       // web.xml���� properties���ϸ� ��������
       String propFileName = config.getInitParameter("path"); //���ϸ��� ������
       System.out.println("propFileName="+propFileName);
       
       Properties prop = new Properties();
       try {
          //���Ͽ��� ���ڿ��� �о� Properties��ü�� �����Ѵ�.
          FileInputStream fis = new FileInputStream(propFileName);
          prop.load(fis);
             
       }catch(Exception e) {
          
          System.out.println("������Ƽ ��ü �Է¿��� �߻�"+e.getMessage());
       }
       //////////////////////////////////////////////////////////////
       //������Ƽ�� �ִ� Ű��ŭ ��ü�� �����
       //properties��ü�� ��� Ű�� ���Ѵ�
       Enumeration keyList= prop.propertyNames(); //Ű��������
       while(keyList.hasMoreElements()) {//����Ű���ִ��� ���
          //Ű�� ���������� Ű�� ���Ѵ�
          String key = (String)keyList.nextElement();
          //Ŭ�����̸����ؾ��Ѵ�-> �׷��� ��ü�� ����
          String className = prop.getProperty(key);
          
          //key HashMap Ű�� ����ϰ�
          //value ��ü�� ����� HashMap������ ����Ѵ�.
          
          //���ڿ��� ��ü�� ������� class�� forName�޼ҵ�
          
          try {
              Class commandClass = Class.forName(className);
              CommandService service = (CommandService)commandClass.getDeclaredConstructors()[0].newInstance(); //IndexCommand��ü������
              hm.put(key, service); 
              
          }catch(Exception e) {
             System.out.println("Command��ü ���� ���� �߻�.");
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
      
      //���� ������ �ִ� ������ 
      //mapping �ּұ��ϱ�
      String key = uri.substring(ctxPath.length());//   /index.do �� ������
      CommandService command = hm.get(key); //IndexCommand ��ü�� �� ����
      String viewFileName = command.execute(request,response);//ȣ��
      //view���ϸ��� ��ġ�� �̵��ϱ�
      RequestDispatcher dispatcher = request.getRequestDispatcher(viewFileName);
      dispatcher.forward(request, response);
   }

}