<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <meta charset="utf-8">
        <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css" rel="stylesheet">
        <link href="../static/css/quests.css" rel="stylesheet">
        <link href="../static/css/general/header.css" rel="stylesheet">
        <title>Quests</title>
    <body>
        <header>
            <div class="container">
                <div class="menu">
                    <a href="/home" class="logo">Quest</a>

                    <ul class="navbar">
                        <li><a href="/home">Home</a></li>
                        <li><a href="/quests">Quests</a></li>
                        <li><a href="/reviews">Reviews</a></li>
                        <li><a href="/about">About</a></li>
                    </ul>

                    <div class="authorization
                        <c:choose>
                            <c:when test="${not empty sessionScope.username}">
                                logged-in
                            </c:when>
                            <c:otherwise>
                                logged-out
                            </c:otherwise>
                        </c:choose>">
                        <c:choose>
                            <c:when test="${not empty sessionScope.username}">
                                <span><i class="ri-user-line"></i>${sessionScope.username}</span>
                                <a href="/logout">Log Out</a>
                            </c:when>
                            <c:otherwise>
                                <a href="/login">Sign In</a>
                                <a href="/register">Registration</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </header>
        <section>
            <div class="container">
                <h1 class="title">Quests</h1>
                <div class="quest-container">
                    <div class="quest-card">
                        <img src="../static/images/quests/village.jpg" alt="Quest Image 1" class="quest-image">
                        <h3 class="quest-title">Частина 1: Прокляття села</h3>
                        <p class="quest-description">У покинутому селі, оповитому тумані, жителі страждають від таємничого прокляття, яке породжує нещастя та страх.</p>
                        <c:url var="redirection" value="/quest">
                            <c:param name="id" value="1"/>
                            <c:param name="filePath" value="resources/parts/part_one.json"/>
                        </c:url>
                        <a href="${redirection}" class="button button-start">Розпочати</a>
                    </div>

                    <div class="quest-card">
                        <img src="../static/images/quests/swamp.jpg" alt="Quest Image 2" class="quest-image">
                        <h3 class="quest-title">Частина 2: Омут на Кортелі</h3>
                        <p class="quest-description">Легенди розповідають про загублені душі, які шукають порятунку. Місцеві жителі чують шепіт води і бачать тіні.</p>
                        <c:url var="redirection" value="/quest">
                            <c:param name="id" value="2"/>
                            <c:param name="filePath" value="resources/parts/part_two.json"/>
                        </c:url>
                        <a href="${redirection}" class="button button-start">Розпочати</a>
                    </div>

                    <div class="quest-card">
                        <img src="../static/images/quests/monastery.jpg" alt="Quest Image 3" class="quest-image">
                        <h3 class="quest-title">Частина 3: Загадка гірського монастиря</h3>
                        <p class="quest-description">Старий монастир Ломія зберігає багато секретів і таємниць, прихованих в глибинах гір. Чи зможеш ти розкрити їх?</p>
                        <c:url var="redirection" value="/quest">
                            <c:param name="id" value="3"/>
                            <c:param name="filePath" value="resources/parts/part_three.json"/>
                        </c:url>
                        <a href="${redirection}" class="button button-start">Розпочати</a>
                    </div>

                    <div class="quest-card">
                        <img src="../static/images/quests/laboratory.jpg" alt="Quest Image 4" class="quest-image">
                        <h3 class="quest-title">Частина 4: Забута лабораторія</h3>
                        <p class="quest-description">У серці міста лежить занедбана лабораторія, де проводилися таємничі експерименти. Розкрий їхню правду.</p>
                        <c:url var="redirection" value="/quest">
                            <c:param name="id" value="4"/>
                            <c:param name="filePath" value="resources/parts/part_four.json"/>
                        </c:url>
                        <a href="${redirection}" class="button button-start">Розпочати</a>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
