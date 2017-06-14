<%--
  Created by IntelliJ IDEA.
  User: freim
  Date: 10.06.2017
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <style>
        #parent_div_1, #parent_div_2 {

            margin-right: 10px;
            float: left;
        }
    </style>

</head>
<body>

<div id='parent_div_1'>
    <form name="adressForm">
        Anrede:
        <input type="text" name="anrede"> <br>
        Vorname:
        <input type="text" name="vorname"> <br>
        Nachname:
        <input type="text" name="nachname"> <br>
        Staße:
        <input type="text" name="stasse"> <br>
        Hausnummer:
        <input type="text" name="hausnummer"> <br>
        Ort:
        <input type="text" name="ort"> <br>
        PLZ:
        <input type="text" name="plz"> <br>
    </form>
</div>

<div id='parent_div_2'>
    <p>
        <em id="sAnrede"></em> <br>
        <em id="sVorname"></em> <br>
        <em id="sNachname"></em>
    </p>

    <p>
        <em id="sStrasse"> </em>
        <em id="sHausnummer"> </em><br>
        <em id="sOrt"></em>
        <em id="sPLZ"></em>

    </p>

</div>

<script>

    var anrede = document.getElementById("sAnrede");
    var vorname = document.getElementById("sVorname");
    var nachname = document.getElementById("sNachname");
    var stasse = document.getElementById("sStrasse");
    var hausnummer = document.getElementById("sHausnummer");
    var ort = document.getElementById("sOrt");
    var plz = document.getElementById("sPLZ");

    //Inputs
    var a = document.adressForm.anrede;
    var v = document.adressForm.vorname;
    var n = document.adressForm.nachname;
    var s = document.adressForm.stasse;
    var h = document.adressForm.hausnummer;
    var o = document.adressForm.ort;
    var p = document.adressForm.plz;


    a.addEventListener("keyup", function () {
        anrede.innerHTML = a.value;
    });

    v.addEventListener("keyup", function () {
        vorname.innerHTML = v.value;
    });

    n.addEventListener("keyup", function () {
        nachname.innerHTML = n.value;
    });

    s.addEventListener("keyup", function () {
        stasse.innerHTML = s.value;
    });

    h.addEventListener("keyup", function () {
        hausnummer.innerHTML = h.value;
    });

    o.addEventListener("keyup", function () {
        ort.innerHTML = o.value;
    });

    p.addEventListener("keyup", function () {
        plz.innerHTML = p.value;
    });

    anrede.addEventListener("click", function () {
        a.focus();
    });

    vorname.addEventListener("click", function () {
        v.focus();
    });

    nachname.addEventListener("click", function () {
        n.focus();
    });

    stasse.addEventListener("click", function () {
        s.focus();
    });

    hausnummer.addEventListener("click", function () {
        h.focus();
    });

    ort.addEventListener("click", function () {
        o.focus();
    });

    plz.addEventListener("click", function () {
        p.focus();
    });

</script>

</body>
</html>
