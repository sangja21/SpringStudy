<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% // jstl을 쓸 때 import하는 구문들 %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">


body {

width: 500px;
margin: 0 auto;

}

table {

width: 500px;

}

#btn {

display: block;
width: 100%;
background-color: rgba(0,0,0,0.2);
height: 30px;
margin-top: 30px;
line-height: 30px;
color: #333;
text-decoration: none;
font-weight: 700;
border-radius: 10px;
transition: ease-out .1s;
text-align: center;
border: none;
}

#btn:hover {

background-color: rgba(0,0,0,0.1);

}

input {

width: 100%;

}

h1 {

text-align: center;

}


</style>

</head>
<body>

<h1>Insert Page</h1>
<form action="in" name="insert" method="post" enctype="multipart/form-data">
<table>
<tr><td>Title : <input type="text" name="title" required></td></tr>
<tr><td>Content : <input type="text" name="content" required></td></tr>
<tr><td>attachment : <input type="file" name = "file" required> </td></tr>
<tr><td>Writer : <input type="text" name="code" value="${sessionScope.loginId}" readonly></td></tr>
<tr><td><input type="submit" value="등록" id="btn"></td></tr>
</table>
</form>
<hr>

</body>
</html>