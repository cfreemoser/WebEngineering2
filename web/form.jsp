<%--
  Created by IntelliJ IDEA.
  User: freim
  Date: 14.06.2017
  Time: 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="errorBean" class="eu.freemoser.bean.ErrorBean" scope="request"/>

<h1>${requestScope.hashCode()}</h1>
<core:if test="${!(empty errorBean.error)}">
    <h1>Fehler: ${errorBean.error}</h1>
</core:if>

<form action="myconroller" method="get">
    <input type="text" name="zahl1">
    <input type="text" name="operant">
    <input type="text" name="zahl2">
    <input type="submit">
</form>

</body>
</html>
