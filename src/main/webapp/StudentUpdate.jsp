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
<script type="text/javascript" src="jsfiles/FormClear.js"></script>
<script type="text/javascript" src="jsfiles/addmission.js"></script>
</head>
<style>
#form{
            display: flex;
    flex-direction: column;
    width: 266px;
    left: 379px;
    position: relative;
    top: 66px;
    font-size:16px;
     }
     .i1,.i2,.i3,.i4,.i5,.i6,.i7,.i8,.i9{
         left: 163px;
    position: relative;
    top: -22px;
        margin: 5px;
    padding: 3px;
    width: 273px;
     }
     h2{
         font-size: 33px;
    display: initial;
    position: relative;
    top: 8px;
    left: 485px;
     }
     .i10{
         width: 100px;
    left: 164px;
    position: relative;
    top: 21px;
    font-size: 19px;
     }
     
     
     
     @media screen and (max-width: 700px){
         
         h2{
         margin-left: -408px !important;
         }
      .i1,.i2,.i3,.i4,.i5,.i6,.i7,.i8,.i9{
               width: 177px !important;
    height: 20px;
    left: 127px;
      }
      #form{
          top: 87px;
    left: 22px;
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
	
	%> 
	<h2 style='    text-align: center;
    color: #238e6bed;
    position: absolute;
    top: 1px;
    left: 546px;
    font-size: 25px;'> Update ??</h2>
	<form id="form" action="StudentUpdate" method="post" name="form" onsubmit="return validation()">
		     
		       Student_Name  <input class="i1" id="input1" type="text" name="sname" value="<%=sname%>">   
		       Father_Name  <input class="i2" id="input2" type="text" name="fname" value="<%=fname%>"> 
		       Mother_Name  <input class="i3" id="input3" type="text" name="mname" value="<%=mname%>"> 
		       Village  <input class="i4" id="input4" type="text" name="village" value="<%=village%>"> 
		       Dist  <input class="i5" id="input5" type="text" name="dist" value="<%=dist%>"> 
		       Mobile  <input class="i6" id="input6" type="text" name="mobile"value="<%=mobile%>"> 
		       Roll_Number  <input class="i7" id="input7" type="text" name="ro_no" value="<%=ro_no%>"> 
		       Class  <input class="i8" id="input8" type="text" name="student_class" value="<%=class_%>"> 
		       
		       <input class="i10" id="input" type="submit" name="btn" >   
		     </form>
	<%
   
}
else{
	RequestDispatcher rd=request.getRequestDispatcher("Student_Update.jsp");
	rd.include(request, response);
	out.println("<h2 style='position:relative; width: 326px; top: -54px;'>Enrollment number not matche'd..</h2>");
}
}catch(Exception e) {
System.out.println(e);

}
%>

</body>
</html>