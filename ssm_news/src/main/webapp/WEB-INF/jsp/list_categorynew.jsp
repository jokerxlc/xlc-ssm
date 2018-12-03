<%--
  Created by IntelliJ IDEA.
  User: xlc14
  Date: 2018/11/22
  Time: 22:31
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
    <title>分类新闻</title>
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
                <li class="active"><a href="category_list">分类管理<span class="sr-only">(current)</span></a></li>
                <li><a href="new_list">新闻管理</a></li>
                <li><a href="comment_list">评论管理</a></li>
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
    <div class="col-md-9"><span class="label label-info">分类新闻</span></div>
    <div class="col-md-1" align="left"><a href="new_add"><span class="label label-danger">添加新闻</span></a></div>
    <div class="col-md-1"></div>
</div>

<div class="col-md-12" >
    <span>&nbsp;<br></span>
</div>

<!--主体-->

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <div class="table-responsive">
            <table class="table table-hover table-bordered">
                <thead >
                <tr class="success">
                    <td><span class="label label-success">ID</span></td>
                    <td ><span class="label label-success">新闻标题</span></td>
                    <td ><span class="label label-success">新闻分类</span></td>
                    <td ><span class="label label-success">发布时间</span></td>
                    <td ><span class="label label-success">查看具体内容</span></td>
                </tr>
                </thead>
                <c:forEach items="${news}" var="n">
                    <tr>
                        <td>${n.id}</td>
                        <td>${n.title}</td>
                        <td>${category.name}</td>
                        <td><fmt:formatDate value="${n.time}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td><a href="new_view?id=${n.id}"><span class="glyphicon glyphicon-new-window"></span></a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
    <div class="col-md-1"></div>
</div>

</body>
</html>
