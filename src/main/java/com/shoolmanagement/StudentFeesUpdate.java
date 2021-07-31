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

/**
 * Servlet implementation class StudentFeesUpdate
 */
@WebServlet("/StudentFeesUpdate")
public class StudentFeesUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public StudentFeesUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		int pay=0;
		String paystr=request.getParameter("payment");
	
		
		if( paystr=="" || paystr==null) {
			pay=0;
		}
		else {
			try {
			pay=Integer.parseInt(request.getParameter("payment"));
			}
			catch(Exception e) {
				RequestDispatcher rd=request.getRequestDispatcher("StudentFeesUpdate.jsp");
				rd.include(request, response);
				pw.println("<h5 style='position: absolute;\r\n"
						+ "    background: beige;\r\n"
						+ "    font-size: 23px;\r\n"
						+ "    left: 1119px;\r\n"
						+ "    top: 52px;'>Payment is not valid.</h5>");
			}
		if(pay%1==0) {
			pay=1;
		}
		else {
			pay=0;
		}
	}

		
		if(pay==0) {
			RequestDispatcher rd=request.getRequestDispatcher("StudentFeesUpdate.jsp");
			rd.include(request, response);
			pw.println("<h5 style='position: absolute;\r\n"
					+ "    background: beige;\r\n"
					+ "    font-size: 23px;\r\n"
					+ "    left: 1119px;\r\n"
					+ "    top: 52px;'>Payment is not valid.</h5>");
		}
		else {
		int x=0;
		getConnection conobj=getConnection.getInstance();
		Connection con=conobj.connection();
		try {
		PreparedStatement ps=con.prepareStatement("UPDATE studentfees1 SET payment=? WHERE rollnumber=? and date=?");
        ps.setString(1,request.getParameter("payment"));
        ps.setString(2, request.getParameter("ro_no"));
        ps.setString(3,request.getParameter("date"));
        x=ps.executeUpdate();
		if(x==0) {
			pw.println("Data not update.");
			System.out.println("Data not update.");
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("StudentFeesUpdate.jsp");
			rd.include(request, response);
			pw.println("<h5 style='position: absolute;\r\n"
					+ "    background: beige;\r\n"
					+ "    font-size: 23px;\r\n"
					+ "    left: 1119px;\r\n"
					+ "    top: 52px;'>Payment Update.</h5>");
		}
		}catch(Exception e) {
		System.out.println(e);
		
	}
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
