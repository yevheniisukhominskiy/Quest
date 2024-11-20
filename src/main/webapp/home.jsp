<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page isELIgnored="false" %>

<html lang="ua">
    <head>
        <meta charset="utf-8">
        <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css" rel="stylesheet">
        <link href="../static/css/home.css" rel="stylesheet">
        <link href="../static/css/general/header.css" rel="stylesheet">
        <title>Home</title>
    </head>
    <body>
        <header>
            <div class="container">
                <div class="menu">
                    <a href="/home" class="logo">Quest</a>

                    <ul class="navbar">
                        <li><a href="/home" class="active">Home</a></li>
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
            </div>
        </header>
        <section>
            <div class="container">
                <div class="content">
                    <h1 class="title">Welcome!</h1>
                    <div class="box">
                        <div class="text-container">
                            <p class="text">
                                Welcome to our text quest! Here you can immerse yourself in a world of adventures where every decision you make matters. In this exciting journey, you will become the hero who must overcome numerous challenges and solve puzzles to save the kingdom from dark forces.
                            </p>
                            <br>
                            <p class="text">
                                Your story begins in a small village where the inhabitants live in fear of the evil that threatens their peace. You must gather a team of loyal friends, explore mysterious forests and ancient ruins, and battle powerful enemies.
                            </p>
                            <br>
                            <p class="text">
                                Every choice you make will influence the course of events and determine what your adventure will be like. Are you ready to take on the challenge and become a legend? Your fate is in your hands!
                            </p>
                        </div>
                        <img src="../static/images/home/witcher.jpg" class="image" alt="Adventure Quest Image">
                    </div>
                    <a href="/quests" class="start-button">Start</a>
                </div>
            </div>
        </section>

<%--        <script src="../static/js/header.js"></script>--%>
    </body>
</html>
