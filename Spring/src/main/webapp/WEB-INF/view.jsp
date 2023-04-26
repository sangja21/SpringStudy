<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="modeling2.New_table" %>
<%@ page import="java.util.*"%>

<% // jstl을 쓸 때 import하는 구문들 %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  


<%
//ArrayList<New_table> array = (ArrayList<New_table>)request.getAttribute("array");
// module object도 request로 받아 온다
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:if test="${not empty sessionScope.errorMessage}">
    <script>
        alert('${sessionScope.errorMessage}');
    </script>
    <% session.removeAttribute("errorMessage"); %>
</c:if>

<style type="text/css">

body {
	width: 660px;
	margin: 0 auto;
}

h1, h2 {
text-align: center;

}

table {

width: 650px;
margin: 0 auto;

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

.hidden {

display: none;

}

a {

text-decoration: none;
color: #333;

}

a:hover {

color: #999;
text-decoration: underline;

}

td {

text-align: center;

}

.title {

font-weight: 700;

}

</style>

</head>
<body>

<h1>View : JSTL Code</h1>
<c:choose>
    <c:when test="${sessionScope.loginId != null}">
        <h2> Hello! ${sessionScope.loginId}!! <br> Welcome to Peaky fokin Blinders! </h2>
        <p class="hidden">${sessionScope.loginId}</p>
    </c:when>
    <c:otherwise>
        <h2>Hello! please Login to Write </h2>
    </c:otherwise>
</c:choose>

<table border="1">
<tr>
<th class="title">num</th>
<td class="title">Title</td>
<td class="title">Writer</td>
<td class="title">time</td>
</tr>
<c:forEach items="${array}" var = "i">
<tr> 
<th>${i.num}</th>
<td> <a href="dp?no=${i.num}"> ${i.title} </a></td>
<!--   <td> <a href="del?no=${i.num}&id=${sessionScope.loginId}&code=${i.code}" onclick="deleteBtn">삭제</a></td> -->
<td> ${i.code} </td>
<td> ${i.date} </td>
</tr>
</c:forEach>

</table>

<c:if test="${sessionScope.loginId != null}">
<a href="i" class="btn">글 작성</a>
</c:if>

<c:choose>
    <c:when test="${sessionScope.loginId != null}">
        <a href="logout" class="btn">로그아웃</a>
    </c:when>
    <c:otherwise>
        <a href="l" class="btn">로그인</a>
    </c:otherwise>
</c:choose>

</body>
</html>