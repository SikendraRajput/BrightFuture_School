<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>Insert title here</title>
<script type="text/javascript" src="jsfiles/show.js"></script>
<script type="text/javascript" src="jsfiles/Validation_Roll.js"></script>
</head>
<style>
body{
    background: dimgrey;
}
*{
margin:0px;
}
.container{
font-size:22px;
}
.full{
    background: #ffffffe8;
    height: 73px;
    width: 197px;
    margin:4px;
}
.single{
margin:4px;
    background: #ffffffe8;
    height: 73px;
    width: 197px;
}
a{
padding-left: 31px;
    padding-top: 23px;
    display: block;
    color:black;
    text-decoration: none;
}
.full:hover a{
padding-left:50px;
color:orange;
}
.single:hover a{
padding-left:50px;
color:orange;
}

h1{
      position: absolute;
    font-size: 71px;
        color: #e6e3dd7d;
    left: 272px;
    top: 264px;
}
#single1{
    width: 238px;
    left: 200px;
    position: relative;
    top: -5px;
    background: white;
    display:none;
    height:117px;
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

@media screen and (max-width:700px){
     .container{
     
     }
     h1{
         font-size: 25px !important;
    left: 12px;
     }
     #single1{
     left:100px !important;
     }
}

</style>
<body>
<% 
if(session.getAttribute("gmail")!=null && session.getAttribute("pass")!=null){
	%>
<div class="container" style="background-size:cover;">
<h1>Bright Future Convent School</h1>
<div class="full" style="background-size:cover;">
<a href="StudentList.jsp">Student_List</a>
</div>
<div class="single" style="background-size:cover;">
<a href="#" onclick="show()">Student</a>
</div>
<div id="single1">
<form action="StudentRecord.jsp" method="post" name="form" onsubmit="return validation()">
<input type="text" name="ro_no" placeholder="Enter RollNumber">
<input class="btn" type="submit" name="btn" value="ok">
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