<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>Insert title here</title>
<script type="text/javascript" src="jsfiles/addmission.js"></script>
</head>
<style>
*{
margin:0px 0px;
}
.container{
height:100vh;
background:#8080801c;
}
   .form{
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
 .container{
     width: 828px;
    height: 1472px;
 }
 h2{
     font-size: 68px;
    left: 176px;
 }
 .form{
 left:10px;
 font-size:45px;
 }
 .i1,.i2,.i3,.i4,.i5,.i6,.i7,.i8,.i9{
    left: 355px;
    position: relative;
    top: -41px;
    margin: 2px;
    padding: 21px;
    width: 357px;
    
    }
    .i10{
            width: 266px;
    height: 62px;
    position: relative;
    top: 21px;
    font-size: 44px;
 
 }
 
 
</style>
<body>
<% 
if(session.getAttribute("gmail")!=null && session.getAttribute("pass")!=null){
	%>
     <div class="container">
     <h2>New Addmission</h2>
     <form class="form" action="addmission" method="post" name="form" onsubmit="return validation()">
     
       Student_Name  <input class="i1" id="input" type="text" name="sname">   
       Father_Name  <input class="i2" id="input" type="text" name="fname"> 
       Mother_Name  <input class="i3" id="input" type="text" name="mname"> 
       Village  <input class="i4" id="input" type="text" name="village"> 
       Dist  <input class="i5" id="input" type="text" name="dist"> 
       Mobile  <input class="i6" id="input" type="text" name="mobile"> 
       Roll_Number  <input class="i7" id="input" type="text" name="ro_no"> 
       Class  <input class="i8" id="input" type="text" name="student_class"> 
       Addmission_Date  <input class="i9" id="input" type="text" name="add_date"> 
       <input class="i10" id="input" type="submit" name="">   
     </form>
     </div>
     
<% }else{
RequestDispatcher rd=request.getRequestDispatcher("Log.jsp");
rd.forward(request,response);
}
%>
</body>
</html>