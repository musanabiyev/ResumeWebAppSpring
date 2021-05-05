<%--
  Created by IntelliJ IDEA.
  User: musan
  Date: 1/25/2021
  Time: 3:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Title</title>
    <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
          rel = "stylesheet">
    <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>


</head>
<body>
${users}
<nav class="navbar navbar-expand-lg navbar-light " style="background-color: #fff; border-bottom: 1px solid #dee2e6;">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <a class="navbar-brand" href="#">M 529</a>
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Profile</a>
            </li>
            <li class="nav-item">
                <form action="usersm" method="GET" class="form-inline">
                    <input name="name"
                             class="form-control mr-sm-2"
                             type="search" placeholder="Search"
                             aria-label="Search"/>


                    <button type="submit"
                              id="btnsearch"
                              class="btn btn-secondary my-2 my-sm-0">Search</button>
                </form>
            </li>
        </ul>





            <div class="btn-group">
            <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
            <div class="dropdown-menu" style="left: -350%">
                <a class="dropdown-item" href="#">Action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Settings</a>
                <a class="dropdown-item" href="#">Help</a>
                <div class="dropdown-divider"></div>

                <form action="logout" method="post">
                        <input type="hidden" name="${_csrf.parameterName}"
                               value="${_csrf.token}"/>
                        <button type="submit" class="btn btn-primary">Sign out</button>
                </form>
            </div>
        </div>



        </div>
    </nav>
</body>
</html>
