package com.shoolmanagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helper.getConnection;

@WebServlet("/Student_Record")
public class Student_Record extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Student_Record() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		
		getConnection conobj=getConnection.getInstance();
		Connection con=conobj.connection();
		try {
		PreparedStatement ps=con.prepareStatement("select * from student where rollnumber=?");
		ps.setString(1,request.getParameter("ro_no"));
		ResultSet rs=ps.executeQuery();
		
		rs.next();
			String sname=rs.getString(1);
			String fname=rs.getString(2);
			String mname=rs.getString(3);
			String village=rs.getString(4);
			String dist=rs.getString(5);
			String mobile=rs.getString(6);
			String ro_no=rs.getString(7);
			String class_=rs.getString(8);
			String add_date=rs.getString(9);
			System.out.println(" "+sname+" "+fname+" "+mname+" "+village+" "+dist+" "+mobile+" "+ro_no+" "+class_+" "+add_date );
		RequestDispatcher rd=request.getRequestDispatcher("View.jsp");
		rd.include(request, response);
		
		
	}catch(Exception e) {
		System.out.println("e");
		
	}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
