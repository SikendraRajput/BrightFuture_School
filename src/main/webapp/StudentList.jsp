<%@ page import="com.shoolmanagement.Compare,com.helper.getConnection,java.sql.Connection" 
         import="java.sql.PreparedStatement,java.sql.ResultSet,java.util.*"
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
<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@200&display=swap" rel="stylesheet">
</head>
<style>
body{
 background: white;
}
h4{
font-family: 'Raleway', sans-serif;
    position: relative;
    display: block;
    left: 344px;
    color: black;
    width: 440px;
    font-size: 23px;

}
h5{
font-family: 'Raleway', sans-serif;
position: relative;
    left: 598px;
    width: 344px;
    font-size: 22px;
    top: -60px;
}
h6{
font-family: 'Raleway', sans-serif;
position: relative;
    left: 890px;
    width: 344px;
    font-size: 22px;
    top: -137px;
}
h3{
position: relative;
width:670px;
    color: #e4ce85;
    font-size: 25px;
    left: 324px;
}
.d1{
   height:21px;
}


@media screen and (max-width: 700px){
    h3{
        font-size: 46px;
    width: 1227px;
    left: 0px;
    color: black;
    }
    h4{
        
    left: 0px;
    font-size: 55px;
    width: 577px;

    }
    h5{
        font-size: 58px;
    top: -175px;
    }
    h6{
        font-size: 64px;
    left: 1054px;
    top: -410px;
    }
}
</style>
<body>
<%
getConnection conobj=getConnection.getInstance();
Connection con=conobj.connection();

PreparedStatement ps=con.prepareStatement("select name,rollnumber,class from student");
ResultSet rs=ps.executeQuery();

List<Compare>list=new ArrayList<Compare>();
if(rs.next()){
	do{
		String name=rs.getString(1);
		String roll=rs.getString(2);
		int cla_ss=Integer.parseInt(rs.getString(3));
		list.add(new Compare(name,roll,cla_ss));
	}while(rs.next());
}
else{
	System.out.println("Empty studentList..");
}
Collections.sort(list);
out.println("<h3>Student_Name----------Student_Ro.No------------Student_Class</h3>");
for(Compare cmp:list){
	out.println("<div class='d1'>");
	out.println("<h4>"+cmp.name+"</h4>");
	out.println("<h5>"+cmp.ro_no+" </h5>");
	out.println("<h6>"+cmp.cla_ss+"</h6>");
	out.println("</div>");
}
%>
</body>
</html>