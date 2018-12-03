<%--
  Created by IntelliJ IDEA.
  User: xlc14
  Date: 2018/11/28
  Time: 22:10
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
    <title>查看新闻</title>
</head>
<body>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <div class="table-responsive" align="center">
            <h1>${anew.title}</h1>
        </div>
    </div>
    <div class="col-md-1"></div>
</div>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-5"><a href="forelist_new">“返回首页”</a></div>
    <div class="col-md-5">
        <div class="table-responsive" align="right" >
            ${anew.category.name}
        </div>
    </div>
    <div class="col-md-1"></div>
</div>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <div class="table-responsive" align="right">
            <fmt:formatDate value="${anew.time}" pattern="yyyy-MM-dd HH:mm:ss"/>
        </div>
    </div>
    <div class="col-md-1"></div>
</div>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <div class="table-responsive" >
            ${anew.content}
        </div>
    </div>
    <div class="col-md-1"></div>
</div>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <div><h4>评论：</h4></div>
        <div class="table-responsive">
            <ul>
                <c:forEach items="${comments}" var="cs">
                    <li>[<fmt:formatDate value="${cs.time}" pattern="yyyy-MM-dd HH:mm:ss"/>]:</li>
                    <li>${cs.text}</li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <div class="col-md-1"></div>
</div>

<form action="add_comment" method="post">
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <div class="table-responsive">
            <div>评论一下：</div>
            <textarea name="text" style="height: 100px;width: 1000px;resize: none;"></textarea>
        </div>
    </div>
    <div class="col-md-1"></div>
</div>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <div class="table-responsive">
            <input type="hidden" name="anew.id" value="${anew.id}" >
            <button type="submit" class="btn btn-primary">提交</button>
        </div>
    </div>
    <div class="col-md-1"></div>
</div>
</form>

</body>
</html>
