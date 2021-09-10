package com.bitcamp.home;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/loginForm.do")
public class Login extends HttpServlet {
       
    public Login() {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//�α�����
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter pw = res.getWriter();
		
		  pw.print("<html><head><title>�α�����</title><script>");
	      pw.print("function logChk(){ if(document.getElementById('userid').value=='')");
	      pw.print("{alert('���̵� �Է��ϼ���'); return false}");
	      pw.print("if(document.getElementById('userpwd').value==''){");
	      pw.print("alert('��й�ȣ�� �Է��ϼ���.'); return false;} return true}</script>");
	      pw.print("</head><body>");
	      pw.print("<h1>�α�����</h1>");
	      pw.print("<form method='post' action='"+req.getContextPath()+"/loginForm.do' onsubmit='return logChk()'>");
	      pw.print("���̵� : <input type='text' name='userid' id='userid' /><br/>");
	      pw.print("��й�ȣ : <input type='password' name='userpwd' id='userpwd' /><br/>");
	      pw.print("<input type='submit' value='�α���'></form></body></html>");
		
	}
	

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//�α����ϱ�
		String userid = req.getParameter("userid");
		String userpwd = req.getParameter("userpwd");
		
		driverLoading();
		Connection con = null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		try {
	          con =  DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","c##scott","tiger");
			String sql = "select userid, username from register where userid=? and userpwd=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.setString(2, userpwd);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {//�α��μ���
				HttpSession ses = req.getSession();
				ses.setAttribute("userid", rs.getString(1));
				ses.setAttribute("userpwd", rs.getString(2));
				
				System.out.println(ses.getId());
				System.out.println(ses.getAttribute("userid"));
				System.out.println(ses.getAttribute("username"));
				
				res.sendRedirect(req.getContextPath()+"/index.do");
			}else {//�α��ν���
				res.setContentType("text/html; charset=UTF-8");
				PrintWriter pw = res.getWriter();
				pw.print("<script>");
				pw.print("alert('�ٽ� �α����ϼ���..');");
				pw.print("history.back();");
				pw.print("</script>");
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(con!=null) con.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	public void driverLoading() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
