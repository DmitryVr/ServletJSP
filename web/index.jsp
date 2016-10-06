<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 05.10.16
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <a href="http://localhost:8080/HomeServlet?a=2&b=44">Link</a>


    <br />

    <form action="/HomeServlet" method="POST">
        <input type="text" name="a" value="" />
        <input type="text" name="b" value="" />
        <input type="submit" name="submit" value="Go" />
    </form>

    <br />
    <br />

    Hello!
    JSP - вьюшка
    Сервлет - контроллер

    Как в IDEA создать веб-проект:
    Зайти в "Project Structure" Ctrl+Alt+Shift+S
    Modules -> +Web -> Нажать добавить артифакт (появилась папка web или webapp)
    Edit Configurations (Выбрать Tomcat) (Fix - выбрать артефакт)

    Добавить папки:
    models
    controllers
    views

    Зависимости для Maven:
    HttpServlet находится в:
    javax.servlet
    servlet-api

</body>
</html>
