<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<style type="text/css">


body {
width: 300px;
margin: 0 auto;
}

#btn {
display: block;
width: 100%;
height: 40px;
background-color: rgba(0,0,0,0.2);
color: #333;
text-decoration: none;
font-weight: 700;
border-radius: 10px;
transition: ease-out .1s;
text-align: center;
border: none;
margin-top: 20px;
}

#btn:hover {

background-color: rgba(0,0,0,0.1);

}

h1 {

text-align: center;

}

table {
width: 100%;

}

input {

width: 95%;

}

</style>

</head>
<body>

<h1>LogIn Page</h1>

<form action="login" name="login" method="post">
<table>

<tr>
 <td>ID : </td>
 <td> <input type="text" name="id" placeholder="login"> </td>
</tr>

<tr>
 <td>PW : </td>
 <td> <input type="password" name="pw" placeholder="PassWord"> </td>
</tr>

</table>

<input type="submit" value="로그인" id ="btn">

</form>
</body>
</html>