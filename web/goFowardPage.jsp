<%--
  Created by IntelliJ IDEA.
  User: freim
  Date: 13.06.2017
  Time: 18:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Forward Test</title>
</head>
<body>
<!-- We can use this to access the right bean! -->
<jsp:useBean id="requestCount" scope="request" class="eu.freemoser.beans.CountBean"/>
<jsp:useBean id="sessionCount" type="eu.freemoser.beans.CountBean" class="eu.freemoser.beans.CountBean"
             scope="session"/>
<jsp:useBean id="applicationCount" type="eu.freemoser.beans.CountBean" class="eu.freemoser.beans.CountBean"
             scope="application"/>
<jsp:useBean id="pageCount" type="eu.freemoser.beans.CountBean" class="eu.freemoser.beans.CountBean" scope="page"/>

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


    <jsp:forward page="forwardPage.jsp"/>

</body>
</html>
