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

@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Signup() {
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
		PreparedStatement ps=con.prepareStatement("insert into signup values(?,?,?,?)");
		ps.setString(1, request.getParameter("name"));
		ps.setString(2, request.getParameter("gmail"));
		ps.setString(3, request.getParameter("mobile"));
		ps.setString(4, request.getParameter("password"));
		 x=ps.executeUpdate();
		 
		 if(x>0) {
				RequestDispatcher rd=request.getRequestDispatcher("Log.jsp");
				rd.include(request, response);
				pw.println("<h2 style='text-align:center; color:black; position:absolute;top:4px;left:390px;'>SignUp Successfully !! Please LogIn Now..</h2>");
			}
		 
		}catch(Exception e) {System.out.println(e);}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
