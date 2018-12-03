<%--
  Created by IntelliJ IDEA.
  User: xlc14
  Date: 2018/11/29
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix='fmt' %>
<html>
<head>
    <script src="js/jquery/2.0.0/jquery.min.js"></script>
    <link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <title>登录页面</title>
    <style type="text/css">
        body{
            background-image:url(images/13.jpg);
            background-size:cover ;
        }
    </style>
</head>
<body>

<div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4" align="center">
        <form action="login" method="post">
            <!--提示信息-->
            <font color="red" >${requestScope.message}</font>

            <div class="form-group">
                <label for="exampleInputUsername" >Username:</label>
                <input type="text" class="form-control" id="exampleInputUsername" name="username">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword">Password:</label>
                <input type="password" class="form-control" id="exampleInputPassword" name="password">
            </div>
            <button type="submit" class="btn btn-primary">登录后台</button>
        </form>
    </div>
    <div class="col-md-4"></div>
</div>
</body>
</html>
