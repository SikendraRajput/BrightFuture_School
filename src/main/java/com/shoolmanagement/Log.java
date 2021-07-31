package com.shoolmanagement;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Log")
public class Log extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Log() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		String gmail="sikendra.pipliya02@gmail.com";
		String pass="1234qwer@#";
		if(request.getParameter("gmail").equals(gmail) && request.getParameter("password").equals(pass) ) {
			HttpSession session=request.getSession();
			session.setAttribute("gmail",request.getParameter("gmail"));
			session.setAttribute("pass",request.getParameter("password"));
			RequestDispatcher rd=request.getRequestDispatcher("StudentService.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("Log.jsp");
			rd.include(request, response);
			pw.println("<h4 style='    position: absolute;\r\n"
					+ "    top: 462px;\r\n"
					+ "    left: 383px;\r\n"
					+ "    font-size: 18px;'>RollNumber or password not matched.</h4>");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
