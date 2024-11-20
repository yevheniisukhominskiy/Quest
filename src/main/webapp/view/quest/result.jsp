<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page isELIgnored="false" %>

<html>
    <head>
        <meta charset="utf-8">
        <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css" rel="stylesheet">
        <link href="../static/css/quest/result.css" rel="stylesheet">
        <link href="../static/css/general/header.css" rel="stylesheet">
        <title>Result</title>
    </head>
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
                <h2 class="label">Finish!</h2>
                <p>Ваше время прохождения теста: ${elapsedTime} секунд</p>
                <a href="/quests" class="button">Go back</a>
            </div>
        </section>
    </body>
</html>
