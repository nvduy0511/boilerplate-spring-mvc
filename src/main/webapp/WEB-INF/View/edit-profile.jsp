<%--
  Created by IntelliJ IDEA.
  User: nvduy
  Date: 09/04/2022
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/boilerplate_spring_mvc_war_exploded/detail" method="post" accept-charset="utf-8">
        <label for="fname">User name:</label>
        <br>
        <input type="text" id="fname" name="fname" value="Nguyen Van Duy">
        <br>
        <label for="fscore">Điểm:</label>
        <br>
        <input type="number" id="fscore" name="fscore">
        <br>
        <br>
        <p>Chọn chuyên ngành: </p>
        <input type="radio" id="rd1" name="rd_cn" value="Công nghệ thông tin">
        <label for="rd1">Công nghệ thông tin</label><br>
        <input type="radio" id="rd2" name="rd_cn" value="Kỹ thuật phần mềm">
        <label for="rd2">Kỹ thuật phần mềm</label><br>
        <input type="submit" value="Thêm mới">
        <input type="submit" value="Sửa">
        <input type="submit" value="Xóa">
        <input type="submit" value="Nhập lại">
    </form>

    <table border="1" style="width: 90%">
        <tr style="background: #cad8fa">
            <th>Họ và tên</th>
            <th>Điểm trung bình</th>
            <th>Chuyên ngành</th>
            <th></th>
        </tr>
        <tr>
            <td>Lê Tuấn Kiệt</td>
            <td>8.5</td>
            <td>Công nghệ thông tin</td>
            <td><a href="student?lnkEdit">Sửa</a></td>
        </tr>
        <tr>
            <td>Bùi Minh Nhưt</td>
            <td>9.0</td>
            <td>Kinh tế</td>
            <td><a href="student?lnkEdit">Sửa</a></td>
        </tr>
    </table>
</body>
</html>
