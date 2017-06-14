<%--
  Created by IntelliJ IDEA.
  User: freim
  Date: 10.06.2017
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Taschenrechner</title>
</head>
<body>
<jsp:useBean id="calculator" class="eu.freemoser.bean.CalculatorBean" scope="session"/>

<h1>Dein Taschenrechner</h1>

<jsp:setProperty name="calculator" property="op1" param="op1"/>
<jsp:setProperty name="calculator" property="op" param="op"/>
<jsp:setProperty name="calculator" property="op2" param="op2"/>


<form action="index.jsp" method="get">
    <input type="text" name="op1"/>
    <input type="text" name="op"/>
    <input type="text" name="op2"/>
    <input type="submit">
</form>


<core:if test="${empty calculator.op1}">
    <h1>Deine erste zahl ist nicht gesetzt!</h1>
</core:if>
<core:if test="${!calculator.op1Valid}">
    <h1>Nur Zahlen sind erlaubt!</h1>
</core:if>

<core:if test="${empty calculator.op2}">
    <h1>Deine zweite zahl ist nicht gesetzt!</h1>
</core:if>
<core:if test="${!calculator.op2Valid}">
    <h1>Nur Zahlen sind erlaubt!</h1>
</core:if>

<core:if test="${empty calculator.op}">
    <h1>Was soll ich tun</h1>
</core:if>
<core:if test="${!calculator.opValid}">
    <h1>üngültiger befehl</h1>
</core:if>


<core:if test="${calculator.op1Valid && calculator.op2Valid && calculator.opValid}">
    <jsp:forward page="result.jsp"/>
</core:if>


</body>

</html>
