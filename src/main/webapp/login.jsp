<%--
  Created by IntelliJ IDEA.
  User: courtneyholley
  Date: 11/3/20
  Time: 1:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
if (request.getMethod().equalsIgnoreCase("post")) {
    String username = request.getParameter("username");
    String password = request.getParameter("password");
        if (username.equalsIgnoreCase("admin") && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
        }
}
%>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<div>
    <h2>Please enter your username and password to log in.</h2>
<form action="login.jsp" method="POST">
    <label for="username"></label>
    <input type="text" placeholder="Enter Username" name="username" id="username" required><br><br>
    <label for="password"></label>
    <input type="password" placeholder="Enter Password" name="password" id="password" required><br><br>
    <input type="submit" value="Log In">
</form>

</div>

<jsp:include page="partials/footer.jsp" />
</body>
</html>
