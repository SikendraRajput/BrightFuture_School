<%@ page import="java.sql.Connection,com.helper.getConnection,
java.sql.PreparedStatement,java.sql.ResultSet"
 language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Palanquin:wght@100&display=swap" rel="stylesheet">
</head>
<style>
h2{
    
    color: white;
    position: relative;
    width: 800px;
    left: 345px;
    font-size: 22px;
    padding-left: 56px;
    padding-top: 22px;
    background: #00000033;
    margin: 0px;
    font-family: 'Palanquin', sans-serif;
}

@media screen and (max-width:700px){
h2{
left:-50px !important;
}
}
</style>
<body>
<% 

getConnection conobj=getConnection.getInstance();
Connection con=conobj.connection();
try {
PreparedStatement ps=con.prepareStatement("select * from student where rollnumber=?");
ps.setString(1,request.getParameter("ro_no"));
ResultSet rs=ps.executeQuery();

if(rs.next()){
	String sname=rs.getString(1);
	String fname=rs.getString(2);
	String mname=rs.getString(3);
	String village=rs.getString(4);
	String dist=rs.getString(5);
	String mobile=rs.getString(6);
	String ro_no=rs.getString(7);
	String class_=rs.getString(8);
	String add_date=rs.getString(9);
	out.println("<h2>Student_Name:   "+sname+"</h2>");
	out.println("<h2>Father_Name:   "+fname+"</h2>");
	out.println("<h2>Mother_Name:   "+mname+"</h2>");
	out.println("<h2>Village:   "+village+"</h2>");
	out.println("<h2>Dist:   "+dist+"</h2>");
	out.println("<h2>mo_no.:   "+mobile+"</h2>");
	out.println("<h2>Roll_No.:   "+ro_no+"</h2>");
	out.println("<h2>class:   "+class_+"</h2>");
	out.println("<h2>Addmission_Date:   "+add_date+"</h2>");
    RequestDispatcher rd=request.getRequestDispatcher("View.jsp");
   rd.include(request, response);

   PreparedStatement ps1=con.prepareStatement("select * from studentfees1 where rollnumber=?");
   ps1.setString(1,request.getParameter("ro_no"));
   ResultSet rs1=ps1.executeQuery();
   
   while(rs1.next()){
	   out.println("<h2>Fees_Payment:   "+rs1.getString(2)+"rs.. Payment_Date:   "+rs1.getString(3)+"</h2>");
	
   }
   
}
else{
	RequestDispatcher rd=request.getRequestDispatcher("View.jsp");
	rd.include(request, response);
	out.println("<h2 style='position:relative; width: 326px; top: -54px;'>Enrollment number not matche'd..</h2>");
}
}catch(Exception e) {
System.out.println(e);

}
%>
</body>
</html>