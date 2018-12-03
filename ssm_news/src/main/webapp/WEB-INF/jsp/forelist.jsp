<%--
  Created by IntelliJ IDEA.
  User: xlc14
  Date: 2018/11/28
  Time: 19:04
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
    <title>新闻发布系统</title>
    <style type="text/css">
        body{
            background-image:url(images/13.jpg);
        }
    </style>
</head>
<body >

<div>
    <ul class="nav nav-pills" >
        <li role="presentation" class="active"><a href="#">新闻发布系统</a></li>
        <li role="presentation"><a href="#">体育</a></li>
        <li role="presentation"><a href="#">政治</a></li>
        <li role="presentation"><a href="#">经济</a></li>
        <li role="presentation"><a href="#">自然</a></li>
        <li role="presentation"><a href="#">娱乐</a></li>
        <li role="presentation"><a href="loginForm"><span>后台管理</span></a></li>
    </ul>
</div>

<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="/images/1.jpg" alt="First slide" align="center" style="width: 80%;height: 250px;" class="center-block">
            <div class="carousel-caption">2018LPL全明星赛受邀明星选手有哪些...</div>
        </div>
        <div class="item">
            <img src="/images/2.jpg" alt="Second slide" align="center" style="width: 80%;height: 250px;" class="center-block">
            <div class="carousel-caption">dnf：女枪手海伯伦毕业，打卢克却...</div>
        </div>
        <div class="item">
            <img src="/images/3.jpg" alt="Third slide" align="center" style="width: 80%;height: 250px;" class="center-block">
            <div class="carousel-caption">习近平接受马德里城市金钥匙</div>
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<div class="col-md-12" >
    <span>&nbsp;<br></span>
</div>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-5">
        <div><h4>体育新闻：</h4></div>
        <div>
            <ul class="nav navbar-nav">
                <c:forEach items="${tynew}" var="ty">
                    <li><a href="forenew_view?id=${ty.id}">${ty.title}...</a></li><br>
                </c:forEach>
            </ul>
        </div>
    </div>
    <div class="col-md-5">
        <div><h4>政治新闻：</h4></div>
        <div>
            <ul class="nav navbar-nav">
                <c:forEach items="${zznew}" var="zz">
                    <li><a href="forenew_view?id=${zz.id}">${zz.title}...</a></li><br>
                </c:forEach>
            </ul>
        </div>
    </div>
    <div class="col-md-1"></div>
</div>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-5">
        <div><h4>经济新闻：</h4></div>
        <div>
            <ul class="nav navbar-nav">
                <c:forEach items="${jjnew}" var="jj">
                    <li><a href="forenew_view?id=${jj.id}">${jj.title}...</a></li><br>
                </c:forEach>
            </ul>
        </div>
    </div>
    <div class="col-md-5">
        <div><h4>自然新闻：</h4></div>
        <div>
            <ul class="nav navbar-nav">
                <c:forEach items="${zrnew}" var="zr">
                    <li><a href="forenew_view?id=${zr.id}">${zr.title}...</a></li><br>
                </c:forEach>
            </ul>
        </div>
    </div>
    <div class="col-md-1"></div>
</div>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-5">
        <div><h4>娱乐新闻：</h4></div>
        <div>
            <ul class="nav navbar-nav">
                <c:forEach items="${yxnew}" var="yx">
                    <li><a href="forenew_view?id=${yx.id}">${yx.title}...</a></li><br>
                </c:forEach>
            </ul>
        </div>
    </div>
    <div class="col-md-5">
        <div><h4>更多新闻：</h4></div>
        <div>
            <ul class="nav navbar-nav">
                <li><a href="#">......</a></li>
            </ul>
        </div>
    </div>
    <div class="col-md-1"></div>
</div>

</body>
</html>
