package com.shoolmanagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.AddmissionBean;
import com.helper.getConnection;

@WebServlet("/addmission")
public class addmission extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public addmission() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		int x=0;
		AddmissionBean ab=new AddmissionBean();
		ab.setSname(request.getParameter("sname"));
		ab.setFname(request.getParameter("fname"));
		ab.setMname(request.getParameter("mname"));
		ab.setVillage(request.getParameter("village"));
		ab.setDist(request.getParameter("dist"));
		ab.setMobile(request.getParameter("mobile"));
		ab.setRo_no(request.getParameter("ro_no"));
		ab.setClass1(request.getParameter("student_class"));
		
		/* obtained localdate*/
		LocalDate date=LocalDate.now();
		getConnection con_obj=getConnection.getInstance();
		Connection con=con_obj.connection();
		try {
		PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?)");
		ps.setString(1, ab.getSname());
	    ps.setString(2, ab.getFname());
	    ps.setString(3, ab.getMname());
	    ps.setString(4, ab.getVillage());
	    ps.setString(5, ab.getDist());
	    ps.setString(6, ab.getMobile());
	    ps.setString(7, ab.getRo_no());
	    ps.setString(8, ab.getClass1());
	    ps.setString(9, date.toString());
	    
	    x= ps.executeUpdate();
		
		}catch(Exception e) {
		System.out.println(e);	
		}
		if(x<1) {
			RequestDispatcher rd=request.getRequestDispatcher("StudentInsert.jsp");
			rd.include(request, response);
			pw.println("<h2 style='text-align:center; color:black; position:absolute;top:51px;left:727px; font-size:21px;'>Sorry!! Data Not Inserted..</h2>");
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("StudentInsert.jsp");
			rd.include(request, response);
			pw.println("<h2 style='text-align:center; color:black; position:absolute;top:51px;left:727px; font-size:21px;'>Ok!! Data Inserted..</h2>");
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
