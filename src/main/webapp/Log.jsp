<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>Insert title here</title>

<script type="text/javascript" src="jsfiles/Validation.js"></script> 
<script type="text/javascript" src="jsfiles/Validation_Roll.js"></script> 
</head>
<style>
 @media  screen and (max-width: 700px) {
 #f1{
     display: flex !important;
    flex-direction: column !important;
    position: relative;
    left: -222px;
    top: 78px;
    height: 365px;
 }
 #f2{
        display: flex !important;
    flex-direction: column !important;
    position: relative;
    left: -977px;
    top: 797px;
    height: 386px;
 }
 .btn{
    width: 221px !important;
    height: 71px !important;
    font-size: 49px;
 }
 .c1{
        width: 593px;
    height: 85px;
    font-size: 51px;
 }
 #i1{
        left: 46px !important;
    width: 949px !important;
    height: 102px !important;
    font-size: 67px !important;
 }
 #i3{
     top: 800px !important;
    left: 46px !important;
    width: 949px !important;
    height: 102px !important;
    font-size: 67px !important;
 }
 .signup{
 display:none !important;
 }
 
 
 
 
 
 
 
 }

body{
    background: #00000038;
}
#login{
    display: flex;
    margin: 104px 351px;
    height: 362px;
    width: 677px;}
.f1{
    display: flex;
    flex-direction: column;
   background: #faebd752;
}
.f2{
display: flex;
    flex-direction: column;
    background: #f5eeeeb8;
}
#f1{
padding-left: 22px;
padding:55px;
margin:5px;
}
#f2{
padding-left: 22px;
padding:55px;
margin:5px;
}
.c1{

    padding: 4px 17px;
   margin: 18px 5px

}
.btn{
    top:21px;
    width: 63px;
    left: 70px;
    position: relative;

}



#i1{

    position: absolute;
    left: 373px;
    top: 78px;
    border: 0px;
    background: #e6e6e6;
    cursor: pointer;
    width: 311px;
    font-size: 20px;
}
#i3{

    position: absolute;
    left: 708px;
    top: 78px;
    border: 0px;
    background: #e6e6e6;
    cursor: pointer;
    width: 311px;
    font-size: 20px;
}
.signup{
position: absolute;
    font-size: 12px;
    background: gainsboro;
    top: 384px;
    left: 367px;
    padding: 5px 5px;
    text-align: center;
    width: 309px;
}
.signup h3{

}
#login .signup a{
    position: relative;
    font-size: 18px;
    color: black;
    padding:2px;
    text-decoration: none;
    border: 1px solid;
    width: 104px;
    cursor: pointer;
    background: papayawhip;
    text-align: center;
}
</style>

<body>

<div id="login" style="background-size:cover;">

<button id="i1" type="submit" onclick="focusInput()"> Principal Signin</button>
<form id="f1" class="f1 form" action="Log" method="post" name="logform" onsubmit="return emailValidation()">
<input id="i2" class="c1" type="text" name="gmail" placeholder="Enter your G-mail">
<input class="c1" type="password" name="password" placeholder="Enter your Password">
<input class="btn" type="submit" name="Login" value="Login">


</form>
<div class="signup">
<h3>If you haven't signed up,so sign up now   </h3>
<a href="#">Signup now</a>
</div>

<button id="i3" type="submit" onclick="focusInput1()"> Student Signin</button>
<form id="f2" class="f2 form" action="Stu_Record.jsp" method="post" onsubmit="return validation()">
<input class="c1" id="i4" type="text" name="ro_no" placeholder="Enter your RollNumber">
<input class="btn" type="submit" name="Login">
</form>


</div>

</body>
</html>