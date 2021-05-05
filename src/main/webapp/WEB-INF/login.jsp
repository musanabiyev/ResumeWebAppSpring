<%--
  Created by IntelliJ IDEA.
  User: M
  Date: 11/9/2020
  Time: 3:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>Login</title>
</head>
<body>
<div class="col-4 container">
    <form action="login" method="post">
        <center>

            <h1>Login:</h1>
        </center>
        <div class="form-group">
            <%--            <label>Email adress</label>--%>
            <input type="text" class="form-control" name="username" placeholder="Email address"/>
        </div>
        <div class="form-group">
            <%--            <label>Password</label>--%>
            <input type="password" class="form-control" name="password" placeholder="Password"/>
        </div>
        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
        <button type="submit" class="btn btn-primary" name="login">Login</button>
    </form>
</div>
</body>
</html>