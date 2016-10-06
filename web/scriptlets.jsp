<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 05.10.16
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scriptlets</title>
</head>
<body>

    <!-- Комментарий: скриптлеты -->
    <%-- Комментарий: скриптлеты --%>

    <%!
        // объявление
        int x = 10;
    %>

    <%
        // Java код
        int y = 20;
        if (x != y) {
    %>
    <br>x != y<br/>
    <%   }
    else {
    %>
    <br>x == y<br/>
    <%
        }
    %>

    <%= x %> <%-- вывод значения --%>

</body>
</html>
