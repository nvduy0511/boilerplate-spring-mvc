<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Eployee</title>
</head>
<body>
<h2>Employee</h2>
<form:form method="POST" action="addEmployee" modelAttribute="employee">
    <table>
        <tr>
            <td><form:label path="id">Id</form:label></td>
            <td><form:input path="id" /></td>
        </tr>
        <tr>
            <td><form:label path="name">Tên</form:label></td>
            <td><form:input path="name" /></td>
        </tr>
        <tr>
            <td><form:label path="Address">Địa chỉ</form:label></td>
            <td><form:textarea path="address" /></td>
        </tr>
        <tr>
            <td><form:label path="email">Email</form:label></td>
            <td><form:input path="email" /></td>
        </tr>
        <tr>
            <td><form:label path="gender">Giới tính</form:label></td>
            <td><form:radiobutton path="gender" value="Nam" label="Nam" />
                <form:radiobutton path="gender" value="Nữ" label="Nữ" /></td>
        </tr>
        <tr>
            <td><form:label path="favorites">Sở thích</form:label></td>
            <td>
                <form:checkboxes items="${listFavorite}"
                                 path="favorites" />
            </td>
        </tr>
        <tr>
            <td><form:label path="position">Vị trí</form:label></td>
            <td>
                <form:select path = "position">
                    <form:option value = "NONE" label = "Select"/>
                    <form:options items = "${listPosition}" />
                </form:select>
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Submit" /></td>
        </tr>
    </table>
</form:form>
</body>
</html>
