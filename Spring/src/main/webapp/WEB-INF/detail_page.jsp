<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="modeling2.New_table" %>
    
<% // jstl을 쓸 때 import하는 구문들 %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail Page</title>

<style type="text/css">

body {

width: 600px;
margin: 0 auto;

}

h1 {

text-align: center;

}

p {
	text-align: center;
}

.btn {

display: block;
width: 100%;
height: 30px;
line-height: 30px;
margin-top: 20px;
background-color: rgba(0,0,0,0.2);
color: #333;
text-decoration: none;
font-weight: 700;
border-radius: 10px;
transition: ease-out .1s;
text-align: center;'
}

.btn:hover {

background-color: rgba(0,0,0,0.1);

}

</style>

</head>
<body>

<h1><c:out value="${onePost.title}" /></h1>

<hr>

<p><c:out value="${onePost.content}" /></p>

<p><c:out value="${onePost.date}" /></p>

<p>By <c:out value="${onePost.code}" /></p>

<hr>

<div>
<a href="s" class="btn">목록</a>
<a href="del2?no=${onePost.num}" class="btn">삭제</a>
</div>



</body>
</html>