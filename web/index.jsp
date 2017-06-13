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
    <title>ScopeTest</title>
</head>
<body>
<jsp:useBean id="sessionCount" type="eu.freemoser.beans.CountBean" class="eu.freemoser.beans.CountBean"
             scope="session"/>
<jsp:useBean id="applicationCount" type="eu.freemoser.beans.CountBean" class="eu.freemoser.beans.CountBean"
             scope="application"/>
<jsp:useBean id="pageCount" type="eu.freemoser.beans.CountBean" class="eu.freemoser.beans.CountBean" scope="page"/>
<jsp:useBean id="requestCount" type="eu.freemoser.beans.CountBean" class="eu.freemoser.beans.CountBean"
             scope="request"/>

<table>
    <td>
         
        <tr>
               
            <th>Scope</th>
               
            <th>Value</th>
             
        </tr>
         
        <tr>
               
            <td>Session</td>
               
            <td>
                <jsp:getProperty name="sessionCount" property="count"/>
            </td>
             
        </tr>
         
        <tr>
               
            <td>Application</td>
               
            <td>
                <jsp:getProperty name="applicationCount" property="count"/>
            </td>
             
        </tr>
         
        <tr>
               
            <td>Page</td>
               
            <td>
                <jsp:getProperty name="pageCount" property="count"/>
            </td>
             
        </tr>
         
        <tr>
               
            <td>request</td>
               
            <td>
                <jsp:getProperty name="requestCount" property="count"/>
            </td>
             
        </tr>
    </td>
</table>

<jsp:forward page="forwardPage.jsp"/>

</body>
</html>
