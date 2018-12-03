<%--
  Created by IntelliJ IDEA.
  User: xlc14
  Date: 2018/11/27
  Time: 18:05
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

    <script type="text/javascript" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="ueditor/ueditor.all.js"></script>
    <script type="text/javascript" src="ueditor/lang/zh-cn/zh-cn.js"></script>
    <link href="ueditor/themes/default/css/ueditor.css" rel="stylesheet" />


    <script>
        var UEDITOR_HOME_URL = "/ueditor/";//从项目的根目录开始
    </script>

    <script type="text/javascript" >
        var ue=UE.getEditor('newEditor');
    </script>

    <title>修改新闻</title>
</head>
<body>

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
                <li class="active"><a href="new_list">新闻管理<span class="sr-only">(current)</span></a></li>
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
    <div class="col-md-10"><span class="label label-info">修改新闻</span></div>
    <div class="col-md-1"></div>
</div>

<div class="col-md-12" >
    <span>&nbsp;<br></span>
</div>

<!--主体-->
<form action="update_anew" method="post">
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="table-responsive">
                新闻标题：<input type="text" name="title" height="30px" id="title" value="${anew.title}"></li>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="table-responsive">
                发布时间：<fmt:formatDate value="${anew.time}" pattern="yyyy-MM-dd HH:mm:ss"/>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="table-responsive">
                新闻类别：<select name="category.id" id="category.id">
                <c:forEach items="${categorys}" var="cs">
                    <option value="${cs.id}">${cs.name}</option>
                </c:forEach>
            </select>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="table-responsive">
                新闻内容：<textarea id="newEditor" name="content" >${anew.content}</textarea>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="table-responsive">
                <input type="hidden" name="id" value="${anew.id}">
                <button type="submit" class="btn btn-primary">修改</button>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>

</form>

</body>
</html>
