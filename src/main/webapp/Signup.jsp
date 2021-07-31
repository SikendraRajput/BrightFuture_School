<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="jsfiles/signup.js"></script>  
</head>
<style>
.signup{

}
.form{
    display: flex;
    position: relative;
    flex-direction: column;
    width: 314px;
    height: 497px;
    background: #2d416f;
    margin: -608px 152px;
    align-items: center;
}
.form input{
    padding: 5px 42px;
    margin: 5px 0px;
    margin-top: 23px;
}
img{
       height: 682px;
    width: 1349px;
}
h2{
    position: absolute;
    color: white;
    left: 255px;
    font-size: 33px;
}
</style>
<body>
<h2>SignUp</h2>
     <div class="signup" style="background-size:cover;">
     
     <img src="images/contact1.jpg">
        <form class="form" action="Signup" method="post" name="myform" onsubmit="return validation()">
        <input id="name" type="text" name="name" placeholder="Enter your Name">
        <input id="gmail" type="text" name="gmail" placeholder="Enter your G-mail">
        <input id="mobile" type="text" name="mobile" placeholder="Enter your Mobile">
        <input id="password" type="text" name="password" placeholder="Enter your Password">
        
        <input class="btns" type="submit" name="signup" value="signup">
        </form> 
     </div>
</body>
</html>