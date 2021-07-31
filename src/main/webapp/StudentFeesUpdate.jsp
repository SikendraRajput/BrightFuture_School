<%@ page import="java.sql.Connection,com.helper.getConnection,
java.sql.PreparedStatement,java.sql.ResultSet,java.util.*,com.shoolmanagement.StudentFees_Bean" 

language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>Insert title here</title>

</head>
<style>
.d1{
    left: 290px;
    width:914px;
    position: relative;
    top: 113px;
    padding: 9px;
}
input{
    height: 22px;
    width:222px;
    text-align: center;
    font-size: 14px;
}
h3{
position: absolute;
left: 485px;
font-size: 26px;
top: 6px;
}
h4{
position: absolute;
top: 82px;
left: 407px;
   font-family: 'Palanquin', sans-serif;
}
.btn{
width:65px;
}




@media screen and (max-width: 700px){
      h3{
          width: 857px;
    left: 100px;
    font-size: 60px;
      }
      h4{
          top: 159px;
    left: 59px;
    /* width: 253px !important; */
    font-size: 24px;
      }
      .d1{
          top: 281px;
         left:-12px !important;
      }
      input{
             height: 73px;
    font-size: 38px;
    width: 248px;
      }
     .btn{
     width:134px !important;
     }
  h5{
  }
  
}
</style>
<body>
   <%
int x=1;
getConnection conobj=getConnection.getInstance();
Connection con=conobj.connection();

PreparedStatement ps=con.prepareStatement("select * from studentfees1 where rollnumber=?");
ps.setString(1,request.getParameter("ro_no"));
ResultSet rs=ps.executeQuery();

List<StudentFees_Bean>list=new ArrayList<StudentFees_Bean>();
if(rs.next()){
	do{
		String roll=rs.getString(1);
		String pay=rs.getString(2);
		String date=rs.getString(3);
		list.add(new StudentFees_Bean(roll,pay,date));
	}while(rs.next());
}
else{
	RequestDispatcher rd=request.getRequestDispatcher("StudentFees_Update.jsp");
	rd.include(request,response);
	out.println("<h3 style='position absolute;left: 485px;font-size: 26px;top: 30px;'> Not any Fees records..</h3>");
	 x=0;
}
if(x!=0){
out.println("<h3 id='h3'>Student Fees Record for update..</h3>");
out.println("<h4 id='h4'>Student-Ro_No~~~~~~~~~~~~~Payment~~~~~~~~~~~~~~~~~Date</h4>");
for(StudentFees_Bean cmp:list){%>
<div class="d1">
	<form  action="StudentFeesUpdate" method="post" name="form" >
	<input type='text' name='ro_no' value='<%=cmp.ro_no%>' readonly>
	<input type='text' name='payment' value='<%=cmp.payment%>'>
    <input type='text' name='date' value='<%=cmp.date%>' readonly>
	<input class="btn" type='submit' name='btn' value="update"  >
	
	</form>
	</div>
	<% 
}
}
   %>
  
</body>
</html>