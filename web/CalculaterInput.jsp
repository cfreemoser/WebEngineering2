<%--
  Created by IntelliJ IDEA.
  User: freim
  Date: 11.06.2017
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ich bin ein Taschenrechner - lul</title>
</head>
<body>
<h1>Was möchtest du rechnen?</h1>
<form action="Result.jsp" method="get">
    <label>
        Operator 1:
        <input type="text" name="operant1"/>
    </label>
    <label>
        Operant:
        <input type="text" name="operator"/>
    </label>
    <label>
        Operator 2:
        <input type="text" name="operant2"/>
    </label>
    <input type="submit"/>
</form>
</body>
</html>
