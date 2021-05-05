<%--
  Created by IntelliJ IDEA.
  User: M
  Date: 3/5/2021
  Time: 3:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<html>
<head>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
          integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    <%--    <link rel="shortcut icon" href="/assets/favicon.ico" type="image/x-icon" />--%>
    <%--    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/favicon.ico" />--%>
    <link rel="icon" href="/assets/favicon.ico" type="image/x-icon"/>


    <title>Title</title>
</head>
<body>
<div class="container-fluid">
    <f:form action="useredit" method="post" modelAttribute="user">
        <f:hidden path="id"/>
        <div class="row">
            <div class="col-2">
                <div class="form-group">
                    <label>Name</label>
                    <f:input path="name" class="form-control" placeholder="Name"/>
                </div>
            </div>
            <div class="col-2">
                <div class="form-group">
                    <label>Surname</label>
                    <f:input path="surname" class="form-control" placeholder="Surname"/>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-2">
                <div class="form-group">
                    <label for="email">Email</label>
                    <f:input
                            path="email"
                            class="form-control"
                            placeholder="Email"/>
                </div>
            </div>

            <div class="col-2">
                <div class="form-group">
                    <label for="phone">Phone</label>
                    <f:input path="phone" class="form-control" id="phone" placeholder="Phone"/>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-2">
                <div class="form-group">
                    <label for="address">Address</label>
                    <f:input
                            path="address"
                            class="form-control"
                            placeholder="Address"/>
                </div>
            </div>

            <div class="col-2">
                <label for="nationality">Nationality</label>
                <f:select path="nationality" class="form-control">
                    <option value="${selected}" selected>${user.nationality.name}</option>
                    <c:forEach items="${countrys}" var="c">
                        <c:if test="${c.id != selected}">
                            <option value="${c.id}">${c.nationality}</option>
                        </c:if>
                    </c:forEach>
                </f:select>

                    <%--            <select name="department">--%>
                    <%--                <c:forEach var="c" items="${countrys}">--%>
                    <%--                    <option value="${c.nationality}" ${c.nationality == selectedDept ? 'selected="selected"' : ''}>${nationality}</option>--%>
                    <%--                </c:forEach>--%>
                    <%--            </select>--%>


            </div>
        </div>


        <div class="row">
            <div class="col-2">
                <div class="form-group">
                    <label for="birthplace">Place Of Birth</label>

                    <f:select path="birthplace" class="form-control">
                        <option value="${selected}" selected>${user.birthplace.name}</option>
                        <c:forEach items="${countrys}" var="c">
                            <c:if test="${c.id != selected}">
                                <option value="${c.id}">${c.name}</option>
                            </c:if>
                        </c:forEach>
                    </f:select>
                </div>
            </div>

            <div class="col-2">
                <div class="form-group">
                    <label>Date Of Birth</label>
                    <f:input path="birthdate" type="date"></f:input>
                </div>
            </div>
        </div>

        <div class="col-4">
            <div class="form-group">
                <label for="profileDescription">Profile</label>
                <f:textarea class="form-control" path="profileDescription"></f:textarea>
            </div>
        </div>
        <hr>
        <div class="row">
            <f:button type="submit" class="btn btn-primary" value="update">Save</f:button>
        </div>
    </f:form>
</div>

</body>
</html>