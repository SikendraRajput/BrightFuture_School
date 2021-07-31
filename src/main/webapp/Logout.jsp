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
body{
font-size:33px;
}
input{
    margin-left: 655px;
    font-size: 23px;
    width: 78px;
    color: white;
    background: black;
    border-radius: 12px
}

@media screen and (max-width:700px){
h4{

}
input{
    left: -511px;
    position: absolute;
}
}
</style>
<body>
<form action="index.html" method="post">
<% 

session.invalidate();
out.println("<h4 style='text-align:center;'>Logout Successfully</h4>");

%>
<input type="submit" name="btn" value="OK">
</form>
</body>
</html>