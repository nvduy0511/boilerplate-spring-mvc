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
<h2>Person</h2>
<form:form method="POST" action="view-person" modelAttribute="person">
    <form:label cssClass="title" cssErrorClass="title error" cssStyle="margin-right: 28px" path="id" >Id</form:label>
    <form:input path="id" cssStyle="margin-bottom: 10px"/>
    <br/>
    <form:label cssClass="title" cssErrorClass="title error"
                path="name" >Name</form:label>
    <form:input path="name" id="p_name" cssStyle="margin-bottom: 10px"/>
    <br/>
    <input type="submit" value="Submit" />
</form:form>
</body>
</html>
