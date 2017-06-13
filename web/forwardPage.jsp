<%--
  Created by IntelliJ IDEA.
  User: freim
  Date: 13.06.2017
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- We can use this to access the right bean! -->
<jsp:useBean id="requestCount" scope="request" class="eu.freemoser.beans.CountBean"/>

<p>
<h1>This value should be 1!!!!!!</h1>
${requestScope.get("requestCount").count}
</p>

<p>
<h1>This value should be 2!!!!!!</h1>
<jsp:getProperty name="requestCount" property="count"/>

</p>
</body>
</html>
