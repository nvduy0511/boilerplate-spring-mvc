<%--
  Created by IntelliJ IDEA.
  User: win 10
  Date: 11/09/2022
  Time: 8:49 SA
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Person Page</title>
</head>
<body>
<h2>Employee</h2>
<form:form method="POST" action="view-person" modelAttribute="person">
    Id: <form:input path="id" />
    <br/>
    Name: <form:input path="name" />
    <input type="submit" value="Submit" />
</form:form>
</body>
</html>
