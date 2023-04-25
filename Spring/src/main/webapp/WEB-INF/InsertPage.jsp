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

#btn {

display: block;
padding: 10px 15px;
background-color: rgba(0,0,0,0.2);
width: 60px;
margin: 20px 20px;
color: #333;
text-decoration: none;
font-weight: 700;
border-radius: 10px;
transition: ease-out .1s;
text-align: center;'
}

#btn:hover {

background-color: rgba(0,0,0,0.1);

}


</style>

</head>
<body>

<h1>Insert Page</h1>
<form action="in" name="insert" method="post">
<table>
<tr><td>Title : <input type="text" name="title"></td></tr>
<tr><td>Content : <input type="text" name="content"></td></tr>
<tr><td>Writer : <input type="text" name="code" value="${sessionScope.loginId}" readonly></td></tr>
<tr><td><input type="submit" value="등록" id="btn"></td></tr>
</table>
</form>
<hr>

</body>
</html>