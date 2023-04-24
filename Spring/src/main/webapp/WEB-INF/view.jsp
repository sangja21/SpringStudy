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

<style type="text/css">

#btn {

display: block;
padding: 10px 15px;
background-color: rgba(0,0,0,0.2);
width: 60px;
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

</style>

</head>
<body>

<h1>View : jstl Code</h1>

<table border="1">

<c:forEach items="${array}" var = "i">
<tr> 
<th> ${i.title} </th>
<td> ${i.content} </td>
<td> ${i.date} </td>
<td> <a href="del?no=${i.num}">삭제</a></td>
</tr>
</c:forEach>

</table>

<a href="i" id="btn">글 작성</a>
<a href="l" id="btn">로그인</a>

</body>
</html>