<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page isELIgnored="false" %>

<html>
<head>
    <meta charset="utf-8">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css" rel="stylesheet">
    <link href="../static/css/about.css" rel="stylesheet">
    <link href="../static/css/general/header.css" rel="stylesheet">
    <title>About</title>
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
        <main>
            <section class="about-section">
                <div class="container">
                    <h1>About Us</h1>
                    <p>
                        Welcome to Quest, your ultimate destination for adventure and mystery! Our platform is designed to bring thrilling quests to life, where you can explore, solve puzzles, and immerse yourself in captivating stories.
                    </p>
                    <p>
                        Whether you're a fan of challenging adventures or looking for a fun activity with friends, we have something for everyone. Join us on a journey to discover secrets, face exciting challenges, and create unforgettable memories.
                    </p>
                    <img src="../static/images/about/witcher.jpg" alt="About Us" class="about-image">
                </div>
            </section>
        </main>
    </body>
</html>
