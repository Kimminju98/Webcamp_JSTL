<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="String" value="Welcome to javatpoint"/>  
  
<c:if test="${fn:contains(String, 'javatpoint')}">  
   <p>Found javatpoint string<p>  
</c:if>  
  
<c:if test="${fn:contains(String, 'JAVATPOINT')}">  
   <p>Found JAVATPOINT string<p>  
</c:if>

<c:if test="${fn:endsWith(String, 'javatpoint')}">  
   <p>String ends with javatpoint<p>  
</c:if>

<c:set var="string1" value="It is first String."/>  
<c:set var="string2" value="It is <xyz>second String.</xyz>"/>  
  
<p>Index-1 : ${fn:indexOf(string1, "first")}</p>  
<p>Index-2 : ${fn:indexOf(string2, "second")}</p>    


<c:set var="str1" value="Welcome-to-JSP-Programming."/>  
<c:set var="str2" value="${fn:split(str1, '-')}" />  
<c:set var="str3" value="${fn:join(str2, ' ')}" />  
<p>String-3 : ${str3}</p>    

<p>Length of the String-1 is: ${fn:length(str1)}<br>  
Length of the String-2 is: ${fn:length(str2)}  </p>


</body>
</html>