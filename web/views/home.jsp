<%@ page import="models.User" %>
<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 05.10.16
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    This is home JSP
    <br />
    <%= request.getAttribute("p1") %>
    <br />
    <%= request.getAttribute("p2") %>
    <br />
    <%
        User user = (User) request.getAttribute("user");
    %>
    <%= user.getFirstName() %>
    <%= user.getLastName() %>
    <%= user.getAge() %>
    <br />

    <%--Другой способ, кроме скриплетов:--%>
    Имя: ${user.firstName} <br />
    Фамилия: ${user.lastName} <br />
    Возраст: ${user.age} <br />

    Результат вычисления: ${res} <br />



    <%
        // Неявные объекты:
        //request
        //response
        //out - для вывода информации в окно браузера
        //session
        //application
        //page
        //config
        //pageContext
    %>

</body>
</html>
