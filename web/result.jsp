<%--
  Created by IntelliJ IDEA.
  User: freim
  Date: 14.06.2017
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dein Ergebnis!</title>
</head>
<body>
<jsp:useBean id="calculator" class="eu.freemoser.bean.CalculatorBean" scope="session"/>

<jsp:element name="h1">
    <jsp:body>
        <%= calculator.getResult() %>
    </jsp:body>
</jsp:element>

</body>
</html>
