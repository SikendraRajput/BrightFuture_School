package com.shoolmanagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helper.getConnection;

@WebServlet("/DeleteRecord")
public class DeleteRecord extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteRecord() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		int x=0;
		getConnection conobj=getConnection.getInstance();
		Connection con=conobj.connection();

		try {
		PreparedStatement ps=con.prepareStatement("DELETE FROM student WHERE rollnumber=?");
		ps.setString(1,request.getParameter("ro_no"));
		x=ps.executeUpdate();
		
		if(x>0) {
		RequestDispatcher rd=request.getRequestDispatcher("Delete.jsp");
		rd.include(request, response);
		pw.println("<h6 style='    color: white;\r\n"
				+ "    position: absolute;\r\n"
				+ "    top: 455px;\r\n"
				+ "    left: 430px;'> Student Record has been delete.</h6>");
		}
		else {

			RequestDispatcher rd=request.getRequestDispatcher("Delete.jsp");
			rd.forward(request, response);
		}
		
		}catch(Exception e) {
			System.out.println(e);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
