<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tổ chức giao diện</title>

    <link rel="stylesheet" href="<c:url value='/resources/css/main.css' />" />
</head>
<body>
    <div class="container">
        <header>
            <h1>Shopping Mall</h1>
        </header>
        <nav>
            <jsp:include page="menu.jsp"/>
        </nav>
        <article>
            <h2>${param.view}</h2>
            <jsp:include page="${param.view}"/>
        </article>
        <aside>CONTROL PANEL</aside>
        <footer>FOOTER</footer>
    </div>
</body>
</html>
