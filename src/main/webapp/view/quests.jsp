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
        <title>Home</title>
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

                    <div class="authorization">
                        <a href="#">Sign In</a>
                        <a href="#">Registration</a>
                    </div>
                </div>
            </div>
        </header>
        <section>
            <div class="container">
                <div class="quest-container">
                    <div class="quest-card">
                        <img src="../static/images/quests/quest_one.jpg" alt="Quest Image 1">
                        <h3>Частина 1: Прокляття села</h3>
                        <p>У покинутому селі, оповитому тумані, жителі страждають від таємничого прокляття, яке породжує нещастя та страх.</p>
                        <c:url var="redirection" value="/quest">
                            <c:param name="id" value="1"/>
                            <c:param name="filePath" value="../resources/parts/part_one.json"/>
                        </c:url>
                        <a href="${redirection}" class="button-start">Розпочати</a>
                    </div>
                    <div class="quest-card">
                        <img src="../static/images/quests/quest_two.jpg" alt="Quest Image 2">
                        <h3>Частина 2: Омут на Кортелі</h3>
                        <p> Легенди розповідають про загублені душі, які шукають порятунку. Місцеві жителі чують шепіт води і бачать тіні.</p>
                        <c:url var="redirection" value="/quest">
                            <c:param name="id" value="1"/>
                            <c:param name="filePath" value="../resources/parts/part_one.json"/>
                        </c:url>
                        <a href="${redirection}" class="button-start">Розпочати</a>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
