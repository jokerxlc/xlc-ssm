<%--
  Created by IntelliJ IDEA.
  User: xlc14
  Date: 2018/11/27
  Time: 18:57
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
    <title>评论管理</title>
</head>

<body>

<!--导航条-->

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">新闻管理系统</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">新闻后台管理</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="category_list">分类管理</a></li>
                <li><a href="new_list">新闻管理</a></li>
                <li class="active"><a href="comment_list">评论管理<span class="sr-only">(current)</span></a></li>
            </ul>
            <form class="navbar-form navbar-left" >
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<!--标签-->

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10"><span class="label label-info">评论管理</span></div>
    <div class="col-md-1"></div>
</div>

<div class="col-md-12" >
    <span>&nbsp;<br></span>
</div>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <div class="table-responsive">
            <table class="table table-hover table-bordered">
                <thead >
                <tr class="success">
                    <td><span class="label label-success">ID</span></td>
                    <td ><span class="label label-success">发布时间</span></td>
                    <td ><span class="label label-success">具体内容</span></td>
                    <td ><span class="label label-success">删除操作</span></td>
                </tr>
                </thead>
                <c:forEach items="${comments}" var="c">
                    <tr>
                        <td>${c.id}</td>
                        <td><fmt:formatDate value="${c.time}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td>${c.text}</td>
                        <td><a href="delete_comment?id=${c.id}"><span class="glyphicon glyphicon-remove"></span></a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
    <div class="col-md-1"></div>
</div>

<div align="center">
    <%@include file="adminPage.jsp" %>
</div>

</body>
</html>
