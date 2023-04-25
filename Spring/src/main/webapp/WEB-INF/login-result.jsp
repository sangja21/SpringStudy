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

* {

text-align: cernter;

}

body {

width: 500px;
margin: 0 auto;

}

</style>

</head>
<body>

<c:if test="${login != '/fail' && login != null}">
<c:set var="loginId" value="${login}" scope="session" />
<p>Username is set to: ${sessionScope.loginId}</p>
</c:if>

<c:choose>
    <c:when test="${login != '/fail' && login != null}">
        <h1> Hello! ${login}! <br> Welcome to Peaky fokin Blinders! </h1>
    </c:when>
    <c:otherwise>
        <h1>Hey! you fail the Login!  </h1>
    </c:otherwise>
</c:choose>

<a href="s">Way Back Home</a>

</body>
</html>