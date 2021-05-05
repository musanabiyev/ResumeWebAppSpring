<%--
  Created by IntelliJ IDEA.
  User: M
  Date: 1/25/2021
  Time: 5:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="registration" method="post">
    <div class="form-row">
        <div class="col">
            <input type="text" class="form-control" placeholder="First name"/>
        </div>
        <div class="col">
            <input type="text" class="form-control" placeholder="Last name"/>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputEmail4">Email</label>
            <input type="email" class="form-control" id="inputEmail4" placeholder="Email"/>
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">Password</label>
            <input type="password" class="form-control" id="inputPassword4" placeholder="Password"/>
        </div>
    </div>

    </div>

    <button type="submit" class="btn btn-primary">Create new profile</button>
</form>
</body>
</html>