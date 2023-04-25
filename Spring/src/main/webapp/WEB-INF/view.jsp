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

    <c:if test="${not empty errorMessage}">
        <script>
            alert('${errorMessage}');
        </script>
    </c:if>

<style type="text/css">

body {
	width: 500px;
	margin: 0 auto;
}

h1, h2 {
text-align: center;

}

#btn {

display: block;
padding: 10px 15px;
background-color: rgba(0,0,0,0.2);
margin: 20px 200px;
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

.hidden {

display: none;

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

<c:forEach items="${array}" var = "i">
<tr> 
<th> ${i.title} </th>
<td> ${i.content} </td>
<td> ${i.date} </td>
<td> <a href="del?no=${i.num}&id=${sessionScope.loginId}&code=${i.code}" onclick="deleteBtn">삭제</a></td>
<td class="hidden"> ${i.code} </td>
</tr>
</c:forEach>

</table>

<c:if test="${sessionScope.loginId != null}">
<a href="i" id="btn">글 작성</a>
</c:if>





<c:choose>
    <c:when test="${sessionScope.loginId != null}">
        <a href="logout" id="btn">로그아웃</a>
    </c:when>
    <c:otherwise>
        <a href="l" id="btn">로그인</a>
    </c:otherwise>
</c:choose>

</body>
</html>