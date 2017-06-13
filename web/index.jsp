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


<h1>Load Ones</h1>
<table>
    <td>
         
        <tr>
               
            <th>Scope</th>
               
            <th>Value</th>

            <th>Object Hash</th>

             
        </tr>
         
        <tr>
               
            <td>Session</td>
               
            <td>
                <jsp:getProperty name="sessionCount" property="count"/>
            </td>
            <td>
                <jsp:getProperty name="sessionCount" property="hash"/>
            </td>
             
             
        </tr>
         
        <tr>
               
            <td>Application</td>
               
            <td>
                <jsp:getProperty name="applicationCount" property="count"/>
            </td>
            <td>
                <jsp:getProperty name="applicationCount" property="hash"/>
            </td>
             
        </tr>
         
        <tr>
               
            <td>Page</td>
               
            <td>
                <jsp:getProperty name="pageCount" property="count"/>
            </td>
            <td>
                <jsp:getProperty name="pageCount" property="hash"/>
            </td>
             
        </tr>
         
        <tr>
               
            <td>request</td>
               
            <td>
                <jsp:getProperty name="requestCount" property="count"/>
            </td>
            <td>
                <jsp:getProperty name="requestCount" property="hash"/>
            </td>
             
        </tr>
    </td>
</table>

<h1>Load Twice</h1>
<table>
    <td>
         
        <tr>
               
            <th>Scope</th>
               
            <th>Value</th>

            <th>Object Hash</th>

             
        </tr>
         
        <tr>
               
            <td>Session</td>
               
            <td>
                <jsp:getProperty name="sessionCount" property="count"/>
            </td>
            <td>
                <jsp:getProperty name="sessionCount" property="hash"/>
            </td>
             
             
        </tr>
         
        <tr>
               
            <td>Application</td>
               
            <td>
                <jsp:getProperty name="applicationCount" property="count"/>
            </td>
            <td>
                <jsp:getProperty name="applicationCount" property="hash"/>
            </td>
             
        </tr>
         
        <tr>
               
            <td>Page</td>
               
            <td>
                <jsp:getProperty name="pageCount" property="count"/>
            </td>
            <td>
                <jsp:getProperty name="pageCount" property="hash"/>
            </td>
             
        </tr>
         
        <tr>
               
            <td>request</td>
               
            <td>
                <jsp:getProperty name="requestCount" property="count"/>
            </td>
            <td>
                <jsp:getProperty name="requestCount" property="hash"/>
            </td>
             
        </tr>
    </td>
</table>

<h1>Forward Test!</h1>
<p>Reloads this page but with a forward tag at the end! </p>
<a href="goFowardPage.jsp">Click here for the test!</a>
</body>
</html>
