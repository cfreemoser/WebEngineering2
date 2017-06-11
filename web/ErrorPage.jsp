<%--
  Created by IntelliJ IDEA.
  User: freim
  Date: 11.06.2017
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Oh Jonney!</title>
</head>
<body>
<h1>Sorry Britney hat es wohl kaputt gemacht!</h1>
<p><core:out value="${sessionScope.get('msg')}"/></p>
</body>
</html>
