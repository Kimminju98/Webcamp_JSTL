<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<p><c:out value="${'c:out을 사용한 첫 예시'}"/></p>
<c:import var="data" url="https://www.javatpoint.com/jstl-core-import-tag"/>
<c:set var="Income" value="${400*4}"/>
<p>before: <c:out value="${Income}"/></p>
<c:remove var="Income"/>
<p>after: <c:out value="${Income}" /></p>

<c:catch var="Ex">
	<% int x = 2/0; %>
</c:catch>

<c:set var="num" value="${10*6}"/>
<p>입력한 숫자는 : <c:out value="${num}"/></p>
<c:choose>
	<c:when test="${num <50}">
	입력하신 숫자가 50보다 작군요!
	</c:when>
	<c:when test="${num >50 }">
	입력하신 숫자가 50보다 크군요!
	</c:when>
	<c:otherwise>
	입력하신 숫자가 50인가요..?
	</c:otherwise>
</c:choose>

<c:forEach var="i" begin="1" end="5">
	<p>Item<c:out value="${i }"/></p>
</c:forEach>

<c:forTokens items="Hey,What's the wrong?,Are you ok?" delims="," var="conversation">
	<c:out value="${conversation }"/><p>
</c:forTokens>

<c:url value="/index1.jsp" var="completeURL">
	<c:param name="trackingId" value="1367"/>
	<c:param name="user" value="min"/>
</c:url>
<p>${completeURL }</p>

</body>
</html>