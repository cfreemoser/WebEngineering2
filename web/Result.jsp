<%--
  Created by IntelliJ IDEA.
  User: freim
  Date: 11.06.2017
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="ErrorPage.jsp" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Ergebnis</title>
</head>
<body>

<%-- first get all variables --%>
<core:set var="operator1" value="${param.get('operant1')}"/>
<core:set var="operant" value="${param.get('operator')}"/>
<core:set var="operator2" value="${param.get('operant2')}"/>
<core:set var="result" value="0"/>


<h1>Das Ergebnis</h1>
<core:choose>
    <core:when test="${operant.equals('+')}">
        <core:set var="result" value="${operator1 + operator2}"/>
    </core:when>
    <core:when test="${operant.equals('-')}">
        <core:set var="result" value="${operator1 - operator2}"/>
    </core:when>
    <core:when test="${operant.equals('*')}">
        <core:set var="result" value="${operator1 * operator2}"/>
    </core:when>
    <core:when test="${operant.equals('/')}">
        <core:if test="${operator2 eq 0}">
            <core:set var="msg" value="Division durch null nicht erlaubt, retard!" scope="session"/>
            <core:redirect url="ErrorPage.jsp"/>
        </core:if>
        <core:set var="result" value="${operator1 / operator2}"/>
    </core:when>
    <core:when test="${operant.equals('%')}">
        <core:if test="${operator2 eq 0}">
            <core:set var="msg" value="Division durch null nicht erlaubt, retard!" scope="session"/>
            <core:redirect url="ErrorPage.jsp"/>
        </core:if>
        <core:set var="result" value="${operator1 % operator2}"/>
    </core:when>
    <core:otherwise>
        <core:redirect url="index.jsp"/>
    </core:otherwise>
</core:choose>
<p><core:out value="${result}"/></p>
</body>
</html>
