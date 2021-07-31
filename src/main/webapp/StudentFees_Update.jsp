<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>Insert title here</title>
<script type="text/javascript" src="jsfiles/Validation_Roll.js"></script>
</head>
<style>
*{
margin:0;
}
#single1{
       width: 250px;
    left: 56px;
    position: relative;
    top: 64px;
    background: #7d6d6d36;
    height: 117px;
}
form{
padding: 4px;
    padding-left: 29px;
}
input{
       padding: 3px;
    text-align: center;
    top: 12px;
    position: relative;
}
.btn{
    left: 53px;
    position: relative;
    top:35px;
    width:35px;
}

 
 @media screen and (max-width: 700px){
 
 }
</style>

<body style="background: #b9aaaa26;">
<% 
if(session.getAttribute("gmail")!=null && session.getAttribute("pass")!=null){
	%>
<h3 style="
    position: absolute;
    top: 22px;
    left: 67px;
    font-size: 24px;
">Update Student_Fees</h3>
<div id="single1">
<form action="StudentFeesUpdate.jsp" method="post" name="form" onsubmit="return validation()">
<input type="text" name="ro_no" placeholder="Enter RollNumber">
<input class="btn" type="submit" name="btn" value="ok">
</form>
</div>
<% }else{
RequestDispatcher rd=request.getRequestDispatcher("Log.jsp");
rd.forward(request,response);
}
%>
</body>
</html>