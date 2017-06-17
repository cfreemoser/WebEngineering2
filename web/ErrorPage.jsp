<%--
  Created by IntelliJ IDEA.
  User: freim
  Date: 17.06.2017
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="materialize/css/materialize.min.css" media="screen,projection"/>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style>
        body {
            background-color: orangered;
        }
    </style>
</head>
<body>
<jsp:useBean id="error" class="eu.freemoser.web.beans.ErrorBean" scope="request"/>

<div class="row">
    <div class="col s12 m6">
        <div class="card">
            <div class="card-image">
                <img src="images/explosion.jpg">
                <span class="card-title">Sorry</span>
                <a class="btn-floating halfway-fab waves-effect waves-light red" href="list.jsp"><i
                        class="material-icons">home</i></a>
            </div>
            <div class="card-content">
                <core:out value="${error.reson}"/>
            </div>
        </div>
    </div>
</div>
</body>
</html>
