<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <base href="${pageContext.servletContext.contextPath}/">
    <meta charset="utf-8" />
    <title>Upload file</title>
    <style>
        .form-group {
            margin: 10px;
        }
    </style>
</head>
<body>
<h2>NỘP ĐƠN XIN VIỆC</h2>
${message}
<form action="<c:url value="/apply"/> " method="post" enctype="multipart/form-data">
    <div class="form-group">
        <div>Họ và tên ứng viên</div>
        <input type="text" name="fullname">
    </div>
    <div class="form-group">
        <div>Hình ảnh</div>
        <input type="file" name="photo">
    </div>
    <div class="form-group">
        <div>Hồ sơ xin việc</div>
        <input type="file" name="cv">
    </div>
    <div class="form-group">
        <button>Nộp</button>
    </div>
</form>
</body>
</html>
