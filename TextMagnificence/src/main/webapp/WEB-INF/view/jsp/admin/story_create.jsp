<%--suppress JSUnresolvedFunction --%>
<%@ include file="/WEB-INF/view/jspf/directive/page.jspf" %>
<%@ include file="/WEB-INF/view/jspf/directive/taglib.jspf" %>

<html>
<head>
    <jsp:include page="/WEB-INF/view/jspf/head.jspf">
        <jsp:param value="Welcome" name="title"/>
    </jsp:include>

    <link href="css/1-col-portfolio.css" rel="stylesheet">
</head>
<body>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Start Bootstrap</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li>
                    <a href="#">Lipa</a>
                </li>
                <li>
                    <a href="#">Leepa</a>
                </li>
                <li>
                    <a href="#">Liepu</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>



<div class="container">

    <!-- Page Heading -->
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Text Games
                <small>Enjoy your reading, imagine your gaming...</small>
            </h1>
        </div>
    </div>
    <!-- /.row -->

    <c:forEach var="story" items="${requestScope.stories}">
    <div class="row">
        <div class="col-md-7">
            <a href="#">
                <img class="img-responsive" src="${story.image}"
                             style="width: 600px; height: 400px;" alt="">
            </a>
        </div>
        <div class="col-md-5">
            <h3>${story.name}</h3>
            <h4> Жанр:
                <h5>
                    <ul>
                    <c:forEach var="genre" items="${story.genre}">
                        <li><i>${genre}</i></li>
                    </c:forEach>
                    </ul>
                </h5>
            </h4>
            <p>${story.annotation}</p>
            <a class="btn btn-primary" href="game${story.id}">Перейти к игре <span class="glyphicon glyphicon-chevron-right"></span></a>
            <button class="btn btn-primary"
                    onclick="openUpdateModal(${story.id},
                                             '${story.name}',
                                             '${story.image}',
                                             '${story.annotation}');">
                Редактировать игру <span class="glyphicon glyphicon-pencil"></span>
            </button>
        </div>
    </div>

    <hr>
    </c:forEach>
    <!-- /.row -->

    <hr>

    <%@include file="/WEB-INF/view/jspf/admin/updateStoryPopup.jspf"%>

    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <p>Copyright © Your Website 2014</p>
            </div>
        </div>
        <!-- /.row -->
    </footer>

</div>

<%@ include file="/WEB-INF/view/jspf/footer.jspf"%>
<script type="text/javascript" src="js/admin/stories_overview.js"></script>

</body>
</html>
