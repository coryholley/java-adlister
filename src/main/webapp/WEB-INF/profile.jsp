<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Hello, ${sessionScope.user}! Welcome to your profile.</h1>
    </div>

    <div class="container">
        <form action="/logout" method="POST">
            <input type="submit" class="btn btn-primary" value="Logout">
        </form>
    </div>
</body>
</html>
