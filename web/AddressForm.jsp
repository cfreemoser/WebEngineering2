<%--
  Created by IntelliJ IDEA.
  User: freim
  Date: 17.06.2017
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="materialize/css/materialize.min.css" media="screen,projection"/>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Title</title>
</head>
<body>
<jsp:useBean id="contact" class="eu.freemoser.web.beans.AddressBean" scope="request"/>
<jsp:setProperty name="contact" property="id" param="id"/>
<core:set var="from" value="${param.from}"/>

<div class="navbar-fixed">
    <nav>
        <div class="nav-wrapper green">
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li>
                    <jsp:element name="a">
                    <jsp:attribute name="href">
                    <core:choose>
                    <core:when test="${from.equals('detail')}">
                    AddressDetail.jsp?id=${contact.id}
                    </core:when>
                    <core:otherwise>
                    list.jsp
                    </core:otherwise>
                    </core:choose>
                    </jsp:attribute>
                    <jsp:body>
                    Discard
                    </jsp:body>
                    </jsp:element>
            </ul>
        </div>
    </nav>
</div>
<div class="row">
    <form class="col s12" method="post" action="/save">

        <div class="row">
            <input type="hidden" name="id" id="id" value="${contact.id}">
        </div>

        <div class="row">
            <div class="input-field col s6">
                <jsp:element name="input">
                    <jsp:attribute name="name">christianname</jsp:attribute>
                    <jsp:attribute name="id">first_name</jsp:attribute>
                    <jsp:attribute name="type">text</jsp:attribute>
                    <jsp:attribute name="class">validate</jsp:attribute>
                    <jsp:attribute name="value">
                        <core:out value="${contact.christianname}"/>
                    </jsp:attribute>
                    <jsp:attribute name="required"/>
                </jsp:element>

                <label for="first_name">First Name</label>
            </div>
            <div class="input-field col s6">
                <jsp:element name="input">
                    <jsp:attribute name="name">lastname</jsp:attribute>
                    <jsp:attribute name="id">last_name</jsp:attribute>
                    <jsp:attribute name="type">text</jsp:attribute>
                    <jsp:attribute name="class">validate</jsp:attribute>
                    <jsp:attribute name="required"/>
                    <jsp:attribute name="value">
                        <core:out value="${contact.name}"/>
                    </jsp:attribute>
                </jsp:element>
                <label for="last_name">Last Name</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col s6">
                <jsp:element name="input">
                    <jsp:attribute name="name">street</jsp:attribute>
                    <jsp:attribute name="id">street</jsp:attribute>
                    <jsp:attribute name="type">text</jsp:attribute>
                    <jsp:attribute name="class">validate</jsp:attribute>
                    <jsp:attribute name="required"/>
                    <jsp:attribute name="value">
                        <core:out value="${contact.street}"/>
                    </jsp:attribute>
                </jsp:element>
                <label for="street">Street</label>
            </div>
            <div class="input-field col s6">
                <jsp:element name="input">
                    <jsp:attribute name="name">number</jsp:attribute>
                    <jsp:attribute name="id">number</jsp:attribute>
                    <jsp:attribute name="type">text</jsp:attribute>
                    <jsp:attribute name="class">validate</jsp:attribute>
                    <jsp:attribute name="required"/>
                    <jsp:attribute name="value">
                        <core:out value="${contact.number}"/>
                    </jsp:attribute>
                </jsp:element>
                <label for="number">Number</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col s6">
                <jsp:element name="input">
                    <jsp:attribute name="name">city</jsp:attribute>
                    <jsp:attribute name="id">city</jsp:attribute>
                    <jsp:attribute name="type">text</jsp:attribute>
                    <jsp:attribute name="class">validate</jsp:attribute>
                    <jsp:attribute name="required"/>
                    <jsp:attribute name="value">
                        <core:out value="${contact.city}"/>
                    </jsp:attribute>
                </jsp:element>
                <label for="city">City</label>
            </div>
            <div class="input-field col s6">
                <jsp:element name="input">
                    <jsp:attribute name="name">postcode</jsp:attribute>
                    <jsp:attribute name="id">postcode</jsp:attribute>
                    <jsp:attribute name="type">text</jsp:attribute>
                    <jsp:attribute name="class">validate</jsp:attribute>
                    <jsp:attribute name="required"/>
                    <jsp:attribute name="value">
                        <core:out value="${contact.postcode}"/>
                    </jsp:attribute>
                </jsp:element>
                <label for="postcode">Postcode</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col s6">
                <jsp:element name="input">
                    <jsp:attribute name="name">country</jsp:attribute>
                    <jsp:attribute name="id">country</jsp:attribute>
                    <jsp:attribute name="type">text</jsp:attribute>
                    <jsp:attribute name="class">validate</jsp:attribute>
                    <jsp:attribute name="required"/>
                    <jsp:attribute name="value">
                        <core:out value="${contact.country}"/>
                    </jsp:attribute>
                </jsp:element>
                <label for="country">Country</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col s12">
                <jsp:element name="input">
                    <jsp:attribute name="name">email</jsp:attribute>
                    <jsp:attribute name="id">email</jsp:attribute>
                    <jsp:attribute name="type">email</jsp:attribute>
                    <jsp:attribute name="class">validate</jsp:attribute>
                    <jsp:attribute name="required"/>
                    <jsp:attribute name="value">
                        <core:out value="${contact.email}"/>
                    </jsp:attribute>
                </jsp:element>
                <label for="email">Email</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col s12">
                <jsp:element name="input">
                    <jsp:attribute name="name">phone</jsp:attribute>
                    <jsp:attribute name="id">phone</jsp:attribute>
                    <jsp:attribute name="type">number</jsp:attribute>
                    <jsp:attribute name="class">validate</jsp:attribute>
                    <jsp:attribute name="required"/>
                    <jsp:attribute name="value">
                        <core:out value="${contact.number}"/>
                    </jsp:attribute>
                </jsp:element>
                <label for="phone">Phone</label>
            </div>
            <div class="input-field col s12">
                <jsp:element name="input">
                    <jsp:attribute name="name">mobile</jsp:attribute>
                    <jsp:attribute name="id">mobile</jsp:attribute>
                    <jsp:attribute name="type">number</jsp:attribute>
                    <jsp:attribute name="class">validate</jsp:attribute>
                    <jsp:attribute name="required"/>
                    <jsp:attribute name="value">
                        <core:out value="${contact.mobile}"/>
                    </jsp:attribute>
                </jsp:element>
                <label for="mobile">Number</label>
            </div>
        </div>
        <div class="input-field col s12">
            <input name="birthdate" required id="birthdate" type="date" class="datepicker" value="${contact.birthdate}">
            <label for="birthdate">Birthdate</label>
        </div>

        <input class="btn waves-effect waves-light green" type="submit">
    </form>
</div>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="materialize/js/materialize.min.js"></script>
<script> $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15 // Creates a dropdown of 15 years to control year
});</script>
</body>
</html>
