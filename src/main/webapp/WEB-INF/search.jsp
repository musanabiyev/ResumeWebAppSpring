<%--
  Created by IntelliJ IDEA.
  User: M
  Date: 1/27/2021
  Time: 7:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Title</title>
</head>
<body>

<div class="row">
    <div class="col-4">
        <f:form action="usersm" method="GET" modelAttribute="user">
            <div class="form-group">
                <label for="name">name:</label>
                <f:input path="name"
                         placeholder="Enter name"
                         class="form-control"/>
                <form:errors path="name" cssClass="error"/>
            </div>
            <div class="form-group">
                <label for="surname">surname:</label>
                <f:input
                        path="surname"
                        placeholder="Enter surname"
                        class="form-control"/>
                <form:errors path="surname" cssClass="error"/>
            </div>

            <f:button type="submit" class="btn btn-primary" id="btnsearch">
                Search
            </f:button>

        </f:form>
    </div>
</div>
</body>
</html>
