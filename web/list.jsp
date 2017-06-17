<%--
  Created by IntelliJ IDEA.
  User: freim
  Date: 17.06.2017
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Listen Ansicht</title>
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="materialize/css/materialize.min.css" media="screen,projection"/>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <jsp:useBean id="addressList" class="eu.freemoser.web.beans.AddressListBean" scope="request"/>
</head>
<body>
<!--Import jQuery before materialize.js-->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="materialize/js/materialize.min.js"></script>

<h1 class="green-text">Deine Kontakte</h1>
<jsp:setProperty name="addressList" property="searchText" param="where"/>

<table class="striped">
    <thead>
    <tr>
        <th></th>
        <th>Vorname</th>
        <th>Nachname</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <core:forEach var="bean" items="${addressList.addressBeans}">

        <jsp:element name="tr">
            <jsp:body>

                <jsp:element name="td">
                    <jsp:body>
                        <jsp:element name="a">
                                 <jsp:attribute name="href">
                                    delete?id=<core:out value="${bean.id}"/>
                                 </jsp:attribute>
                            <jsp:body>
                                <i class="material-icons green-text">delete</i>
                            </jsp:body>
                        </jsp:element>
                    </jsp:body>
                </jsp:element>

                <jsp:element name="td">
                    <jsp:body>
                        <core:out value="${bean.christianname}"/>
                    </jsp:body>
                </jsp:element>

                <jsp:element name="td">
                    <jsp:body>
                        <core:out value="${bean.name}"/>
                    </jsp:body>
                </jsp:element>

                <jsp:element name="td">
                    <jsp:body>
                        <jsp:element name="a">
                                 <jsp:attribute name="href">
                                     AddressDetail.jsp?id=<core:out value="${bean.id}"/>
                                 </jsp:attribute>
                            <jsp:body>
                                <i class="material-icons green-text">info</i>
                            </jsp:body>
                        </jsp:element>
                    </jsp:body>
                </jsp:element>

            </jsp:body>
        </jsp:element>
    </core:forEach>
    </tbody>
</table>

<div class="fixed-action-btn">
    <a class="btn-floating btn-large green" href="AddressForm.jsp?from=list">
        <i class="large material-icons">add</i>
    </a>
</div>

</body>
</html>
