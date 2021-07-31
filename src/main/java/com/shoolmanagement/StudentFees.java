package com.shoolmanagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helper.getConnection;


@WebServlet("/StudentFees")
public class StudentFees extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public StudentFees() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		int x=0;
		getConnection conobj=getConnection.getInstance();
		Connection con=conobj.connection();
		  SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
		    Date date = new Date();  
		try {
		PreparedStatement ps=con.prepareStatement("insert into studentfees1 values(?,?,?)");
		ps.setString(1, request.getParameter("ro_no"));
		ps.setString(2, request.getParameter("payment"));
		ps.setString(3,date.toString());
		x=ps.executeUpdate();
		
		}catch(Exception e) {
			System.out.println(e);
			}
		if(x<1) {
			RequestDispatcher rd=request.getRequestDispatcher("StudentFees.jsp");
			rd.include(request, response);
			pw.println("<h2 class='h2' style='text-align:center; color:white; position:absolute;top:234px;left:416px;font-size:22px;'>Payment unsuccessfull..</h2>");
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("StudentFees.jsp");
			rd.include(request, response);
			pw.println("<h2 class='h2' style='text-align:center; color:white; position:absolute;top:234px;left:416px;font-size:22px;'>Payment Successfull..</h2>");
		}
		}
	
		
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
