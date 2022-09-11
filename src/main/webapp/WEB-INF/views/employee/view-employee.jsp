<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Spring MVC Form Handling</title>
</head>
<body>
<h2>Employee</h2>
<table>
    <tr>
        <td>Id: </td>
        <td>${employee.id }</td>
    </tr>
    <tr>
        <td>Tên: </td>
        <td>${employee.name }</td>
    </tr>
    <tr>
        <td>Địa chỉ: </td>
        <td>${employee.address }</td>
    </tr>
    <tr>
        <td>Email: </td>
        <td>${employee.email }</td>
    </tr>
    <tr>
        <td>Giới tính: </td>
        <td>${employee.gender }</td>
    </tr>
    <tr>
        <td>Sở thích: </td>
        <td>
            <c:if test="${not empty employee.favorites}">
                <c:forEach var="favorite" items="${employee.favorites}">${favorite}</c:forEach>
            </c:if>
        </td>
    </tr>
    <tr>
        <td>Vị trí: </td>
        <td>${employee.position}</td>
    </tr>
</table>
</body>
</html>