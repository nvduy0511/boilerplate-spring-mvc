<%--
  Created by IntelliJ IDEA.
  User: nvduy
  Date: 09/04/2022
  Time: 08:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/boilerplate_spring_mvc_war_exploded/login" method="post">
        <label for="fname">User name:</label>
        <br>
        <input type="text" id="fname" name="fname" value="Nguyen Van Duy">
        <br>
        <label for="fpass">Pass word:</label>
        <br>
        <input type="password" id="fpass" name="fpass">
        <br>
        <br>
        <input type="submit" value="Login">
    </form>
    <h1 style="color: red">${message}</h1>
</body>
</html>
