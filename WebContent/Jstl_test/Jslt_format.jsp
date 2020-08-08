<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>The fmt:parseNumber tag Example is:</h3>  
<c:set var="Amount" value="786.970" />  
    <fmt:parseNumber var="j" type="number" value="${Amount}" />  
    <p><i>Amount is:</i>  <c:out value="${j}" /></p>  
    <fmt:parseNumber var="j" integerOnly="true" type="number" value="${Amount}" />  
    <p><i>Amount is:</i>  <c:out value="${j}" /></p>  

<h3>Parsed Date:</h3>  
<c:set var="date" value="12-08-2016" />  
<fmt:parseDate value="${date}" var="parsedDate"  pattern="dd-MM-yyyy" />  
<p><c:out value="${parsedDate}" /></p>  

</body>
</html>