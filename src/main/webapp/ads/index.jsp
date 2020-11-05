<%--
  Created by IntelliJ IDEA.
  User: courtneyholley
  Date: 11/4/20
  Time: 3:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Ads</title>
</head>
<body>
<h1>Ads</h1>
<ul>
    <c:forEach var="ad" items="${ads}">
        <li>Title: ${ad.title.toUpperCase()}
        <p>Description: ${ad.description}</p>
        </li>
        <hr>
    </c:forEach>
</ul>
</body>
</html>
