<%--
  Created by IntelliJ IDEA.
  User: freim
  Date: 11.06.2017
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Fibonacci-Zahlen</title>
</head>
<body>
<h1>Das sind die ersten 20 Fibonacci-Zahlen</h1>
<core:set var="fn0" value="1"/>
<core:set var="fn1" value="1"/>
<core:set var="fn2" value="2"/>

<p>1. Fibonacci : ${fn0}</p>
<p>2. Fibonacci : ${fn1}</p>

<core:forEach begin="1" end="20" var="i">

    <p>${i}. Fibonacci : ${fn2}</p>
    <core:set var="fn0" value="${fn1}"/>
    <core:set var="fn1" value="${fn2}"/>
    <core:set var="fn2" value="${fn0 + fn1}"/>

</core:forEach>
</body>
</html>
