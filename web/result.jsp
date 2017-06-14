<%--
  Created by IntelliJ IDEA.
  User: freim
  Date: 14.06.2017
  Time: 12:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dein Ergebnis</title>
</head>
<body>
<jsp:useBean id="bean" class="eu.freemoser.bean.CalculatorBean" scope="request"/>

<h1>${bean.result}</h1>

</body>
</html>
