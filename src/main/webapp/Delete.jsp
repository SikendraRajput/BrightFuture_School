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
margin: 0px;
}
.container{
    background: #44403a9e;
    height: 100vh;
}
#single1{
    width: 238px;
    left: 319px;
    position: relative;
   top: 295px;
    background: white;
    display:block;
    height:117px;
}
#single2{
   
    width: 240px;
    left: 603px;
    position: relative;
    top: 178px;
    background: white;
    display: block;
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
    width:55px;
}
h6{
    position: absolute;
    top: -44px;
    color:white;
    font-size: 17px;
}
h7{

}
@media screen and (max-width: 700px){

.container{
    width: 839px !important;
    height: 1495px !important;
}
h1{
font-size: 57px !important;
    width: 752px !important;
    left: 60px !important;
}
#single1{
      left: 167px !important;
    width: 445px !important;
    height:283px !important;
}
#single2{
top: 514px !important;
   left: 167px !important;
    width: 445px !important;
    height:283px !important;
}
input{
    width: 381px !important;
    height: 43px !important;
    top: 38px !important;
    font-size: 39px !important;
}
h6{
    font-size: 43px !important;
    width: 598px !important;
    left: -42px !important;
}
.btn{
    width: 168px !important;
    top: 57px !important;
    background: #e48f3961 !important;
}
h7{

}
}

</style>
<body>
<% 
if(session.getAttribute("gmail")!=null && session.getAttribute("pass")!=null){
	%>
<div class="container">
<h1 style='    position: absolute;
    top: 48px;
    left: 148px;
    font-size: 88px;'>Bright Future Convent School</h1>
<div id="single1">
<h6 id="h6">Delete Student Personal Record</h6>
<form action="DeleteRecord" method="post" name="form" onsubmit="return validation()">
<input type="text" name="ro_no" placeholder="Enter RollNumber">
<input class="btn" type="submit" name="btn" value="delete">
</form>
</div>
<div id="single2">
<h6 id="h7">Delete Student Fees_Record</h6>
<form action="DeleteFees" method="post" name="form" onsubmit="return validation()">
<input type="text" name="ro_no" placeholder="Enter RollNumber">
<input class="btn" type="submit" name="btn" value="delete">
</form>
</div>
</div>
<% }else{
RequestDispatcher rd=request.getRequestDispatcher("Log.jsp");
rd.forward(request,response);
}
%>
</body>
</html>