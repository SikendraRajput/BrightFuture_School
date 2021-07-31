<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>Insert title here</title>
<script type="text/javascript" src="jsfiles/Fees.js"></script>
</head>
<style>
*{
margin:0px;
}
.form{
    display: flex;
    flex-direction: column;
    width: 420px;
    padding:35px;
    color:white;
    font-size:19px;
    left: 132px;
    top: 90px;
    background:grey;
    
    position: relative;
}
input{
    left: 166px;
    position: relative;
    top: -20px;
    padding: 4px;
    width: 228px;
}
.btn{
    width: 66px;
    top: 12px;
}
h2{
    position: absolute;
    margin: 0px 0px;
    left: 265px;
    top: 50px;
    font-size: 28px;
}
.bottom{
    height: 150px;
       background: #5f545494;
    top: 350px;
    position: relative;
}
h1{
    font-size: 50px;
    position: absolute;
    top: 48px;
    color: #f5efef;
    left: 200px;
}

@media screen and (max-width: 700px){

 .container{
     width: 621px !important;
    height: 1103px !important;
 }
   h2{
       font-size: 46px !important;
    left: 195px;
   }
   .form{
          left: 0px;
    top: 141px;
    font-size: 30px;
    width: 549px;
   }
input{
    left: 272px;
    top: -33px;
    font-size:30px !important;
    height: 35px;
    width: 289px;
}
.btn{
    width: 142px;
    font-size: 29px;
    height: 45px;
}
.bottom{
top: 674px !important;
}
h1{
left:110px !important;
}
.h2{
font-size: 31px !important;
    margin-top: 86px !important;
    margin-left: 38px !important;
}
}
</style>
<body>
<% 
if(session.getAttribute("gmail")!=null && session.getAttribute("pass")!=null){
	%>
<div class="container" style="background-size:cover; height:100vh;background: #8080802e;">
<h2>Fees_Entry</h2>
<form class="form" action="StudentFees" method="post" name="form" onsubmit="return feesValidation()">
Student RollNumber<input type="text" name="ro_no">
Payment<input type="text" name="payment">
<input class="btn" type="submit"name="btn">
</form>
<div class="bottom">
<h1>BrightFuture.com</h1>
</div>
</div>
<% }else{
RequestDispatcher rd=request.getRequestDispatcher("Log.jsp");
rd.forward(request,response);
}
%>
</body>
</html>