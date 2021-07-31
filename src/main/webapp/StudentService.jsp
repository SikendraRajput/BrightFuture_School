<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>Insert title here</title>
</head>
<style>
*{
margin:0px 0px;
}
body{

}
.container{
background-color:#80808000;
position:relative;
height:100vh;
}

.d1{
position: relative;
    width: 137px;
    background: #00000096;
    height: 62px;
    text-align: center;
    left: 357px;
    top: 200px;
        border-radius: 10px;
}
.d2{

    position: relative;
    width: 137px;
    background: #00000096;
    height: 62px;
    text-align: center;
    left: 357px;
    top: 318px;
        border-radius: 10px;

}
.d3{

    position: relative;
    width: 137px;
    background:#00000096;
    height: 62px;
    text-align: center;
    left: 721px;
    top: 76px;
        border-radius: 10px;
}
.d4{

    position: relative;
    width: 137px;
    background:#00000096;
    height: 62px;
    text-align: center;
    left: 721px;
    top: 194px;
        border-radius: 10px;
}
.d5{

    position: relative;
    width: 137px;
    background: #00000096;
    height: 62px;
    text-align: center;
    left: 1123px;
    top: -48px;
        border-radius: 10px;
}
.d6{
    background: #000000c9;
    height: 122px;
    top: 263px;
    position: relative;
}
a{
    text-decoration: none;
    top: 18px;
    position: relative;
    font-size: 20px;
    color: white;
}
a:hover{
font-size:23px;
color:orange;
}
h1{
    color: black;
    left: 435px;
    top: 29px;
    font-size: 39px;
    position: absolute;
}
img{
    height: 63px;
    position: absolute;
    top: 25px;
    left: 25px;

}
#a1{
       background: #1d1b1b57;
    height: 91px;
    width: 148px;
    top:28px;
    left: 134px;
    border-radius: 10px;
    position: relative;
    display:none;
}
.d2:hover #a1{
display:block;
background:black;
}
#a1 .a2{
    display: block;
    padding: 9px;
}


 @media only screen and (max-width: 700px) {
    h1{
    width: 903px;
    font-size: 69px;
    left: 229px;
    top: 155px;
    }
    .logout{
        width: 80px !important;
    font-size: 54px;
    margin-left: -181px;
    }
    .d6{
    width: 1255px;
    top: 1212px;
    height: 223px;
    }
    .d1{
        top: 371px;
    width: 679px;
    left: 230px;
    height: 100px;
    }
     .d2{
        top: 371px;
    width: 679px;
    left: 230px;
    height: 100px;
    }
     .d3{
       top: 600px;
    width: 679px;
    left: 230px;
    height: 100px;
    }
     .d4{
        top: 600px;
    width: 679px;
    left: 230px;
    height: 100px;
    }
     .d5{
        top: 600px;
    width: 679px;
    left: 230px;
    height: 100px;
    }
    .anchor{
    font-size:70px !important;
    }
    .s1{
    margin:45px !important;
    }
    #a1{
        width: 546px;
    height: 217px;
    }
 }








</style>
<body>

<div class="container" style="background-size:cover;">
  <h1>Bright Future Convent School</h1>
   <a class="logout" style='    position: absolute;
    top: 51px;
    left: 1195px;
    color: #23231c;' href="Logout.jsp">Logout</a>
  <div class="d0" style="background-size:cover;">
    <img src="images/brightfuture.jpg">
   </div>
 <div class="d1 s1" style="background-size:cover;">
 <a class="anchor" href="StudentInsert.jsp">New Student</a>
   </div>
    <div class="d2 s1" style="background-size:cover;">
    <a class="anchor" href="#">Update</a>
    <div id="a1">
        <a class="anchor" href="Student_Update.jsp">Student_Record</a>
            <a  class="a2 anchor" href="StudentFees_Update.jsp">Student_Fees</a>
    </div>
   </div>
    <div class="d3 s1" style="background-size:cover;">
    <a class="anchor" href="Delete.jsp">Delete</a>
   </div>
    <div class="d4 s1" style="background-size:cover;">
    <a class="anchor" href="StudentFees.jsp">Student Fees</a>
   </div>
    <div class="d5 s1" style="background-size:cover;">
    <a class="anchor" href="View.jsp">View</a>
   </div>
   
    <div class="d6" style="background-size:cover;">
 
   </div>
</div>


</body>
</html>