<%--
  Created by IntelliJ IDEA.
  User: freim
  Date: 17.06.2017
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="ErrorPage.jsp" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="materialize/css/materialize.min.css" media="screen,projection"/>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Title</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="materialize/js/materialize.min.js"></script>
</head>
<body>
<!--Import jQuery before materialize.js-->


<jsp:useBean id="contact" class="eu.freemoser.web.beans.AddressBean" scope="request"/>
<jsp:setProperty name="contact" property="id" param="id"/>


<core:if test="${!contact.valid}">
    <jsp:useBean id="error" class="eu.freemoser.web.beans.ErrorBean" scope="request"/>
    <jsp:setProperty name="error" property="reson" value="Der Gesuchte kontakt ist nicht vorhanden!"/>
    <jsp:forward page="ErrorPage.jsp"/>
</core:if>

<div class="navbar-fixed">
    <nav>
        <div class="nav-wrapper green">
            <a href="/list.jsp" class="brand-logo right"><i class="material-icons">done</i></a>
        </div>
    </nav>
</div>


<jsp:element name="ul">
    <jsp:attribute name="class">collection with-header</jsp:attribute>
    <jsp:body>
        <%-- Header --%>
        <jsp:element name="li">
            <jsp:attribute name="class">collection-header</jsp:attribute>
            <jsp:body>
                <jsp:element name="h4">
                    <jsp:body>
                        <core:out value="${contact.christianname}"/>
                    </jsp:body>
                </jsp:element>
            </jsp:body>
        </jsp:element>

        <%-- Adress --%>
        <jsp:element name="li">
            <jsp:attribute name="class">collection-item</jsp:attribute>
            <jsp:body>
                <core:out value="${contact.street}"/>
                <core:out value="${contact.number}"/>
                <jsp:element name="br"/>
                <core:out value="${contact.city}"/>
                <core:out value="${contact.postcode}"/>
            </jsp:body>
        </jsp:element>

        <%-- Contact --%>
        <jsp:element name="li">
            <jsp:attribute name="class">collection-item</jsp:attribute>
            <jsp:body>
                Phone : <core:out value="${contact.phone}"/>
                <jsp:element name="br"/>
                Mobile : <core:out value="${contact.mobile}"/>
            </jsp:body>
        </jsp:element>

        <%-- Personal Information --%>
        <jsp:element name="li">
            <jsp:attribute name="class">collection-item</jsp:attribute>
            <jsp:body>
                Birthday : <core:out value="${contact.birthdate}"/>
                <jsp:element name="br"/>
                Email : <core:out value="${contact.email}"/>
            </jsp:body>
        </jsp:element>
    </jsp:body>
</jsp:element>

<div class="fixed-action-btn toolbar">
    <a class="btn-floating btn-large green">
        <i class="large material-icons">mode_edit</i>
    </a>
    <ul>
        <li class="waves-effect waves-light"><a href="delete?id=${contact.id}"><i class="material-icons">delete</i></a>
        </li>
        <li class="waves-effect waves-light"><a href="AddressForm.jsp?id=${contact.id}&from=detail"><i
                class="material-icons">contacts</i></a></li>
    </ul>
</div>

</body>
</html>
