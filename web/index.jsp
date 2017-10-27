<%--
  Created by IntelliJ IDEA.
  User: wangz
  Date: 2017/10/23
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<c:forEach items="${sessionScope.user}" var="user">
    ${user.userlist.username}
    <a href="/usershare?userid=${user.userlist.userid}">123</a>

</c:forEach>
<a href="/showtask">showtask</a>
<a href="/addtask">addtask</a>
${requestScope.shares}
${sessionScope.tasks}
${sessionScope.gifs}
</body>
</html>
